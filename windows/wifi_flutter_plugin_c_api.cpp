#include "include/wifi_flutter/wifi_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "wifi_flutter_plugin.h"

void WifiFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  wifi_flutter::WifiFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
