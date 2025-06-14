import '../tdapi.dart';

class RevokeChatInviteLink extends TdFunction {
  /// Revokes invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links.. If a primary link is revoked, then additionally to the revoked link returns new primary link
  const RevokeChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be revoked
  final String inviteLink;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "@extra": extra,
    };
  }

  RevokeChatInviteLink copyWith({
    int? chatId,
    String? inviteLink,
  }) {
    return RevokeChatInviteLink(
      chatId: chatId ?? this.chatId,
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  static const CONSTRUCTOR = 'revokeChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
