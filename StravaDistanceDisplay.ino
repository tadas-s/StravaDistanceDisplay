#include <ESP8266HTTPClient.h>
#include <Wire.h>
#include <EEPROM.h>
#include <TickerScheduler.h>
#include "WifiNetwork.h"
#include "Display.h"

WifiNetwork wifi;
Display display;

struct Stats {
  String month;
  String total;
  bool fail;
};

Stats stats;
TickerScheduler tasks = TickerScheduler(2);
bool showingTotals;

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Booting up!");

  Wire.begin(4, 5); // sda, scl
  display.begin(0x70);

  display.string(String("WIFI"));
  EEPROM.begin(1024);
  wifi.begin();
  display.string(String("-OK-"));

  tasks.add(0, 120000, fetchStatsTask, true);
  tasks.add(1, 10000, flipDisplayTask);
}

void loop() {
  tasks.update();
  wifi.handleCommands();
  delay(250);
}

void fetchStatsTask() {
  stats = fetchStats();
}

void flipDisplayTask() {
  if (stats.fail) {
    display.string("FAIL");
    return;
  }

  if (showingTotals) {
    display.string(stats.month);
  } else {
    display.string(stats.total);
  }
  showingTotals = !showingTotals;
}

Stats fetchStats() {
  HTTPClient http;
  uint8_t buff[100] = { 0 };
  Stats s;

  s.fail = false;

  http.begin(
    "https://www.strava.com/athletes/1640185",
    "96 AB DA 97 99 4A 35 96 C6 70 3D 90 23 40 4A 0C EC 54 AB 08"
  );

  int httpCode = http.GET();

  if (httpCode == HTTP_CODE_OK) {
    WiFiClient *stream = http.getStreamPtr();

    // This month
    stream->find("<h3>Current Month</h3>");
    stream->find("<strong>");
    size_t read = stream->readBytesUntil('<', buff, sizeof(buff));
    buff[read + 1] = '\0'; // Dear Pete save us all if I ever manage
                           // to run 10^100km in a single month
    s.month = String((char *)buff);
    s.month.trim();

    // Total distance
    stream->find("<th>Total Distance</th>");
    stream->find("<td>");
    read = stream->readBytesUntil('<', buff, sizeof(buff));
    buff[read + 1] = '\0';
    s.total = String((char *)buff);
    s.total.trim();
  } else {
    s.fail = true;
  }

  http.end();

  return s;
}
