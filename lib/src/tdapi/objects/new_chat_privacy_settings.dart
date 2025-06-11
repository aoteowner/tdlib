import '../tdapi.dart';

class NewChatPrivacySettings extends TdObject {

  /// Contains privacy settings for chats with non-contacts
  const NewChatPrivacySettings({
    required this.allowNewChatsFromUnknownUsers,
    required this.incomingPaidMessageStarCount,
    this.extra,
    this.clientId,
  });
  
  /// [allowNewChatsFromUnknownUsers] True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting
  final bool allowNewChatsFromUnknownUsers;

  /// [incomingPaidMessageStarCount] Number of Telegram Stars that must be paid for every incoming private message by non-contacts; 0-getOption("paid_message_star_count_max").. If positive, then allow_new_chats_from_unknown_users must be true. The current user will receive getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for message sending.. Can be positive, only if getOption("can_enable_paid_messages") is true
  final int incomingPaidMessageStarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory NewChatPrivacySettings.fromJson(Map<String, dynamic> json) => NewChatPrivacySettings(
    allowNewChatsFromUnknownUsers: json['allow_new_chats_from_unknown_users'],
    incomingPaidMessageStarCount: json['incoming_paid_message_star_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_new_chats_from_unknown_users": allowNewChatsFromUnknownUsers,
      "incoming_paid_message_star_count": incomingPaidMessageStarCount,
    };
  }
  
  NewChatPrivacySettings copyWith({
    bool? allowNewChatsFromUnknownUsers,
    int? incomingPaidMessageStarCount,
    dynamic extra,
    int? clientId,
  }) => NewChatPrivacySettings(
    allowNewChatsFromUnknownUsers: allowNewChatsFromUnknownUsers ?? this.allowNewChatsFromUnknownUsers,
    incomingPaidMessageStarCount: incomingPaidMessageStarCount ?? this.incomingPaidMessageStarCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'newChatPrivacySettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
