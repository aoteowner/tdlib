import '../tdapi.dart';

class AutosaveSettingsScope extends TdObject {
  /// Describes scope of autosave settings
  const AutosaveSettingsScope();

  factory AutosaveSettingsScope.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AutosaveSettingsScopePrivateChats.CONSTRUCTOR:
        return AutosaveSettingsScopePrivateChats.fromJson(json);
      case AutosaveSettingsScopeGroupChats.CONSTRUCTOR:
        return AutosaveSettingsScopeGroupChats.fromJson(json);
      case AutosaveSettingsScopeChannelChats.CONSTRUCTOR:
        return AutosaveSettingsScopeChannelChats.fromJson(json);
      case AutosaveSettingsScopeChat.CONSTRUCTOR:
        return AutosaveSettingsScopeChat.fromJson(json);
      default:
        return const AutosaveSettingsScope();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AutosaveSettingsScope copyWith() {
    return const AutosaveSettingsScope();
  }

  static const CONSTRUCTOR = 'autosaveSettingsScope';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopePrivateChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all private chats without chat-specific settings
  const AutosaveSettingsScopePrivateChats();

  factory AutosaveSettingsScopePrivateChats.fromJson(
          Map<String, dynamic> json) =>
      const AutosaveSettingsScopePrivateChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopePrivateChats copyWith() {
    return const AutosaveSettingsScopePrivateChats();
  }

  static const CONSTRUCTOR = 'autosaveSettingsScopePrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all basic group and supergroup chats without chat-specific settings
  const AutosaveSettingsScopeGroupChats();

  factory AutosaveSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) =>
      const AutosaveSettingsScopeGroupChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopeGroupChats copyWith() {
    return const AutosaveSettingsScopeGroupChats();
  }

  static const CONSTRUCTOR = 'autosaveSettingsScopeGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all channel chats without chat-specific settings
  const AutosaveSettingsScopeChannelChats();

  factory AutosaveSettingsScopeChannelChats.fromJson(
          Map<String, dynamic> json) =>
      const AutosaveSettingsScopeChannelChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopeChannelChats copyWith() {
    return const AutosaveSettingsScopeChannelChats();
  }

  static const CONSTRUCTOR = 'autosaveSettingsScopeChannelChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  /// Autosave settings applied to a chat
  const AutosaveSettingsScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  factory AutosaveSettingsScopeChat.fromJson(Map<String, dynamic> json) =>
      AutosaveSettingsScopeChat(
        chatId: json['chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  AutosaveSettingsScopeChat copyWith({
    int? chatId,
  }) {
    return AutosaveSettingsScopeChat(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'autosaveSettingsScopeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
