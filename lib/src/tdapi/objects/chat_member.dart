import '../tdapi.dart';

class ChatMember extends TdObject {
  /// Describes a user or a chat as a member of another chat
  const ChatMember({
    required this.memberId,
    required this.inviterUserId,
    required this.joinedChatDate,
    required this.status,
    this.extra,
    this.clientId,
  });

  /// [memberId] Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels
  final MessageSender memberId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined/was promoted/was banned in the chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatMember.fromJson(Map<String, dynamic> json) => ChatMember(
        memberId: MessageSender.fromJson(json['member_id'] ?? {}),
        inviterUserId: json['inviter_user_id'] ?? 0,
        joinedChatDate: json['joined_chat_date'] ?? 0,
        status: ChatMemberStatus.fromJson(json['status'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_id": memberId.toJson(),
      "inviter_user_id": inviterUserId,
      "joined_chat_date": joinedChatDate,
      "status": status.toJson(),
    };
  }

  ChatMember copyWith({
    MessageSender? memberId,
    int? inviterUserId,
    int? joinedChatDate,
    ChatMemberStatus? status,
    dynamic extra,
    int? clientId,
  }) {
    return ChatMember(
      memberId: memberId ?? this.memberId,
      inviterUserId: inviterUserId ?? this.inviterUserId,
      joinedChatDate: joinedChatDate ?? this.joinedChatDate,
      status: status ?? this.status,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
