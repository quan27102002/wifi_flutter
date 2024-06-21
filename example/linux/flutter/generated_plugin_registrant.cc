//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <wifi_flutter/wifi_flutter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) wifi_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WifiFlutterPlugin");
  wifi_flutter_plugin_register_with_registrar(wifi_flutter_registrar);
}
