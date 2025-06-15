import '../tdapi.dart';

class ChatEventAction extends TdObject {
  /// Represents a chat event
  const ChatEventAction();

  factory ChatEventAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventPollStopped.CONSTRUCTOR:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.CONSTRUCTOR:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberJoinedByRequest.CONSTRUCTOR:
        return ChatEventMemberJoinedByRequest.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventMemberSubscriptionExtended.CONSTRUCTOR:
        return ChatEventMemberSubscriptionExtended.fromJson(json);
      case ChatEventAvailableReactionsChanged.CONSTRUCTOR:
        return ChatEventAvailableReactionsChanged.fromJson(json);
      case ChatEventBackgroundChanged.CONSTRUCTOR:
        return ChatEventBackgroundChanged.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventEmojiStatusChanged.CONSTRUCTOR:
        return ChatEventEmojiStatusChanged.fromJson(json);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventMessageAutoDeleteTimeChanged.CONSTRUCTOR:
        return ChatEventMessageAutoDeleteTimeChanged.fromJson(json);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventCustomEmojiStickerSetChanged.CONSTRUCTOR:
        return ChatEventCustomEmojiStickerSetChanged.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventActiveUsernamesChanged.CONSTRUCTOR:
        return ChatEventActiveUsernamesChanged.fromJson(json);
      case ChatEventAccentColorChanged.CONSTRUCTOR:
        return ChatEventAccentColorChanged.fromJson(json);
      case ChatEventProfileAccentColorChanged.CONSTRUCTOR:
        return ChatEventProfileAccentColorChanged.fromJson(json);
      case ChatEventHasProtectedContentToggled.CONSTRUCTOR:
        return ChatEventHasProtectedContentToggled.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventHasAggressiveAntiSpamEnabledToggled.CONSTRUCTOR:
        return ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventShowMessageSenderToggled.CONSTRUCTOR:
        return ChatEventShowMessageSenderToggled.fromJson(json);
      case ChatEventAutomaticTranslationToggled.CONSTRUCTOR:
        return ChatEventAutomaticTranslationToggled.fromJson(json);
      case ChatEventInviteLinkEdited.CONSTRUCTOR:
        return ChatEventInviteLinkEdited.fromJson(json);
      case ChatEventInviteLinkRevoked.CONSTRUCTOR:
        return ChatEventInviteLinkRevoked.fromJson(json);
      case ChatEventInviteLinkDeleted.CONSTRUCTOR:
        return ChatEventInviteLinkDeleted.fromJson(json);
      case ChatEventVideoChatCreated.CONSTRUCTOR:
        return ChatEventVideoChatCreated.fromJson(json);
      case ChatEventVideoChatEnded.CONSTRUCTOR:
        return ChatEventVideoChatEnded.fromJson(json);
      case ChatEventVideoChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);
      case ChatEventVideoChatParticipantIsMutedToggled.CONSTRUCTOR:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVideoChatParticipantVolumeLevelChanged.CONSTRUCTOR:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);
      case ChatEventIsForumToggled.CONSTRUCTOR:
        return ChatEventIsForumToggled.fromJson(json);
      case ChatEventForumTopicCreated.CONSTRUCTOR:
        return ChatEventForumTopicCreated.fromJson(json);
      case ChatEventForumTopicEdited.CONSTRUCTOR:
        return ChatEventForumTopicEdited.fromJson(json);
      case ChatEventForumTopicToggleIsClosed.CONSTRUCTOR:
        return ChatEventForumTopicToggleIsClosed.fromJson(json);
      case ChatEventForumTopicToggleIsHidden.CONSTRUCTOR:
        return ChatEventForumTopicToggleIsHidden.fromJson(json);
      case ChatEventForumTopicDeleted.CONSTRUCTOR:
        return ChatEventForumTopicDeleted.fromJson(json);
      case ChatEventForumTopicPinned.CONSTRUCTOR:
        return ChatEventForumTopicPinned.fromJson(json);
      default:
        return const ChatEventAction();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatEventAction copyWith() {
    return const ChatEventAction();
  }

  static const CONSTRUCTOR = 'chatEventAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageEdited extends ChatEventAction {
  /// A message was edited
  const ChatEventMessageEdited({
    required this.oldMessage,
    required this.newMessage,
  });

  /// [oldMessage] The original message before the edit
  final Message oldMessage;

  /// [newMessage] The message after it was edited
  final Message newMessage;

  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageEdited(
        oldMessage: Message.fromJson(json['old_message'] ?? {}),
        newMessage: Message.fromJson(json['new_message'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_message": oldMessage.toJson(),
      "new_message": newMessage.toJson(),
    };
  }

  @override
  ChatEventMessageEdited copyWith({
    Message? oldMessage,
    Message? newMessage,
  }) {
    return ChatEventMessageEdited(
      oldMessage: oldMessage ?? this.oldMessage,
      newMessage: newMessage ?? this.newMessage,
    );
  }

  static const CONSTRUCTOR = 'chatEventMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageDeleted extends ChatEventAction {
  /// A message was deleted
  const ChatEventMessageDeleted({
    required this.message,
    required this.canReportAntiSpamFalsePositive,
  });

  /// [message] Deleted message
  final Message message;

  /// [canReportAntiSpamFalsePositive] True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive
  final bool canReportAntiSpamFalsePositive;

  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageDeleted(
        message: Message.fromJson(json['message'] ?? {}),
        canReportAntiSpamFalsePositive:
            json['can_report_anti_spam_false_positive'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "can_report_anti_spam_false_positive": canReportAntiSpamFalsePositive,
    };
  }

  @override
  ChatEventMessageDeleted copyWith({
    Message? message,
    bool? canReportAntiSpamFalsePositive,
  }) {
    return ChatEventMessageDeleted(
      message: message ?? this.message,
      canReportAntiSpamFalsePositive:
          canReportAntiSpamFalsePositive ?? this.canReportAntiSpamFalsePositive,
    );
  }

  static const CONSTRUCTOR = 'chatEventMessageDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessagePinned extends ChatEventAction {
  /// A message was pinned
  const ChatEventMessagePinned({
    required this.message,
  });

  /// [message] Pinned message
  final Message message;

  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) =>
      ChatEventMessagePinned(
        message: Message.fromJson(json['message'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventMessagePinned copyWith({
    Message? message,
  }) {
    return ChatEventMessagePinned(
      message: message ?? this.message,
    );
  }

  static const CONSTRUCTOR = 'chatEventMessagePinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageUnpinned extends ChatEventAction {
  /// A message was unpinned
  const ChatEventMessageUnpinned({
    required this.message,
  });

  /// [message] Unpinned message
  final Message message;

  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageUnpinned(
        message: Message.fromJson(json['message'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventMessageUnpinned copyWith({
    Message? message,
  }) {
    return ChatEventMessageUnpinned(
      message: message ?? this.message,
    );
  }

  static const CONSTRUCTOR = 'chatEventMessageUnpinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPollStopped extends ChatEventAction {
  /// A poll in a message was stopped
  const ChatEventPollStopped({
    required this.message,
  });

  /// [message] The message with the poll
  final Message message;

  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) =>
      ChatEventPollStopped(
        message: Message.fromJson(json['message'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventPollStopped copyWith({
    Message? message,
  }) {
    return ChatEventPollStopped(
      message: message ?? this.message,
    );
  }

  static const CONSTRUCTOR = 'chatEventPollStopped';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoined extends ChatEventAction {
  /// A new member joined the chat
  const ChatEventMemberJoined();

  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) =>
      const ChatEventMemberJoined();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatEventMemberJoined copyWith() {
    return const ChatEventMemberJoined();
  }

  static const CONSTRUCTOR = 'chatEventMemberJoined';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  /// A new member joined the chat via an invite link
  const ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
    required this.viaChatFolderInviteLink,
  });

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an invite link for a chat folder
  final bool viaChatFolderInviteLink;

  factory ChatEventMemberJoinedByInviteLink.fromJson(
          Map<String, dynamic> json) =>
      ChatEventMemberJoinedByInviteLink(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
        viaChatFolderInviteLink: json['via_chat_folder_invite_link'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
      "via_chat_folder_invite_link": viaChatFolderInviteLink,
    };
  }

  @override
  ChatEventMemberJoinedByInviteLink copyWith({
    ChatInviteLink? inviteLink,
    bool? viaChatFolderInviteLink,
  }) {
    return ChatEventMemberJoinedByInviteLink(
      inviteLink: inviteLink ?? this.inviteLink,
      viaChatFolderInviteLink:
          viaChatFolderInviteLink ?? this.viaChatFolderInviteLink,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberJoinedByInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoinedByRequest extends ChatEventAction {
  /// A new member was accepted to the chat by an administrator
  const ChatEventMemberJoinedByRequest({
    required this.approverUserId,
    this.inviteLink,
  });

  /// [approverUserId] User identifier of the chat administrator, approved user join request
  final int approverUserId;

  /// [inviteLink] Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;

  factory ChatEventMemberJoinedByRequest.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberJoinedByRequest(
        approverUserId: json['approver_user_id'] ?? 0,
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "approver_user_id": approverUserId,
      "invite_link": inviteLink?.toJson(),
    };
  }

  @override
  ChatEventMemberJoinedByRequest copyWith({
    int? approverUserId,
    ChatInviteLink? inviteLink,
  }) {
    return ChatEventMemberJoinedByRequest(
      approverUserId: approverUserId ?? this.approverUserId,
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberJoinedByRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberInvited extends ChatEventAction {
  /// A new chat member was invited
  const ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus status;

  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberInvited(
        userId: json['user_id'] ?? 0,
        status: ChatMemberStatus.fromJson(json['status'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "status": status.toJson(),
    };
  }

  @override
  ChatEventMemberInvited copyWith({
    int? userId,
    ChatMemberStatus? status,
  }) {
    return ChatEventMemberInvited(
      userId: userId ?? this.userId,
      status: status ?? this.status,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberInvited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberLeft extends ChatEventAction {
  /// A member left the chat
  const ChatEventMemberLeft();

  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) =>
      const ChatEventMemberLeft();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatEventMemberLeft copyWith() {
    return const ChatEventMemberLeft();
  }

  static const CONSTRUCTOR = 'chatEventMemberLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberPromoted extends ChatEventAction {
  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
  const ChatEventMemberPromoted({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberPromoted(
        userId: json['user_id'] ?? 0,
        oldStatus: ChatMemberStatus.fromJson(json['old_status'] ?? {}),
        newStatus: ChatMemberStatus.fromJson(json['new_status'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
    };
  }

  @override
  ChatEventMemberPromoted copyWith({
    int? userId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return ChatEventMemberPromoted(
      userId: userId ?? this.userId,
      oldStatus: oldStatus ?? this.oldStatus,
      newStatus: newStatus ?? this.newStatus,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberPromoted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberRestricted extends ChatEventAction {
  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
  const ChatEventMemberRestricted({
    required this.memberId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [memberId] Affected chat member identifier
  final MessageSender memberId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberRestricted(
        memberId: MessageSender.fromJson(json['member_id'] ?? {}),
        oldStatus: ChatMemberStatus.fromJson(json['old_status'] ?? {}),
        newStatus: ChatMemberStatus.fromJson(json['new_status'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_id": memberId.toJson(),
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
    };
  }

  @override
  ChatEventMemberRestricted copyWith({
    MessageSender? memberId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return ChatEventMemberRestricted(
      memberId: memberId ?? this.memberId,
      oldStatus: oldStatus ?? this.oldStatus,
      newStatus: newStatus ?? this.newStatus,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberSubscriptionExtended extends ChatEventAction {
  /// A chat member extended their subscription to the chat
  const ChatEventMemberSubscriptionExtended({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  factory ChatEventMemberSubscriptionExtended.fromJson(
          Map<String, dynamic> json) =>
      ChatEventMemberSubscriptionExtended(
        userId: json['user_id'] ?? 0,
        oldStatus: ChatMemberStatus.fromJson(json['old_status'] ?? {}),
        newStatus: ChatMemberStatus.fromJson(json['new_status'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
    };
  }

  @override
  ChatEventMemberSubscriptionExtended copyWith({
    int? userId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return ChatEventMemberSubscriptionExtended(
      userId: userId ?? this.userId,
      oldStatus: oldStatus ?? this.oldStatus,
      newStatus: newStatus ?? this.newStatus,
    );
  }

  static const CONSTRUCTOR = 'chatEventMemberSubscriptionExtended';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventAvailableReactionsChanged extends ChatEventAction {
  /// The chat available reactions were changed
  const ChatEventAvailableReactionsChanged({
    required this.oldAvailableReactions,
    required this.newAvailableReactions,
  });

  /// [oldAvailableReactions] Previous chat available reactions
  final ChatAvailableReactions oldAvailableReactions;

  /// [newAvailableReactions] New chat available reactions
  final ChatAvailableReactions newAvailableReactions;

  factory ChatEventAvailableReactionsChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventAvailableReactionsChanged(
        oldAvailableReactions: ChatAvailableReactions.fromJson(
            json['old_available_reactions'] ?? {}),
        newAvailableReactions: ChatAvailableReactions.fromJson(
            json['new_available_reactions'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_available_reactions": oldAvailableReactions.toJson(),
      "new_available_reactions": newAvailableReactions.toJson(),
    };
  }

  @override
  ChatEventAvailableReactionsChanged copyWith({
    ChatAvailableReactions? oldAvailableReactions,
    ChatAvailableReactions? newAvailableReactions,
  }) {
    return ChatEventAvailableReactionsChanged(
      oldAvailableReactions:
          oldAvailableReactions ?? this.oldAvailableReactions,
      newAvailableReactions:
          newAvailableReactions ?? this.newAvailableReactions,
    );
  }

  static const CONSTRUCTOR = 'chatEventAvailableReactionsChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventBackgroundChanged extends ChatEventAction {
  /// The chat background was changed
  const ChatEventBackgroundChanged({
    this.oldBackground,
    this.newBackground,
  });

  /// [oldBackground] Previous background; may be null if none
  final ChatBackground? oldBackground;

  /// [newBackground] New background; may be null if none
  final ChatBackground? newBackground;

  factory ChatEventBackgroundChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventBackgroundChanged(
        oldBackground: ChatBackground.fromJson(json['old_background'] ?? {}),
        newBackground: ChatBackground.fromJson(json['new_background'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_background": oldBackground?.toJson(),
      "new_background": newBackground?.toJson(),
    };
  }

  @override
  ChatEventBackgroundChanged copyWith({
    ChatBackground? oldBackground,
    ChatBackground? newBackground,
  }) {
    return ChatEventBackgroundChanged(
      oldBackground: oldBackground ?? this.oldBackground,
      newBackground: newBackground ?? this.newBackground,
    );
  }

  static const CONSTRUCTOR = 'chatEventBackgroundChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventDescriptionChanged extends ChatEventAction {
  /// The chat description was changed
  const ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventDescriptionChanged(
        oldDescription: json['old_description'] ?? '',
        newDescription: json['new_description'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_description": oldDescription,
      "new_description": newDescription,
    };
  }

  @override
  ChatEventDescriptionChanged copyWith({
    String? oldDescription,
    String? newDescription,
  }) {
    return ChatEventDescriptionChanged(
      oldDescription: oldDescription ?? this.oldDescription,
      newDescription: newDescription ?? this.newDescription,
    );
  }

  static const CONSTRUCTOR = 'chatEventDescriptionChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventEmojiStatusChanged extends ChatEventAction {
  /// The chat emoji status was changed
  const ChatEventEmojiStatusChanged({
    this.oldEmojiStatus,
    this.newEmojiStatus,
  });

  /// [oldEmojiStatus] Previous emoji status; may be null if none
  final EmojiStatus? oldEmojiStatus;

  /// [newEmojiStatus] New emoji status; may be null if none
  final EmojiStatus? newEmojiStatus;

  factory ChatEventEmojiStatusChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventEmojiStatusChanged(
        oldEmojiStatus: EmojiStatus.fromJson(json['old_emoji_status'] ?? {}),
        newEmojiStatus: EmojiStatus.fromJson(json['new_emoji_status'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_emoji_status": oldEmojiStatus?.toJson(),
      "new_emoji_status": newEmojiStatus?.toJson(),
    };
  }

  @override
  ChatEventEmojiStatusChanged copyWith({
    EmojiStatus? oldEmojiStatus,
    EmojiStatus? newEmojiStatus,
  }) {
    return ChatEventEmojiStatusChanged(
      oldEmojiStatus: oldEmojiStatus ?? this.oldEmojiStatus,
      newEmojiStatus: newEmojiStatus ?? this.newEmojiStatus,
    );
  }

  static const CONSTRUCTOR = 'chatEventEmojiStatusChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLinkedChatChanged extends ChatEventAction {
  /// The linked chat of a supergroup was changed
  const ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventLinkedChatChanged(
        oldLinkedChatId: json['old_linked_chat_id'] ?? 0,
        newLinkedChatId: json['new_linked_chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_linked_chat_id": oldLinkedChatId,
      "new_linked_chat_id": newLinkedChatId,
    };
  }

  @override
  ChatEventLinkedChatChanged copyWith({
    int? oldLinkedChatId,
    int? newLinkedChatId,
  }) {
    return ChatEventLinkedChatChanged(
      oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
      newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId,
    );
  }

  static const CONSTRUCTOR = 'chatEventLinkedChatChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLocationChanged extends ChatEventAction {
  /// The supergroup location was changed
  const ChatEventLocationChanged({
    this.oldLocation,
    this.newLocation,
  });

  /// [oldLocation] Previous location; may be null
  final ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  final ChatLocation? newLocation;

  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventLocationChanged(
        oldLocation: ChatLocation.fromJson(json['old_location'] ?? {}),
        newLocation: ChatLocation.fromJson(json['new_location'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_location": oldLocation?.toJson(),
      "new_location": newLocation?.toJson(),
    };
  }

  @override
  ChatEventLocationChanged copyWith({
    ChatLocation? oldLocation,
    ChatLocation? newLocation,
  }) {
    return ChatEventLocationChanged(
      oldLocation: oldLocation ?? this.oldLocation,
      newLocation: newLocation ?? this.newLocation,
    );
  }

  static const CONSTRUCTOR = 'chatEventLocationChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  /// The message auto-delete timer was changed
  const ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });

  /// [oldMessageAutoDeleteTime] Previous value of message_auto_delete_time
  final int oldMessageAutoDeleteTime;

  /// [newMessageAutoDeleteTime] New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;

  factory ChatEventMessageAutoDeleteTimeChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventMessageAutoDeleteTimeChanged(
        oldMessageAutoDeleteTime: json['old_message_auto_delete_time'] ?? 0,
        newMessageAutoDeleteTime: json['new_message_auto_delete_time'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_message_auto_delete_time": oldMessageAutoDeleteTime,
      "new_message_auto_delete_time": newMessageAutoDeleteTime,
    };
  }

  @override
  ChatEventMessageAutoDeleteTimeChanged copyWith({
    int? oldMessageAutoDeleteTime,
    int? newMessageAutoDeleteTime,
  }) {
    return ChatEventMessageAutoDeleteTimeChanged(
      oldMessageAutoDeleteTime:
          oldMessageAutoDeleteTime ?? this.oldMessageAutoDeleteTime,
      newMessageAutoDeleteTime:
          newMessageAutoDeleteTime ?? this.newMessageAutoDeleteTime,
    );
  }

  static const CONSTRUCTOR = 'chatEventMessageAutoDeleteTimeChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPermissionsChanged extends ChatEventAction {
  /// The chat permissions were changed
  const ChatEventPermissionsChanged({
    required this.oldPermissions,
    required this.newPermissions,
  });

  /// [oldPermissions] Previous chat permissions
  final ChatPermissions oldPermissions;

  /// [newPermissions] New chat permissions
  final ChatPermissions newPermissions;

  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventPermissionsChanged(
        oldPermissions: ChatPermissions.fromJson(json['old_permissions'] ?? {}),
        newPermissions: ChatPermissions.fromJson(json['new_permissions'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_permissions": oldPermissions.toJson(),
      "new_permissions": newPermissions.toJson(),
    };
  }

  @override
  ChatEventPermissionsChanged copyWith({
    ChatPermissions? oldPermissions,
    ChatPermissions? newPermissions,
  }) {
    return ChatEventPermissionsChanged(
      oldPermissions: oldPermissions ?? this.oldPermissions,
      newPermissions: newPermissions ?? this.newPermissions,
    );
  }

  static const CONSTRUCTOR = 'chatEventPermissionsChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPhotoChanged extends ChatEventAction {
  /// The chat photo was changed
  const ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });

  /// [oldPhoto] Previous chat photo value; may be null
  final ChatPhoto? oldPhoto;

  /// [newPhoto] New chat photo value; may be null
  final ChatPhoto? newPhoto;

  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventPhotoChanged(
        oldPhoto: ChatPhoto.fromJson(json['old_photo'] ?? {}),
        newPhoto: ChatPhoto.fromJson(json['new_photo'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_photo": oldPhoto?.toJson(),
      "new_photo": newPhoto?.toJson(),
    };
  }

  @override
  ChatEventPhotoChanged copyWith({
    ChatPhoto? oldPhoto,
    ChatPhoto? newPhoto,
  }) {
    return ChatEventPhotoChanged(
      oldPhoto: oldPhoto ?? this.oldPhoto,
      newPhoto: newPhoto ?? this.newPhoto,
    );
  }

  static const CONSTRUCTOR = 'chatEventPhotoChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSlowModeDelayChanged extends ChatEventAction {
  /// The slow_mode_delay setting of a supergroup was changed
  const ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });

  /// [oldSlowModeDelay] Previous value of slow_mode_delay, in seconds
  final int oldSlowModeDelay;

  /// [newSlowModeDelay] New value of slow_mode_delay, in seconds
  final int newSlowModeDelay;

  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventSlowModeDelayChanged(
        oldSlowModeDelay: json['old_slow_mode_delay'] ?? 0,
        newSlowModeDelay: json['new_slow_mode_delay'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_slow_mode_delay": oldSlowModeDelay,
      "new_slow_mode_delay": newSlowModeDelay,
    };
  }

  @override
  ChatEventSlowModeDelayChanged copyWith({
    int? oldSlowModeDelay,
    int? newSlowModeDelay,
  }) {
    return ChatEventSlowModeDelayChanged(
      oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
      newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay,
    );
  }

  static const CONSTRUCTOR = 'chatEventSlowModeDelayChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventStickerSetChanged extends ChatEventAction {
  /// The supergroup sticker set was changed
  const ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventStickerSetChanged(
        oldStickerSetId: int.tryParse(json['old_sticker_set_id'] ?? '') ?? 0,
        newStickerSetId: int.tryParse(json['new_sticker_set_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_sticker_set_id": oldStickerSetId,
      "new_sticker_set_id": newStickerSetId,
    };
  }

  @override
  ChatEventStickerSetChanged copyWith({
    int? oldStickerSetId,
    int? newStickerSetId,
  }) {
    return ChatEventStickerSetChanged(
      oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
      newStickerSetId: newStickerSetId ?? this.newStickerSetId,
    );
  }

  static const CONSTRUCTOR = 'chatEventStickerSetChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventCustomEmojiStickerSetChanged extends ChatEventAction {
  /// The supergroup sticker set with allowed custom emoji was changed
  const ChatEventCustomEmojiStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  factory ChatEventCustomEmojiStickerSetChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventCustomEmojiStickerSetChanged(
        oldStickerSetId: int.tryParse(json['old_sticker_set_id'] ?? '') ?? 0,
        newStickerSetId: int.tryParse(json['new_sticker_set_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_sticker_set_id": oldStickerSetId,
      "new_sticker_set_id": newStickerSetId,
    };
  }

  @override
  ChatEventCustomEmojiStickerSetChanged copyWith({
    int? oldStickerSetId,
    int? newStickerSetId,
  }) {
    return ChatEventCustomEmojiStickerSetChanged(
      oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
      newStickerSetId: newStickerSetId ?? this.newStickerSetId,
    );
  }

  static const CONSTRUCTOR = 'chatEventCustomEmojiStickerSetChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventTitleChanged extends ChatEventAction {
  /// The chat title was changed
  const ChatEventTitleChanged({
    required this.oldTitle,
    required this.newTitle,
  });

  /// [oldTitle] Previous chat title
  final String oldTitle;

  /// [newTitle] New chat title
  final String newTitle;

  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventTitleChanged(
        oldTitle: json['old_title'] ?? '',
        newTitle: json['new_title'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_title": oldTitle,
      "new_title": newTitle,
    };
  }

  @override
  ChatEventTitleChanged copyWith({
    String? oldTitle,
    String? newTitle,
  }) {
    return ChatEventTitleChanged(
      oldTitle: oldTitle ?? this.oldTitle,
      newTitle: newTitle ?? this.newTitle,
    );
  }

  static const CONSTRUCTOR = 'chatEventTitleChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventUsernameChanged extends ChatEventAction {
  /// The chat editable username was changed
  const ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });

  /// [oldUsername] Previous chat username
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;

  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventUsernameChanged(
        oldUsername: json['old_username'] ?? '',
        newUsername: json['new_username'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_username": oldUsername,
      "new_username": newUsername,
    };
  }

  @override
  ChatEventUsernameChanged copyWith({
    String? oldUsername,
    String? newUsername,
  }) {
    return ChatEventUsernameChanged(
      oldUsername: oldUsername ?? this.oldUsername,
      newUsername: newUsername ?? this.newUsername,
    );
  }

  static const CONSTRUCTOR = 'chatEventUsernameChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventActiveUsernamesChanged extends ChatEventAction {
  /// The chat active usernames were changed
  const ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });

  /// [oldUsernames] Previous list of active usernames
  final List<String> oldUsernames;

  /// [newUsernames] New list of active usernames
  final List<String> newUsernames;

  factory ChatEventActiveUsernamesChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventActiveUsernamesChanged(
        oldUsernames: json['old_usernames'] == null
            ? <String>[]
            : (json['old_usernames'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
        newUsernames: json['new_usernames'] == null
            ? <String>[]
            : (json['new_usernames'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_usernames": oldUsernames,
      "new_usernames": newUsernames,
    };
  }

  @override
  ChatEventActiveUsernamesChanged copyWith({
    List<String>? oldUsernames,
    List<String>? newUsernames,
  }) {
    return ChatEventActiveUsernamesChanged(
      oldUsernames: oldUsernames ?? this.oldUsernames,
      newUsernames: newUsernames ?? this.newUsernames,
    );
  }

  static const CONSTRUCTOR = 'chatEventActiveUsernamesChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventAccentColorChanged extends ChatEventAction {
  /// The chat accent color or background custom emoji were changed
  const ChatEventAccentColorChanged({
    required this.oldAccentColorId,
    required this.oldBackgroundCustomEmojiId,
    required this.newAccentColorId,
    required this.newBackgroundCustomEmojiId,
  });

  /// [oldAccentColorId] Previous identifier of chat accent color
  final int oldAccentColorId;

  /// [oldBackgroundCustomEmojiId] Previous identifier of the custom emoji; 0 if none
  final int oldBackgroundCustomEmojiId;

  /// [newAccentColorId] New identifier of chat accent color
  final int newAccentColorId;

  /// [newBackgroundCustomEmojiId] New identifier of the custom emoji; 0 if none
  final int newBackgroundCustomEmojiId;

  factory ChatEventAccentColorChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventAccentColorChanged(
        oldAccentColorId: json['old_accent_color_id'] ?? 0,
        oldBackgroundCustomEmojiId:
            int.tryParse(json['old_background_custom_emoji_id'] ?? '') ?? 0,
        newAccentColorId: json['new_accent_color_id'] ?? 0,
        newBackgroundCustomEmojiId:
            int.tryParse(json['new_background_custom_emoji_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_accent_color_id": oldAccentColorId,
      "old_background_custom_emoji_id": oldBackgroundCustomEmojiId,
      "new_accent_color_id": newAccentColorId,
      "new_background_custom_emoji_id": newBackgroundCustomEmojiId,
    };
  }

  @override
  ChatEventAccentColorChanged copyWith({
    int? oldAccentColorId,
    int? oldBackgroundCustomEmojiId,
    int? newAccentColorId,
    int? newBackgroundCustomEmojiId,
  }) {
    return ChatEventAccentColorChanged(
      oldAccentColorId: oldAccentColorId ?? this.oldAccentColorId,
      oldBackgroundCustomEmojiId:
          oldBackgroundCustomEmojiId ?? this.oldBackgroundCustomEmojiId,
      newAccentColorId: newAccentColorId ?? this.newAccentColorId,
      newBackgroundCustomEmojiId:
          newBackgroundCustomEmojiId ?? this.newBackgroundCustomEmojiId,
    );
  }

  static const CONSTRUCTOR = 'chatEventAccentColorChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventProfileAccentColorChanged extends ChatEventAction {
  /// The chat's profile accent color or profile background custom emoji were changed
  const ChatEventProfileAccentColorChanged({
    required this.oldProfileAccentColorId,
    required this.oldProfileBackgroundCustomEmojiId,
    required this.newProfileAccentColorId,
    required this.newProfileBackgroundCustomEmojiId,
  });

  /// [oldProfileAccentColorId] Previous identifier of chat's profile accent color; -1 if none
  final int oldProfileAccentColorId;

  /// [oldProfileBackgroundCustomEmojiId] Previous identifier of the custom emoji; 0 if none
  final int oldProfileBackgroundCustomEmojiId;

  /// [newProfileAccentColorId] New identifier of chat's profile accent color; -1 if none
  final int newProfileAccentColorId;

  /// [newProfileBackgroundCustomEmojiId] New identifier of the custom emoji; 0 if none
  final int newProfileBackgroundCustomEmojiId;

  factory ChatEventProfileAccentColorChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventProfileAccentColorChanged(
        oldProfileAccentColorId: json['old_profile_accent_color_id'] ?? 0,
        oldProfileBackgroundCustomEmojiId: int.tryParse(
                json['old_profile_background_custom_emoji_id'] ?? '') ??
            0,
        newProfileAccentColorId: json['new_profile_accent_color_id'] ?? 0,
        newProfileBackgroundCustomEmojiId: int.tryParse(
                json['new_profile_background_custom_emoji_id'] ?? '') ??
            0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_profile_accent_color_id": oldProfileAccentColorId,
      "old_profile_background_custom_emoji_id":
          oldProfileBackgroundCustomEmojiId,
      "new_profile_accent_color_id": newProfileAccentColorId,
      "new_profile_background_custom_emoji_id":
          newProfileBackgroundCustomEmojiId,
    };
  }

  @override
  ChatEventProfileAccentColorChanged copyWith({
    int? oldProfileAccentColorId,
    int? oldProfileBackgroundCustomEmojiId,
    int? newProfileAccentColorId,
    int? newProfileBackgroundCustomEmojiId,
  }) {
    return ChatEventProfileAccentColorChanged(
      oldProfileAccentColorId:
          oldProfileAccentColorId ?? this.oldProfileAccentColorId,
      oldProfileBackgroundCustomEmojiId: oldProfileBackgroundCustomEmojiId ??
          this.oldProfileBackgroundCustomEmojiId,
      newProfileAccentColorId:
          newProfileAccentColorId ?? this.newProfileAccentColorId,
      newProfileBackgroundCustomEmojiId: newProfileBackgroundCustomEmojiId ??
          this.newProfileBackgroundCustomEmojiId,
    );
  }

  static const CONSTRUCTOR = 'chatEventProfileAccentColorChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventHasProtectedContentToggled extends ChatEventAction {
  /// The has_protected_content setting of a channel was toggled
  const ChatEventHasProtectedContentToggled({
    required this.hasProtectedContent,
  });

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  factory ChatEventHasProtectedContentToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventHasProtectedContentToggled(
        hasProtectedContent: json['has_protected_content'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_protected_content": hasProtectedContent,
    };
  }

  @override
  ChatEventHasProtectedContentToggled copyWith({
    bool? hasProtectedContent,
  }) {
    return ChatEventHasProtectedContentToggled(
      hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
    );
  }

  static const CONSTRUCTOR = 'chatEventHasProtectedContentToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInvitesToggled extends ChatEventAction {
  /// The can_invite_users permission of a supergroup chat was toggled
  const ChatEventInvitesToggled({
    required this.canInviteUsers,
  });

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventInvitesToggled(
        canInviteUsers: json['can_invite_users'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_invite_users": canInviteUsers,
    };
  }

  @override
  ChatEventInvitesToggled copyWith({
    bool? canInviteUsers,
  }) {
    return ChatEventInvitesToggled(
      canInviteUsers: canInviteUsers ?? this.canInviteUsers,
    );
  }

  static const CONSTRUCTOR = 'chatEventInvitesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  /// The is_all_history_available setting of a supergroup was toggled
  const ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  factory ChatEventIsAllHistoryAvailableToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventIsAllHistoryAvailableToggled(
        isAllHistoryAvailable: json['is_all_history_available'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_all_history_available": isAllHistoryAvailable,
    };
  }

  @override
  ChatEventIsAllHistoryAvailableToggled copyWith({
    bool? isAllHistoryAvailable,
  }) {
    return ChatEventIsAllHistoryAvailableToggled(
      isAllHistoryAvailable:
          isAllHistoryAvailable ?? this.isAllHistoryAvailable,
    );
  }

  static const CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventHasAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  /// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
  const ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [hasAggressiveAntiSpamEnabled] New value of has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  factory ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventHasAggressiveAntiSpamEnabledToggled(
        hasAggressiveAntiSpamEnabled:
            json['has_aggressive_anti_spam_enabled'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
    };
  }

  @override
  ChatEventHasAggressiveAntiSpamEnabledToggled copyWith({
    bool? hasAggressiveAntiSpamEnabled,
  }) {
    return ChatEventHasAggressiveAntiSpamEnabledToggled(
      hasAggressiveAntiSpamEnabled:
          hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
    );
  }

  static const CONSTRUCTOR = 'chatEventHasAggressiveAntiSpamEnabledToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSignMessagesToggled extends ChatEventAction {
  /// The sign_messages setting of a channel was toggled
  const ChatEventSignMessagesToggled({
    required this.signMessages,
  });

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventSignMessagesToggled(
        signMessages: json['sign_messages'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sign_messages": signMessages,
    };
  }

  @override
  ChatEventSignMessagesToggled copyWith({
    bool? signMessages,
  }) {
    return ChatEventSignMessagesToggled(
      signMessages: signMessages ?? this.signMessages,
    );
  }

  static const CONSTRUCTOR = 'chatEventSignMessagesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventShowMessageSenderToggled extends ChatEventAction {
  /// The show_message_sender setting of a channel was toggled
  const ChatEventShowMessageSenderToggled({
    required this.showMessageSender,
  });

  /// [showMessageSender] New value of show_message_sender
  final bool showMessageSender;

  factory ChatEventShowMessageSenderToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventShowMessageSenderToggled(
        showMessageSender: json['show_message_sender'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "show_message_sender": showMessageSender,
    };
  }

  @override
  ChatEventShowMessageSenderToggled copyWith({
    bool? showMessageSender,
  }) {
    return ChatEventShowMessageSenderToggled(
      showMessageSender: showMessageSender ?? this.showMessageSender,
    );
  }

  static const CONSTRUCTOR = 'chatEventShowMessageSenderToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventAutomaticTranslationToggled extends ChatEventAction {
  /// The has_automatic_translation setting of a channel was toggled
  const ChatEventAutomaticTranslationToggled({
    required this.hasAutomaticTranslation,
  });

  /// [hasAutomaticTranslation] New value of has_automatic_translation
  final bool hasAutomaticTranslation;

  factory ChatEventAutomaticTranslationToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventAutomaticTranslationToggled(
        hasAutomaticTranslation: json['has_automatic_translation'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_automatic_translation": hasAutomaticTranslation,
    };
  }

  @override
  ChatEventAutomaticTranslationToggled copyWith({
    bool? hasAutomaticTranslation,
  }) {
    return ChatEventAutomaticTranslationToggled(
      hasAutomaticTranslation:
          hasAutomaticTranslation ?? this.hasAutomaticTranslation,
    );
  }

  static const CONSTRUCTOR = 'chatEventAutomaticTranslationToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkEdited extends ChatEventAction {
  /// A chat invite link was edited
  const ChatEventInviteLinkEdited({
    required this.oldInviteLink,
    required this.newInviteLink,
  });

  /// [oldInviteLink] Previous information about the invite link
  final ChatInviteLink oldInviteLink;

  /// [newInviteLink] New information about the invite link
  final ChatInviteLink newInviteLink;

  factory ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkEdited(
        oldInviteLink: ChatInviteLink.fromJson(json['old_invite_link'] ?? {}),
        newInviteLink: ChatInviteLink.fromJson(json['new_invite_link'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_invite_link": oldInviteLink.toJson(),
      "new_invite_link": newInviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkEdited copyWith({
    ChatInviteLink? oldInviteLink,
    ChatInviteLink? newInviteLink,
  }) {
    return ChatEventInviteLinkEdited(
      oldInviteLink: oldInviteLink ?? this.oldInviteLink,
      newInviteLink: newInviteLink ?? this.newInviteLink,
    );
  }

  static const CONSTRUCTOR = 'chatEventInviteLinkEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkRevoked extends ChatEventAction {
  /// A chat invite link was revoked
  const ChatEventInviteLinkRevoked({
    required this.inviteLink,
  });

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  factory ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkRevoked(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkRevoked copyWith({
    ChatInviteLink? inviteLink,
  }) {
    return ChatEventInviteLinkRevoked(
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  static const CONSTRUCTOR = 'chatEventInviteLinkRevoked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkDeleted extends ChatEventAction {
  /// A revoked chat invite link was deleted
  const ChatEventInviteLinkDeleted({
    required this.inviteLink,
  });

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  factory ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkDeleted(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkDeleted copyWith({
    ChatInviteLink? inviteLink,
  }) {
    return ChatEventInviteLinkDeleted(
      inviteLink: inviteLink ?? this.inviteLink,
    );
  }

  static const CONSTRUCTOR = 'chatEventInviteLinkDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatCreated extends ChatEventAction {
  /// A video chat was created
  const ChatEventVideoChatCreated({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  factory ChatEventVideoChatCreated.fromJson(Map<String, dynamic> json) =>
      ChatEventVideoChatCreated(
        groupCallId: json['group_call_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }

  @override
  ChatEventVideoChatCreated copyWith({
    int? groupCallId,
  }) {
    return ChatEventVideoChatCreated(
      groupCallId: groupCallId ?? this.groupCallId,
    );
  }

  static const CONSTRUCTOR = 'chatEventVideoChatCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatEnded extends ChatEventAction {
  /// A video chat was ended
  const ChatEventVideoChatEnded({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  factory ChatEventVideoChatEnded.fromJson(Map<String, dynamic> json) =>
      ChatEventVideoChatEnded(
        groupCallId: json['group_call_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }

  @override
  ChatEventVideoChatEnded copyWith({
    int? groupCallId,
  }) {
    return ChatEventVideoChatEnded(
      groupCallId: groupCallId ?? this.groupCallId,
    );
  }

  static const CONSTRUCTOR = 'chatEventVideoChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatMuteNewParticipantsToggled extends ChatEventAction {
  /// The mute_new_participants setting of a video chat was toggled
  const ChatEventVideoChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  factory ChatEventVideoChatMuteNewParticipantsToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatMuteNewParticipantsToggled(
        muteNewParticipants: json['mute_new_participants'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mute_new_participants": muteNewParticipants,
    };
  }

  @override
  ChatEventVideoChatMuteNewParticipantsToggled copyWith({
    bool? muteNewParticipants,
  }) {
    return ChatEventVideoChatMuteNewParticipantsToggled(
      muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
    );
  }

  static const CONSTRUCTOR = 'chatEventVideoChatMuteNewParticipantsToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  /// A video chat participant was muted or unmuted
  const ChatEventVideoChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  factory ChatEventVideoChatParticipantIsMutedToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatParticipantIsMutedToggled(
        participantId: MessageSender.fromJson(json['participant_id'] ?? {}),
        isMuted: json['is_muted'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "is_muted": isMuted,
    };
  }

  @override
  ChatEventVideoChatParticipantIsMutedToggled copyWith({
    MessageSender? participantId,
    bool? isMuted,
  }) {
    return ChatEventVideoChatParticipantIsMutedToggled(
      participantId: participantId ?? this.participantId,
      isMuted: isMuted ?? this.isMuted,
    );
  }

  static const CONSTRUCTOR = 'chatEventVideoChatParticipantIsMutedToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  /// A video chat participant volume level was changed
  const ChatEventVideoChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  factory ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatParticipantVolumeLevelChanged(
        participantId: MessageSender.fromJson(json['participant_id'] ?? {}),
        volumeLevel: json['volume_level'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "volume_level": volumeLevel,
    };
  }

  @override
  ChatEventVideoChatParticipantVolumeLevelChanged copyWith({
    MessageSender? participantId,
    int? volumeLevel,
  }) {
    return ChatEventVideoChatParticipantVolumeLevelChanged(
      participantId: participantId ?? this.participantId,
      volumeLevel: volumeLevel ?? this.volumeLevel,
    );
  }

  static const CONSTRUCTOR = 'chatEventVideoChatParticipantVolumeLevelChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsForumToggled extends ChatEventAction {
  /// The is_forum setting of a channel was toggled
  const ChatEventIsForumToggled({
    required this.isForum,
  });

  /// [isForum] New value of is_forum
  final bool isForum;

  factory ChatEventIsForumToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventIsForumToggled(
        isForum: json['is_forum'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_forum": isForum,
    };
  }

  @override
  ChatEventIsForumToggled copyWith({
    bool? isForum,
  }) {
    return ChatEventIsForumToggled(
      isForum: isForum ?? this.isForum,
    );
  }

  static const CONSTRUCTOR = 'chatEventIsForumToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicCreated extends ChatEventAction {
  /// A new forum topic was created
  const ChatEventForumTopicCreated({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  factory ChatEventForumTopicCreated.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicCreated(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicCreated copyWith({
    ForumTopicInfo? topicInfo,
  }) {
    return ChatEventForumTopicCreated(
      topicInfo: topicInfo ?? this.topicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicEdited extends ChatEventAction {
  /// A forum topic was edited
  const ChatEventForumTopicEdited({
    required this.oldTopicInfo,
    required this.newTopicInfo,
  });

  /// [oldTopicInfo] Old information about the topic
  final ForumTopicInfo oldTopicInfo;

  /// [newTopicInfo] New information about the topic
  final ForumTopicInfo newTopicInfo;

  factory ChatEventForumTopicEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicEdited(
        oldTopicInfo: ForumTopicInfo.fromJson(json['old_topic_info'] ?? {}),
        newTopicInfo: ForumTopicInfo.fromJson(json['new_topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_topic_info": oldTopicInfo.toJson(),
      "new_topic_info": newTopicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicEdited copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) {
    return ChatEventForumTopicEdited(
      oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
      newTopicInfo: newTopicInfo ?? this.newTopicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  /// A forum topic was closed or reopened
  const ChatEventForumTopicToggleIsClosed({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  factory ChatEventForumTopicToggleIsClosed.fromJson(
          Map<String, dynamic> json) =>
      ChatEventForumTopicToggleIsClosed(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicToggleIsClosed copyWith({
    ForumTopicInfo? topicInfo,
  }) {
    return ChatEventForumTopicToggleIsClosed(
      topicInfo: topicInfo ?? this.topicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicToggleIsClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  /// The General forum topic was hidden or unhidden
  const ChatEventForumTopicToggleIsHidden({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  factory ChatEventForumTopicToggleIsHidden.fromJson(
          Map<String, dynamic> json) =>
      ChatEventForumTopicToggleIsHidden(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicToggleIsHidden copyWith({
    ForumTopicInfo? topicInfo,
  }) {
    return ChatEventForumTopicToggleIsHidden(
      topicInfo: topicInfo ?? this.topicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicToggleIsHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicDeleted extends ChatEventAction {
  /// A forum topic was deleted
  const ChatEventForumTopicDeleted({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  factory ChatEventForumTopicDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicDeleted(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicDeleted copyWith({
    ForumTopicInfo? topicInfo,
  }) {
    return ChatEventForumTopicDeleted(
      topicInfo: topicInfo ?? this.topicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicPinned extends ChatEventAction {
  /// A pinned forum topic was changed
  const ChatEventForumTopicPinned({
    this.oldTopicInfo,
    this.newTopicInfo,
  });

  /// [oldTopicInfo] Information about the old pinned topic; may be null
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;

  factory ChatEventForumTopicPinned.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicPinned(
        oldTopicInfo: ForumTopicInfo.fromJson(json['old_topic_info'] ?? {}),
        newTopicInfo: ForumTopicInfo.fromJson(json['new_topic_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_topic_info": oldTopicInfo?.toJson(),
      "new_topic_info": newTopicInfo?.toJson(),
    };
  }

  @override
  ChatEventForumTopicPinned copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) {
    return ChatEventForumTopicPinned(
      oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
      newTopicInfo: newTopicInfo ?? this.newTopicInfo,
    );
  }

  static const CONSTRUCTOR = 'chatEventForumTopicPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
