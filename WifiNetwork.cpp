#include "WifiNetwork.h"

void WifiNetwork::begin() {
  Serial.println("Use the following commands (followed by \\n) over serial to configure:");
  Serial.println("ssid:yournetworkssid");
  Serial.println("password:yournetworkpassword");
  Serial.println("Settings will be persisted.");
  Serial.println();

  settings = EEPROM.get(WIFI_NETWORK_EEPROM_ADDRESS, settings);
  
  Serial.printf("Connecting to '%s'\n", settings.ssid);
  
  WiFi.mode(WIFI_STA);
  WiFi.begin(settings.ssid, settings.password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
    handleCommands();
  }

  Serial.println("\nWiFi connected, IP address:");
  Serial.println(WiFi.localIP());
}

/**
 * Check for any commands comming over serial to configure/re-configure
 * WiFi connection.
 */
void WifiNetwork::handleCommands() {
  char buff[129] = { 0 }; // Serial buffer size + byte for /0 terminator
  size_t available = Serial.available();
  
  if (available > 0) {
    int read = Serial.readBytes(buff, sizeof(buff) - 1 > available ? available : sizeof(buff));
    buff[read] = '\0';
    String str = String(buff);
    str.trim();
    Serial.println(str.c_str());

    if (str.startsWith("ssid:")) {
      strcpy(settings.ssid, str.substring(5).c_str());
      Serial.printf("Setting SSID to '%s'\n", settings.ssid);
      persist();
    }

    if (str.startsWith("password:")) {
      strcpy(settings.password, str.substring(9).c_str());
      Serial.printf("Setting password to '%s'\n", settings.password);
      persist();
    }
  }
}

void WifiNetwork::persist() {
  EEPROM.put(WIFI_NETWORK_EEPROM_ADDRESS, settings);
  EEPROM.commit();
}

