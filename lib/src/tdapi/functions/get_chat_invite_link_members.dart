part of '../tdapi.dart';

class GetChatInviteLinkMembers extends TdFunction {

  /// Returns chat members joined a chat via an invite link. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
  const GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    required this.onlyWithExpiredSubscription,
    this.offsetMember,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return chat members
  final String inviteLink;

  /// [onlyWithExpiredSubscription] Pass true if the link is a subscription link and only members with expired subscription must be returned
  final bool onlyWithExpiredSubscription;

  /// [offsetMember] A chat member from which to return next chat members; pass null to get results from the beginning
  final ChatInviteLinkMember? offsetMember;

  /// [limit] The maximum number of chat members to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "invite_link": inviteLink,
      "only_with_expired_subscription": onlyWithExpiredSubscription,
      "offset_member": offsetMember?.toJson(),
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatInviteLinkMembers copyWith({
    int? chatId,
    String? inviteLink,
    bool? onlyWithExpiredSubscription,
    ChatInviteLinkMember? offsetMember,
    int? limit,
  }) => GetChatInviteLinkMembers(
    chatId: chatId ?? this.chatId,
    inviteLink: inviteLink ?? this.inviteLink,
    onlyWithExpiredSubscription: onlyWithExpiredSubscription ?? this.onlyWithExpiredSubscription,
    offsetMember: offsetMember ?? this.offsetMember,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatInviteLinkMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
