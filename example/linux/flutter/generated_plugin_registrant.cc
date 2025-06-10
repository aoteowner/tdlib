//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <tg_desktop/tg_desktop_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) tg_desktop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TgDesktopPlugin");
  tg_desktop_plugin_register_with_registrar(tg_desktop_registrar);
}
