import '../tdapi.dart';

class EditChatSubscriptionInviteLink extends TdFunction {
  /// Edits a subscription invite link for a channel chat. Requires can_invite_users right in the chat for own links and owner privileges for other links
  const EditChatSubscriptionInviteLink({
    required this.chatId,
    required this.inviteLink,
    required this.name,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] Invite link name; 0-32 characters
  final String name;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "name": name,
      "@extra": extra,
    };
  }

  EditChatSubscriptionInviteLink copyWith({
    int? chatId,
    String? inviteLink,
    String? name,
  }) {
    return EditChatSubscriptionInviteLink(
      chatId: chatId ?? this.chatId,
      inviteLink: inviteLink ?? this.inviteLink,
      name: name ?? this.name,
    );
  }

  static const CONSTRUCTOR = 'editChatSubscriptionInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
