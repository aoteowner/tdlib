import '../tdapi.dart';

class ChatAdministratorRights extends TdObject {
  /// Describes rights of the administrator
  const ChatAdministratorRights({
    required this.canManageChat,
    required this.canChangeInfo,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canDeleteMessages,
    required this.canInviteUsers,
    required this.canRestrictMembers,
    required this.canPinMessages,
    required this.canManageTopics,
    required this.canPromoteMembers,
    required this.canManageVideoChats,
    required this.canPostStories,
    required this.canEditStories,
    required this.canDeleteStories,
    required this.isAnonymous,
  });

  /// [canManageChat] True, if the administrator can access the chat event log, get boost list, see hidden supergroup and channel members, report supergroup spam messages and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only
  final bool canManageChat;

  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts or view channel statistics; applicable to channels only
  final bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  final bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of other users
  final bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the chat
  final bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members or view supergroup statistics; always true for channels
  final bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable to basic groups and supergroups only
  final bool canPinMessages;

  /// [canManageTopics] True, if the administrator can create, rename, close, reopen, hide, and unhide forum topics; applicable to forum supergroups only
  final bool canManageTopics;

  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  final bool canPromoteMembers;

  /// [canManageVideoChats] True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// [canPostStories] True, if the administrator can create new chat stories, or edit and delete posted stories; applicable to supergroups and channels only
  final bool canPostStories;

  /// [canEditStories] True, if the administrator can edit stories posted by other users, post stories to the chat page, pin chat stories, and access story archive; applicable to supergroups and channels only
  final bool canEditStories;

  /// [canDeleteStories] True, if the administrator can delete stories posted by other users; applicable to supergroups and channels only
  final bool canDeleteStories;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  factory ChatAdministratorRights.fromJson(Map<String, dynamic> json) =>
      ChatAdministratorRights(
        canManageChat: json['can_manage_chat'] ?? false,
        canChangeInfo: json['can_change_info'] ?? false,
        canPostMessages: json['can_post_messages'] ?? false,
        canEditMessages: json['can_edit_messages'] ?? false,
        canDeleteMessages: json['can_delete_messages'] ?? false,
        canInviteUsers: json['can_invite_users'] ?? false,
        canRestrictMembers: json['can_restrict_members'] ?? false,
        canPinMessages: json['can_pin_messages'] ?? false,
        canManageTopics: json['can_manage_topics'] ?? false,
        canPromoteMembers: json['can_promote_members'] ?? false,
        canManageVideoChats: json['can_manage_video_chats'] ?? false,
        canPostStories: json['can_post_stories'] ?? false,
        canEditStories: json['can_edit_stories'] ?? false,
        canDeleteStories: json['can_delete_stories'] ?? false,
        isAnonymous: json['is_anonymous'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_manage_chat": canManageChat,
      "can_change_info": canChangeInfo,
      "can_post_messages": canPostMessages,
      "can_edit_messages": canEditMessages,
      "can_delete_messages": canDeleteMessages,
      "can_invite_users": canInviteUsers,
      "can_restrict_members": canRestrictMembers,
      "can_pin_messages": canPinMessages,
      "can_manage_topics": canManageTopics,
      "can_promote_members": canPromoteMembers,
      "can_manage_video_chats": canManageVideoChats,
      "can_post_stories": canPostStories,
      "can_edit_stories": canEditStories,
      "can_delete_stories": canDeleteStories,
      "is_anonymous": isAnonymous,
    };
  }

  ChatAdministratorRights copyWith({
    bool? canManageChat,
    bool? canChangeInfo,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canInviteUsers,
    bool? canRestrictMembers,
    bool? canPinMessages,
    bool? canManageTopics,
    bool? canPromoteMembers,
    bool? canManageVideoChats,
    bool? canPostStories,
    bool? canEditStories,
    bool? canDeleteStories,
    bool? isAnonymous,
  }) {
    return ChatAdministratorRights(
      canManageChat: canManageChat ?? this.canManageChat,
      canChangeInfo: canChangeInfo ?? this.canChangeInfo,
      canPostMessages: canPostMessages ?? this.canPostMessages,
      canEditMessages: canEditMessages ?? this.canEditMessages,
      canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
      canInviteUsers: canInviteUsers ?? this.canInviteUsers,
      canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
      canPinMessages: canPinMessages ?? this.canPinMessages,
      canManageTopics: canManageTopics ?? this.canManageTopics,
      canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
      canManageVideoChats: canManageVideoChats ?? this.canManageVideoChats,
      canPostStories: canPostStories ?? this.canPostStories,
      canEditStories: canEditStories ?? this.canEditStories,
      canDeleteStories: canDeleteStories ?? this.canDeleteStories,
      isAnonymous: isAnonymous ?? this.isAnonymous,
    );
  }

  static const CONSTRUCTOR = 'chatAdministratorRights';

  @override
  String getConstructor() => CONSTRUCTOR;
}
