#ifndef FLUTTER_PLUGIN_TG_DESKTOP_PLUGIN_H_
#define FLUTTER_PLUGIN_TG_DESKTOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace tg_desktop {

class TgDesktopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TgDesktopPlugin();

  virtual ~TgDesktopPlugin();

  // Disallow copy and assign.
  TgDesktopPlugin(const TgDesktopPlugin&) = delete;
  TgDesktopPlugin& operator=(const TgDesktopPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace tg_desktop

#endif  // FLUTTER_PLUGIN_TG_DESKTOP_PLUGIN_H_
