#include "include/tg_desktop/tg_desktop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tg_desktop_plugin.h"

void TgDesktopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tg_desktop::TgDesktopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
