#include <ESP8266HTTPClient.h>
#include <Wire.h>
#include <EEPROM.h>
#include "Adafruit_LEDBackpack.h"
#include "Adafruit_GFX.h"
#include "WifiNetwork.h"

WifiNetwork wifi;

struct Stats {
  String month;
  String total;
};

void setup() {
  Serial.begin(115200);
  delay(10);
  Serial.println("Booting up!");

  EEPROM.begin(1024);
  wifi.begin();
}

void loop() {
  Stats s = fetchStats();

  Serial.println("This month:");
  Serial.println(s.month);
  Serial.println("Total:");
  Serial.println(s.total);

  for (int i = 0; i < 10; i++) {
    display(s.month);
    idle(10000);
    display(s.total);
    idle(10000);
  }
}

/**
 * Do approximate `delay` while polling for commands available over serial.
 * (ESP8266 Arduino "framework" does not appear to provide serialEvent() callback)
 */
void idle(int ms) {
  int delayed = 0;

  while (delayed < ms) {
    delay(100);
    delayed += 100;
    wifi.handleCommands();
  }
};

Stats fetchStats() {
  HTTPClient http;
  uint8_t buff[100] = { 0 };
  Stats s;

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
    buff[read+1] = '\0'; // Dear Pete save us all if I ever manage 
                         // to run 10^100km in a single month
    s.month = String((char *)buff);
    s.month.trim();
    
    // Total distance
    stream->find("<th>Total Distance</th>");
    stream->find("<td>");
    read = stream->readBytesUntil('<', buff, sizeof(buff));
    buff[read+1] = '\0';
    s.total = String((char *)buff);
    s.total.trim();
  } else {
    Serial.println("Fail?");
  }

  http.end();

  return s;
}

void display(String s) {
  Adafruit_AlphaNum4 alpha4 = Adafruit_AlphaNum4();
  Wire.begin(4, 5);
  alpha4.begin(0x70);

  alpha4.clear();
    
  for (int i = s.length() - 1, j = 3; i >= 0 && j >= 0; i--, j--) {
    bool dot = (s[i] == '.');

    if (dot) {
      i--;
      alpha4.writeDigitAscii(j, s[i], true);  
    } else {
      alpha4.writeDigitAscii(j, s[i]);
    }
  }
  
  alpha4.writeDisplay();  
}
