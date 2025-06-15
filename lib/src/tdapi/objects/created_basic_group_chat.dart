import '../tdapi.dart';

class CreatedBasicGroupChat extends TdObject {
  /// Contains information about a newly created basic group chat
  const CreatedBasicGroupChat({
    required this.chatId,
    required this.failedToAddMembers,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [failedToAddMembers] Information about failed to add members
  final FailedToAddMembers failedToAddMembers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CreatedBasicGroupChat.fromJson(Map<String, dynamic> json) =>
      CreatedBasicGroupChat(
        chatId: json['chat_id'] ?? 0,
        failedToAddMembers:
            FailedToAddMembers.fromJson(json['failed_to_add_members'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "failed_to_add_members": failedToAddMembers.toJson(),
    };
  }

  CreatedBasicGroupChat copyWith({
    int? chatId,
    FailedToAddMembers? failedToAddMembers,
    dynamic extra,
    int? clientId,
  }) {
    return CreatedBasicGroupChat(
      chatId: chatId ?? this.chatId,
      failedToAddMembers: failedToAddMembers ?? this.failedToAddMembers,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'createdBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
