import '../tdapi.dart';

class NotificationSettingsScope extends TdObject {
  /// Describes the types of chats to which notification settings are relevant
  const NotificationSettingsScope();

  factory NotificationSettingsScope.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return const NotificationSettingsScope();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  NotificationSettingsScope copyWith() {
    return const NotificationSettingsScope();
  }

  static const CONSTRUCTOR = 'notificationSettingsScope';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
  const NotificationSettingsScopePrivateChats();

  factory NotificationSettingsScopePrivateChats.fromJson(
          Map<String, dynamic> json) =>
      const NotificationSettingsScopePrivateChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NotificationSettingsScopePrivateChats copyWith() {
    return const NotificationSettingsScopePrivateChats();
  }

  static const CONSTRUCTOR = 'notificationSettingsScopePrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value
  const NotificationSettingsScopeGroupChats();

  factory NotificationSettingsScopeGroupChats.fromJson(
          Map<String, dynamic> json) =>
      const NotificationSettingsScopeGroupChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NotificationSettingsScopeGroupChats copyWith() {
    return const NotificationSettingsScopeGroupChats();
  }

  static const CONSTRUCTOR = 'notificationSettingsScopeGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  /// Notification settings applied to all channel chats when the corresponding chat setting has a default value
  const NotificationSettingsScopeChannelChats();

  factory NotificationSettingsScopeChannelChats.fromJson(
          Map<String, dynamic> json) =>
      const NotificationSettingsScopeChannelChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NotificationSettingsScopeChannelChats copyWith() {
    return const NotificationSettingsScopeChannelChats();
  }

  static const CONSTRUCTOR = 'notificationSettingsScopeChannelChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
