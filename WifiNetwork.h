#ifndef WifiNetwork_h
#define WifiNetwork_h

#include <EEPROM.h>
#include <ESP8266WiFi.h>

#ifndef WIFI_NETWORK_EEPROM_ADDRESS
#define WIFI_NETWORK_EEPROM_ADDRESS 0
#endif

struct WifiNetworkSettings {
  char ssid[32] = { 0 };
  char password[32] = { 0 };
};

class WifiNetwork {
  public:
  void begin();
  void handleCommands();

  protected:
  WifiNetworkSettings settings;
  void persist();
};

#endif
