import 'dart:ffi' as ffi;

import 'package:tdlib/src/tdclient/platform_interfaces/td_native_plugin_base.dart';

import 'td_plugin.dart';

/// TD Native Library Instance.
class TdWindowsPlugin extends TdNativeBasePlugin {
  /// This class is set to be the default [TdPlugin] initializer.
  static void registerWith() {
    TdPlugin.instance = TdWindowsPlugin();
  }

  TdWindowsPlugin._(Lookup lookup) : super.fromLookup(lookup);

  factory TdWindowsPlugin() {
    final lib = ffi.DynamicLibrary.open('tdjson.dll');
    return TdWindowsPlugin._(lib.lookup);
  }

  @override
  TdNativeBasePlugin Function() get create => _create;
}

TdWindowsPlugin _create() => TdWindowsPlugin();
