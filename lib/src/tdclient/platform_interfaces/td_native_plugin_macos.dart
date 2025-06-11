import 'dart:ffi' as ffi;

import 'package:tdlib/src/tdclient/platform_interfaces/td_native_plugin_base.dart';

import 'td_plugin.dart';

/// TD Native Library Instance.
class TdMacosPlugin extends TdNativeBasePlugin {
  /// This class is set to be the default [TdPlugin] initializer.
  static void registerWith() {
    TdPlugin.instance = TdMacosPlugin();
  }

  TdMacosPlugin._(Lookup lookup) : super.fromLookup(lookup);

  factory TdMacosPlugin() {
    final lib = ffi.DynamicLibrary.open('libtdjson.dylib');
    return TdMacosPlugin._(lib.lookup);
  }

  @override
  TdNativeBasePlugin Function() get create => _create;
}

TdMacosPlugin _create() => TdMacosPlugin();
