part of '../tdapi.dart';

class ReadDatePrivacySettings extends TdObject {

  /// Contains privacy settings for message read date in private chats. Read dates are always shown to the users that can see online status of the current user regardless of this setting
  const ReadDatePrivacySettings({
    required this.showReadDate,
    this.extra,
    this.clientId,
  });
  
  /// [showReadDate] True, if message read date is shown to other users in private chats. If false and the current user isn't a Telegram Premium user, then they will not be able to see other's message read date
  final bool showReadDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ReadDatePrivacySettings.fromJson(Map<String, dynamic> json) => ReadDatePrivacySettings(
    showReadDate: json['show_read_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "show_read_date": showReadDate,
    };
  }
  
  ReadDatePrivacySettings copyWith({
    bool? showReadDate,
    dynamic extra,
    int? clientId,
  }) => ReadDatePrivacySettings(
    showReadDate: showReadDate ?? this.showReadDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'readDatePrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
