part of '../tdapi.dart';

class SetBusinessGreetingMessageSettings extends TdFunction {

  /// Changes the business greeting message settings of the current user. Requires Telegram Business subscription
  const SetBusinessGreetingMessageSettings({
    this.greetingMessageSettings,
  });
  
  /// [greetingMessageSettings] The new settings for the greeting message of the business; pass null to disable the greeting message
  final BusinessGreetingMessageSettings? greetingMessageSettings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "greeting_message_settings": greetingMessageSettings?.toJson(),
      "@extra": extra,
    };
  }
  
  SetBusinessGreetingMessageSettings copyWith({
    BusinessGreetingMessageSettings? greetingMessageSettings,
  }) => SetBusinessGreetingMessageSettings(
    greetingMessageSettings: greetingMessageSettings ?? this.greetingMessageSettings,
  );

  static const CONSTRUCTOR = 'setBusinessGreetingMessageSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
