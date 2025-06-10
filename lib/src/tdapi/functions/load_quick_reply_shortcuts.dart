part of '../tdapi.dart';

class LoadQuickReplyShortcuts extends TdFunction {

  /// Loads quick reply shortcuts created by the current user. The loaded data will be sent through updateQuickReplyShortcut and updateQuickReplyShortcuts
  const LoadQuickReplyShortcuts();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  LoadQuickReplyShortcuts copyWith() => const LoadQuickReplyShortcuts();

  static const CONSTRUCTOR = 'loadQuickReplyShortcuts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
