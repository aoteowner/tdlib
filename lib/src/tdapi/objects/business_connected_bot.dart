part of '../tdapi.dart';

class BusinessConnectedBot extends TdObject {

  /// Describes a bot connected to a business account
  const BusinessConnectedBot({
    required this.botUserId,
    required this.recipients,
    required this.rights,
    this.extra,
    this.clientId,
  });
  
  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [recipients] Private chats that will be accessible to the bot
  final BusinessRecipients recipients;

  /// [rights] Rights of the bot
  final BusinessBotRights rights;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessConnectedBot.fromJson(Map<String, dynamic> json) => BusinessConnectedBot(
    botUserId: json['bot_user_id'],
    recipients: BusinessRecipients.fromJson(json['recipients']),
    rights: BusinessBotRights.fromJson(json['rights']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "recipients": recipients.toJson(),
      "rights": rights.toJson(),
    };
  }
  
  BusinessConnectedBot copyWith({
    int? botUserId,
    BusinessRecipients? recipients,
    BusinessBotRights? rights,
    dynamic extra,
    int? clientId,
  }) => BusinessConnectedBot(
    botUserId: botUserId ?? this.botUserId,
    recipients: recipients ?? this.recipients,
    rights: rights ?? this.rights,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessConnectedBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
