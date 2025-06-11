import 'dart:ffi' as ffi;

import 'package:tdlib/src/tdclient/platform_interfaces/td_native_plugin_base.dart';

import 'td_plugin.dart';

/// TD Native Library Instance.
class TdLinuxOrAndroidPlugin extends TdNativeBasePlugin {
  /// This class is set to be the default [TdPlugin] initializer.
  static void registerWith() {
    TdPlugin.instance = TdLinuxOrAndroidPlugin();
  }

  TdLinuxOrAndroidPlugin._(Lookup lookup) : super.fromLookup(lookup);

  factory TdLinuxOrAndroidPlugin() {
    final lib = ffi.DynamicLibrary.open('libtdjson.so');
    return TdLinuxOrAndroidPlugin._(lib.lookup);
  }

  @override
  TdNativeBasePlugin Function() get create => _create;
}

TdLinuxOrAndroidPlugin _create() => TdLinuxOrAndroidPlugin();
