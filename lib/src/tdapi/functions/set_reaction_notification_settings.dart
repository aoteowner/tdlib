import '../tdapi.dart';

class SetReactionNotificationSettings extends TdFunction {
  /// Changes notification settings for reactions
  const SetReactionNotificationSettings({
    required this.notificationSettings,
  });

  /// [notificationSettings] The new notification settings for reactions
  final ReactionNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
    };
  }

  SetReactionNotificationSettings copyWith({
    ReactionNotificationSettings? notificationSettings,
  }) {
    return SetReactionNotificationSettings(
      notificationSettings: notificationSettings ?? this.notificationSettings,
    );
  }

  static const CONSTRUCTOR = 'setReactionNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
