part of '../tdapi.dart';

class SetNewChatPrivacySettings extends TdFunction {

  /// Changes privacy settings for new chat creation; can be used only if getOption("can_set_new_chat_privacy_settings")
  const SetNewChatPrivacySettings({
    required this.settings,
  });
  
  /// [settings] New settings
  final NewChatPrivacySettings settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "settings": settings.toJson(),
      "@extra": extra,
    };
  }
  
  SetNewChatPrivacySettings copyWith({
    NewChatPrivacySettings? settings,
  }) => SetNewChatPrivacySettings(
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'setNewChatPrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
