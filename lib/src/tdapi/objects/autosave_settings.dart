import '../tdapi.dart';

class AutosaveSettings extends TdObject {
  /// Describes autosave settings
  const AutosaveSettings({
    required this.privateChatSettings,
    required this.groupSettings,
    required this.channelSettings,
    required this.exceptions,
    this.extra,
    this.clientId,
  });

  /// [privateChatSettings] Default autosave settings for private chats
  final ScopeAutosaveSettings privateChatSettings;

  /// [groupSettings] Default autosave settings for basic group and supergroup chats
  final ScopeAutosaveSettings groupSettings;

  /// [channelSettings] Default autosave settings for channel chats
  final ScopeAutosaveSettings channelSettings;

  /// [exceptions] Autosave settings for specific chats
  final List<AutosaveSettingsException> exceptions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory AutosaveSettings.fromJson(Map<String, dynamic> json) =>
      AutosaveSettings(
        privateChatSettings:
            ScopeAutosaveSettings.fromJson(json['private_chat_settings'] ?? {}),
        groupSettings:
            ScopeAutosaveSettings.fromJson(json['group_settings'] ?? {}),
        channelSettings:
            ScopeAutosaveSettings.fromJson(json['channel_settings'] ?? {}),
        exceptions: json['exceptions'] == null
            ? <AutosaveSettingsException>[]
            : (json['exceptions'] as List)
                .map((e) => AutosaveSettingsException.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "private_chat_settings": privateChatSettings.toJson(),
      "group_settings": groupSettings.toJson(),
      "channel_settings": channelSettings.toJson(),
      "exceptions": exceptions.map((e) => e.toJson()).toList(),
    };
  }

  AutosaveSettings copyWith({
    ScopeAutosaveSettings? privateChatSettings,
    ScopeAutosaveSettings? groupSettings,
    ScopeAutosaveSettings? channelSettings,
    List<AutosaveSettingsException>? exceptions,
    dynamic extra,
    int? clientId,
  }) {
    return AutosaveSettings(
      privateChatSettings: privateChatSettings ?? this.privateChatSettings,
      groupSettings: groupSettings ?? this.groupSettings,
      channelSettings: channelSettings ?? this.channelSettings,
      exceptions: exceptions ?? this.exceptions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'autosaveSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
