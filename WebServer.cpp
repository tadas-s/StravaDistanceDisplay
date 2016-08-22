#include "WebServer.h"
#include <AsyncJson.h>
#include <ArduinoJson.h>

WebServer::WebServer() : AsyncWebServer(80) {
  serveStatic("/static", SPIFFS, "/");
  rewrite("/", "/static/index.html");
  rewrite("/favicon.ico", "/static/favicon.ico");

  on("/status", HTTP_GET, [](AsyncWebServerRequest * request) {
    AsyncJsonResponse *response = new AsyncJsonResponse();
    JsonObject &root = response->getRoot();

    root["heap"] = ESP.getFreeHeap();
    root["ssid"] = WiFi.SSID();

    response->setLength();
    request->send(response);
  });
}
