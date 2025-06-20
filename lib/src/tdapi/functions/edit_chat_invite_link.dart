import '../tdapi.dart';

class EditChatInviteLink extends TdFunction {
  /// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels.. If the link creates a subscription, then expiration_date, member_limit and creates_join_request must not be used.. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  const EditChatInviteLink({
    required this.chatId,
    required this.inviteLink,
    required this.name,
    required this.expirationDate,
    required this.memberLimit,
    required this.createsJoinRequest,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire; pass 0 if never
  final int expirationDate;

  /// [memberLimit] The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  /// [createsJoinRequest] Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0
  final bool createsJoinRequest;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "name": name,
      "expiration_date": expirationDate,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
      "@extra": extra,
    };
  }

  EditChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
    String? name,
    int? expirationDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) {
    return EditChatInviteLink(
      chatId: chatId ?? this.chatId,
      inviteLink: inviteLink ?? this.inviteLink,
      name: name ?? this.name,
      expirationDate: expirationDate ?? this.expirationDate,
      memberLimit: memberLimit ?? this.memberLimit,
      createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
    );
  }

  static const CONSTRUCTOR = 'editChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
