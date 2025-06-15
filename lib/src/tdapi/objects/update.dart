import '../tdapi.dart';

class Update extends TdObject {
  /// Contains notifications about data changes
  const Update();

  factory Update.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UpdateAuthorizationState.CONSTRUCTOR:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.CONSTRUCTOR:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.CONSTRUCTOR:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.CONSTRUCTOR:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageIsPinned.CONSTRUCTOR:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.CONSTRUCTOR:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageUnreadReactions.CONSTRUCTOR:
        return UpdateMessageUnreadReactions.fromJson(json);
      case UpdateMessageFactCheck.CONSTRUCTOR:
        return UpdateMessageFactCheck.fromJson(json);
      case UpdateMessageLiveLocationViewed.CONSTRUCTOR:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateVideoPublished.CONSTRUCTOR:
        return UpdateVideoPublished.fromJson(json);
      case UpdateNewChat.CONSTRUCTOR:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.CONSTRUCTOR:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.CONSTRUCTOR:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatAccentColors.CONSTRUCTOR:
        return UpdateChatAccentColors.fromJson(json);
      case UpdateChatPermissions.CONSTRUCTOR:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.CONSTRUCTOR:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatAddedToList.CONSTRUCTOR:
        return UpdateChatAddedToList.fromJson(json);
      case UpdateChatRemovedFromList.CONSTRUCTOR:
        return UpdateChatRemovedFromList.fromJson(json);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatActionBar.CONSTRUCTOR:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatBusinessBotManageBar.CONSTRUCTOR:
        return UpdateChatBusinessBotManageBar.fromJson(json);
      case UpdateChatAvailableReactions.CONSTRUCTOR:
        return UpdateChatAvailableReactions.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatEmojiStatus.CONSTRUCTOR:
        return UpdateChatEmojiStatus.fromJson(json);
      case UpdateChatMessageSender.CONSTRUCTOR:
        return UpdateChatMessageSender.fromJson(json);
      case UpdateChatMessageAutoDeleteTime.CONSTRUCTOR:
        return UpdateChatMessageAutoDeleteTime.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateChatPendingJoinRequests.CONSTRUCTOR:
        return UpdateChatPendingJoinRequests.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatBackground.CONSTRUCTOR:
        return UpdateChatBackground.fromJson(json);
      case UpdateChatTheme.CONSTRUCTOR:
        return UpdateChatTheme.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatUnreadReactionCount.CONSTRUCTOR:
        return UpdateChatUnreadReactionCount.fromJson(json);
      case UpdateChatVideoChat.CONSTRUCTOR:
        return UpdateChatVideoChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatHasProtectedContent.CONSTRUCTOR:
        return UpdateChatHasProtectedContent.fromJson(json);
      case UpdateChatIsTranslatable.CONSTRUCTOR:
        return UpdateChatIsTranslatable.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatViewAsTopics.CONSTRUCTOR:
        return UpdateChatViewAsTopics.fromJson(json);
      case UpdateChatBlockList.CONSTRUCTOR:
        return UpdateChatBlockList.fromJson(json);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatFolders.CONSTRUCTOR:
        return UpdateChatFolders.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateSavedMessagesTopic.CONSTRUCTOR:
        return UpdateSavedMessagesTopic.fromJson(json);
      case UpdateSavedMessagesTopicCount.CONSTRUCTOR:
        return UpdateSavedMessagesTopicCount.fromJson(json);
      case UpdateQuickReplyShortcut.CONSTRUCTOR:
        return UpdateQuickReplyShortcut.fromJson(json);
      case UpdateQuickReplyShortcutDeleted.CONSTRUCTOR:
        return UpdateQuickReplyShortcutDeleted.fromJson(json);
      case UpdateQuickReplyShortcuts.CONSTRUCTOR:
        return UpdateQuickReplyShortcuts.fromJson(json);
      case UpdateQuickReplyShortcutMessages.CONSTRUCTOR:
        return UpdateQuickReplyShortcutMessages.fromJson(json);
      case UpdateForumTopicInfo.CONSTRUCTOR:
        return UpdateForumTopicInfo.fromJson(json);
      case UpdateForumTopic.CONSTRUCTOR:
        return UpdateForumTopic.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateReactionNotificationSettings.CONSTRUCTOR:
        return UpdateReactionNotificationSettings.fromJson(json);
      case UpdateNotification.CONSTRUCTOR:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateChatAction.CONSTRUCTOR:
        return UpdateChatAction.fromJson(json);
      case UpdateUserStatus.CONSTRUCTOR:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.CONSTRUCTOR:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.CONSTRUCTOR:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.CONSTRUCTOR:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.CONSTRUCTOR:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.CONSTRUCTOR:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.CONSTRUCTOR:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateFileDownloads.CONSTRUCTOR:
        return UpdateFileDownloads.fromJson(json);
      case UpdateFileAddedToDownloads.CONSTRUCTOR:
        return UpdateFileAddedToDownloads.fromJson(json);
      case UpdateFileDownload.CONSTRUCTOR:
        return UpdateFileDownload.fromJson(json);
      case UpdateFileRemovedFromDownloads.CONSTRUCTOR:
        return UpdateFileRemovedFromDownloads.fromJson(json);
      case UpdateApplicationVerificationRequired.CONSTRUCTOR:
        return UpdateApplicationVerificationRequired.fromJson(json);
      case UpdateApplicationRecaptchaVerificationRequired.CONSTRUCTOR:
        return UpdateApplicationRecaptchaVerificationRequired.fromJson(json);
      case UpdateCall.CONSTRUCTOR:
        return UpdateCall.fromJson(json);
      case UpdateGroupCall.CONSTRUCTOR:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.CONSTRUCTOR:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateGroupCallParticipants.CONSTRUCTOR:
        return UpdateGroupCallParticipants.fromJson(json);
      case UpdateGroupCallVerificationState.CONSTRUCTOR:
        return UpdateGroupCallVerificationState.fromJson(json);
      case UpdateNewCallSignalingData.CONSTRUCTOR:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateStory.CONSTRUCTOR:
        return UpdateStory.fromJson(json);
      case UpdateStoryDeleted.CONSTRUCTOR:
        return UpdateStoryDeleted.fromJson(json);
      case UpdateStoryPostSucceeded.CONSTRUCTOR:
        return UpdateStoryPostSucceeded.fromJson(json);
      case UpdateStoryPostFailed.CONSTRUCTOR:
        return UpdateStoryPostFailed.fromJson(json);
      case UpdateChatActiveStories.CONSTRUCTOR:
        return UpdateChatActiveStories.fromJson(json);
      case UpdateStoryListChatCount.CONSTRUCTOR:
        return UpdateStoryListChatCount.fromJson(json);
      case UpdateStoryStealthMode.CONSTRUCTOR:
        return UpdateStoryStealthMode.fromJson(json);
      case UpdateOption.CONSTRUCTOR:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.CONSTRUCTOR:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.CONSTRUCTOR:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSavedNotificationSounds.CONSTRUCTOR:
        return UpdateSavedNotificationSounds.fromJson(json);
      case UpdateDefaultBackground.CONSTRUCTOR:
        return UpdateDefaultBackground.fromJson(json);
      case UpdateChatThemes.CONSTRUCTOR:
        return UpdateChatThemes.fromJson(json);
      case UpdateAccentColors.CONSTRUCTOR:
        return UpdateAccentColors.fromJson(json);
      case UpdateProfileAccentColors.CONSTRUCTOR:
        return UpdateProfileAccentColors.fromJson(json);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.CONSTRUCTOR:
        return UpdateConnectionState.fromJson(json);
      case UpdateFreezeState.CONSTRUCTOR:
        return UpdateFreezeState.fromJson(json);
      case UpdateTermsOfService.CONSTRUCTOR:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUnconfirmedSession.CONSTRUCTOR:
        return UpdateUnconfirmedSession.fromJson(json);
      case UpdateAttachmentMenuBots.CONSTRUCTOR:
        return UpdateAttachmentMenuBots.fromJson(json);
      case UpdateWebAppMessageSent.CONSTRUCTOR:
        return UpdateWebAppMessageSent.fromJson(json);
      case UpdateActiveEmojiReactions.CONSTRUCTOR:
        return UpdateActiveEmojiReactions.fromJson(json);
      case UpdateAvailableMessageEffects.CONSTRUCTOR:
        return UpdateAvailableMessageEffects.fromJson(json);
      case UpdateDefaultReactionType.CONSTRUCTOR:
        return UpdateDefaultReactionType.fromJson(json);
      case UpdateDefaultPaidReactionType.CONSTRUCTOR:
        return UpdateDefaultPaidReactionType.fromJson(json);
      case UpdateSavedMessagesTags.CONSTRUCTOR:
        return UpdateSavedMessagesTags.fromJson(json);
      case UpdateActiveLiveLocationMessages.CONSTRUCTOR:
        return UpdateActiveLiveLocationMessages.fromJson(json);
      case UpdateOwnedStarCount.CONSTRUCTOR:
        return UpdateOwnedStarCount.fromJson(json);
      case UpdateChatRevenueAmount.CONSTRUCTOR:
        return UpdateChatRevenueAmount.fromJson(json);
      case UpdateStarRevenueStatus.CONSTRUCTOR:
        return UpdateStarRevenueStatus.fromJson(json);
      case UpdateSpeechRecognitionTrial.CONSTRUCTOR:
        return UpdateSpeechRecognitionTrial.fromJson(json);
      case UpdateDiceEmojis.CONSTRUCTOR:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimatedEmojiMessageClicked.CONSTRUCTOR:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);
      case UpdateAnimationSearchParameters.CONSTRUCTOR:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.CONSTRUCTOR:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateSpeedLimitNotification.CONSTRUCTOR:
        return UpdateSpeedLimitNotification.fromJson(json);
      case UpdateContactCloseBirthdays.CONSTRUCTOR:
        return UpdateContactCloseBirthdays.fromJson(json);
      case UpdateAutosaveSettings.CONSTRUCTOR:
        return UpdateAutosaveSettings.fromJson(json);
      case UpdateBusinessConnection.CONSTRUCTOR:
        return UpdateBusinessConnection.fromJson(json);
      case UpdateNewBusinessMessage.CONSTRUCTOR:
        return UpdateNewBusinessMessage.fromJson(json);
      case UpdateBusinessMessageEdited.CONSTRUCTOR:
        return UpdateBusinessMessageEdited.fromJson(json);
      case UpdateBusinessMessagesDeleted.CONSTRUCTOR:
        return UpdateBusinessMessagesDeleted.fromJson(json);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewBusinessCallbackQuery.CONSTRUCTOR:
        return UpdateNewBusinessCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.CONSTRUCTOR:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.CONSTRUCTOR:
        return UpdatePollAnswer.fromJson(json);
      case UpdateChatMember.CONSTRUCTOR:
        return UpdateChatMember.fromJson(json);
      case UpdateNewChatJoinRequest.CONSTRUCTOR:
        return UpdateNewChatJoinRequest.fromJson(json);
      case UpdateChatBoost.CONSTRUCTOR:
        return UpdateChatBoost.fromJson(json);
      case UpdateMessageReaction.CONSTRUCTOR:
        return UpdateMessageReaction.fromJson(json);
      case UpdateMessageReactions.CONSTRUCTOR:
        return UpdateMessageReactions.fromJson(json);
      case UpdatePaidMediaPurchased.CONSTRUCTOR:
        return UpdatePaidMediaPurchased.fromJson(json);
      default:
        return const Update();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  Update copyWith() {
    return const Update();
  }

  static const CONSTRUCTOR = 'update';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAuthorizationState extends Update {
  /// The user authorization state has changed
  const UpdateAuthorizationState({
    required this.authorizationState,
    this.extra,
    this.clientId,
  });

  /// [authorizationState] New authorization state
  final AuthorizationState authorizationState;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) =>
      UpdateAuthorizationState(
        authorizationState:
            AuthorizationState.fromJson(json['authorization_state'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_state": authorizationState.toJson(),
    };
  }

  @override
  UpdateAuthorizationState copyWith({
    AuthorizationState? authorizationState,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAuthorizationState(
      authorizationState: authorizationState ?? this.authorizationState,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewMessage extends Update {
  /// A new message was received; can also be an outgoing message
  const UpdateNewMessage({
    required this.message,
    this.extra,
    this.clientId,
  });

  /// [message] The new message
  final Message message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) =>
      UpdateNewMessage(
        message: Message.fromJson(json['message'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  UpdateNewMessage copyWith({
    Message? message,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewMessage(
      message: message ?? this.message,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendAcknowledged extends Update {
  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully.. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
  const UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] The chat identifier of the sent message
  final int chatId;

  /// [messageId] A temporary message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendAcknowledged(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  UpdateMessageSendAcknowledged copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageSendAcknowledged(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageSendAcknowledged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendSucceeded extends Update {
  /// A message has been successfully sent
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
    this.extra,
    this.clientId,
  });

  /// [message] The sent message. Almost any field of the new message can be different from the corresponding field of the original message.. For example, the field scheduling_state may change, making the message scheduled, or non-scheduled
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendSucceeded(
        message: Message.fromJson(json['message'] ?? {}),
        oldMessageId: json['old_message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
    };
  }

  @override
  UpdateMessageSendSucceeded copyWith({
    Message? message,
    int? oldMessageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageSendSucceeded(
      message: message ?? this.message,
      oldMessageId: oldMessageId ?? this.oldMessageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageSendSucceeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendFailed extends Update {
  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
  const UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.error,
    this.extra,
    this.clientId,
  });

  /// [message] The failed to send message
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [error] The cause of the message sending failure
  final TdError error;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendFailed(
        message: Message.fromJson(json['message'] ?? {}),
        oldMessageId: json['old_message_id'] ?? 0,
        error: TdError.fromJson(json['error'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "error": error.toJson(),
    };
  }

  @override
  UpdateMessageSendFailed copyWith({
    Message? message,
    int? oldMessageId,
    TdError? error,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageSendFailed(
      message: message ?? this.message,
      oldMessageId: oldMessageId ?? this.oldMessageId,
      error: error ?? this.error,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageSendFailed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContent extends Update {
  /// The message content has changed
  const UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [newContent] New message content
  final MessageContent newContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) =>
      UpdateMessageContent(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        newContent: MessageContent.fromJson(json['new_content'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "new_content": newContent.toJson(),
    };
  }

  @override
  UpdateMessageContent copyWith({
    int? chatId,
    int? messageId,
    MessageContent? newContent,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageContent(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      newContent: newContent ?? this.newContent,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageEdited extends Update {
  /// A message was edited. Changes in the message content will come in a separate updateMessageContent
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) =>
      UpdateMessageEdited(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        editDate: json['edit_date'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "edit_date": editDate,
      "reply_markup": replyMarkup?.toJson(),
    };
  }

  @override
  UpdateMessageEdited copyWith({
    int? chatId,
    int? messageId,
    int? editDate,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageEdited(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      editDate: editDate ?? this.editDate,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageIsPinned extends Update {
  /// The message pinned state was changed
  const UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier
  final int messageId;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) =>
      UpdateMessageIsPinned(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        isPinned: json['is_pinned'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
    };
  }

  @override
  UpdateMessageIsPinned copyWith({
    int? chatId,
    int? messageId,
    bool? isPinned,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageIsPinned(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      isPinned: isPinned ?? this.isPinned,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageInteractionInfo extends Update {
  /// The information about interactions with a message has changed
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [interactionInfo] New information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) =>
      UpdateMessageInteractionInfo(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        interactionInfo:
            MessageInteractionInfo.fromJson(json['interaction_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "interaction_info": interactionInfo?.toJson(),
    };
  }

  @override
  UpdateMessageInteractionInfo copyWith({
    int? chatId,
    int? messageId,
    MessageInteractionInfo? interactionInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageInteractionInfo(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      interactionInfo: interactionInfo ?? this.interactionInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageInteractionInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContentOpened extends Update {
  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) =>
      UpdateMessageContentOpened(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  UpdateMessageContentOpened copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageContentOpened(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageContentOpened';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageMentionRead extends Update {
  /// A message with an unread mention was read
  const UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) =>
      UpdateMessageMentionRead(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        unreadMentionCount: json['unread_mention_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_mention_count": unreadMentionCount,
    };
  }

  @override
  UpdateMessageMentionRead copyWith({
    int? chatId,
    int? messageId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageMentionRead(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageMentionRead';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageUnreadReactions extends Update {
  /// The list of unread reactions added to a message was changed
  const UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadReactions] The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// [unreadReactionCount] The new number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageUnreadReactions.fromJson(Map<String, dynamic> json) =>
      UpdateMessageUnreadReactions(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        unreadReactions: json['unread_reactions'] == null
            ? <UnreadReaction>[]
            : (json['unread_reactions'] as List)
                .map((e) => UnreadReaction.fromJson(e ?? {}))
                .toList(),
        unreadReactionCount: json['unread_reaction_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_reactions": unreadReactions.map((e) => e.toJson()).toList(),
      "unread_reaction_count": unreadReactionCount,
    };
  }

  @override
  UpdateMessageUnreadReactions copyWith({
    int? chatId,
    int? messageId,
    List<UnreadReaction>? unreadReactions,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageUnreadReactions(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      unreadReactions: unreadReactions ?? this.unreadReactions,
      unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageUnreadReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageFactCheck extends Update {
  /// A fact-check added to a message was changed
  const UpdateMessageFactCheck({
    required this.chatId,
    required this.messageId,
    required this.factCheck,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [factCheck] The new fact-check
  final FactCheck factCheck;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageFactCheck.fromJson(Map<String, dynamic> json) =>
      UpdateMessageFactCheck(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        factCheck: FactCheck.fromJson(json['fact_check'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "fact_check": factCheck.toJson(),
    };
  }

  @override
  UpdateMessageFactCheck copyWith({
    int? chatId,
    int? messageId,
    FactCheck? factCheck,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageFactCheck(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      factCheck: factCheck ?? this.factCheck,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageFactCheck';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageLiveLocationViewed extends Update {
  /// A message with a live location was viewed. When the update is received, the application is expected to update the live location
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the chat with the live location message
  final int chatId;

  /// [messageId] Identifier of the message with live location
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) =>
      UpdateMessageLiveLocationViewed(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  UpdateMessageLiveLocationViewed copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageLiveLocationViewed(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageLiveLocationViewed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateVideoPublished extends Update {
  /// An automatically scheduled message with video has been successfully sent after conversion
  const UpdateVideoPublished({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the sent message
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateVideoPublished.fromJson(Map<String, dynamic> json) =>
      UpdateVideoPublished(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  UpdateVideoPublished copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateVideoPublished(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateVideoPublished';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChat extends Update {
  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
  const UpdateNewChat({
    required this.chat,
    this.extra,
    this.clientId,
  });

  /// [chat] The chat
  final Chat chat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewChat.fromJson(Map<String, dynamic> json) => UpdateNewChat(
        chat: Chat.fromJson(json['chat'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat": chat.toJson(),
    };
  }

  @override
  UpdateNewChat copyWith({
    Chat? chat,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewChat(
      chat: chat ?? this.chat,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatTitle extends Update {
  /// The title of a chat was changed
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] The new chat title
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) =>
      UpdateChatTitle(
        chatId: json['chat_id'] ?? 0,
        title: json['title'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
    };
  }

  @override
  UpdateChatTitle copyWith({
    int? chatId,
    String? title,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatTitle(
      chatId: chatId ?? this.chatId,
      title: title ?? this.title,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPhoto extends Update {
  /// A chat photo was changed
  const UpdateChatPhoto({
    required this.chatId,
    this.photo,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] The new chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) =>
      UpdateChatPhoto(
        chatId: json['chat_id'] ?? 0,
        photo: ChatPhotoInfo.fromJson(json['photo'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "photo": photo?.toJson(),
    };
  }

  @override
  UpdateChatPhoto copyWith({
    int? chatId,
    ChatPhotoInfo? photo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatPhoto(
      chatId: chatId ?? this.chatId,
      photo: photo ?? this.photo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatAccentColors extends Update {
  /// Chat accent colors have changed
  const UpdateChatAccentColors({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] The new chat accent color identifier
  final int accentColorId;

  /// [backgroundCustomEmojiId] The new identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] The new chat profile accent color identifier; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] The new identifier of a custom emoji to be shown on the profile background; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateChatAccentColors(
        chatId: json['chat_id'] ?? 0,
        accentColorId: json['accent_color_id'] ?? 0,
        backgroundCustomEmojiId:
            int.tryParse(json['background_custom_emoji_id'] ?? '') ?? 0,
        profileAccentColorId: json['profile_accent_color_id'] ?? 0,
        profileBackgroundCustomEmojiId:
            int.tryParse(json['profile_background_custom_emoji_id'] ?? '') ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
    };
  }

  @override
  UpdateChatAccentColors copyWith({
    int? chatId,
    int? accentColorId,
    int? backgroundCustomEmojiId,
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatAccentColors(
      chatId: chatId ?? this.chatId,
      accentColorId: accentColorId ?? this.accentColorId,
      backgroundCustomEmojiId:
          backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
      profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
      profileBackgroundCustomEmojiId:
          profileBackgroundCustomEmojiId ?? this.profileBackgroundCustomEmojiId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatAccentColors';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPermissions extends Update {
  /// Chat permissions were changed
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions permissions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) =>
      UpdateChatPermissions(
        chatId: json['chat_id'] ?? 0,
        permissions: ChatPermissions.fromJson(json['permissions'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
    };
  }

  @override
  UpdateChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatPermissions(
      chatId: chatId ?? this.chatId,
      permissions: permissions ?? this.permissions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatLastMessage extends Update {
  /// The last message of a chat was changed
  const UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastMessage] The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update
  final Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) =>
      UpdateChatLastMessage(
        chatId: json['chat_id'] ?? 0,
        lastMessage: Message.fromJson(json['last_message'] ?? {}),
        positions: json['positions'] == null
            ? <ChatPosition>[]
            : (json['positions'] as List)
                .map((e) => ChatPosition.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateChatLastMessage copyWith({
    int? chatId,
    Message? lastMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatLastMessage(
      chatId: chatId ?? this.chatId,
      lastMessage: lastMessage ?? this.lastMessage,
      positions: positions ?? this.positions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatLastMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPosition extends Update {
  /// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be removed from the list
  final ChatPosition position;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) =>
      UpdateChatPosition(
        chatId: json['chat_id'] ?? 0,
        position: ChatPosition.fromJson(json['position'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "position": position.toJson(),
    };
  }

  @override
  UpdateChatPosition copyWith({
    int? chatId,
    ChatPosition? position,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatPosition(
      chatId: chatId ?? this.chatId,
      position: position ?? this.position,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatPosition';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatAddedToList extends Update {
  /// A chat was added to a chat list
  const UpdateChatAddedToList({
    required this.chatId,
    required this.chatList,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list to which the chat was added
  final ChatList chatList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatAddedToList.fromJson(Map<String, dynamic> json) =>
      UpdateChatAddedToList(
        chatId: json['chat_id'] ?? 0,
        chatList: ChatList.fromJson(json['chat_list'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "chat_list": chatList.toJson(),
    };
  }

  @override
  UpdateChatAddedToList copyWith({
    int? chatId,
    ChatList? chatList,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatAddedToList(
      chatId: chatId ?? this.chatId,
      chatList: chatList ?? this.chatList,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatAddedToList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatRemovedFromList extends Update {
  /// A chat was removed from a chat list
  const UpdateChatRemovedFromList({
    required this.chatId,
    required this.chatList,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list from which the chat was removed
  final ChatList chatList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatRemovedFromList.fromJson(Map<String, dynamic> json) =>
      UpdateChatRemovedFromList(
        chatId: json['chat_id'] ?? 0,
        chatList: ChatList.fromJson(json['chat_list'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "chat_list": chatList.toJson(),
    };
  }

  @override
  UpdateChatRemovedFromList copyWith({
    int? chatId,
    ChatList? chatList,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatRemovedFromList(
      chatId: chatId ?? this.chatId,
      chatList: chatList ?? this.chatList,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatRemovedFromList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadInbox extends Update {
  /// Incoming messages were read or the number of unread messages has been changed
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) =>
      UpdateChatReadInbox(
        chatId: json['chat_id'] ?? 0,
        lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
        unreadCount: json['unread_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "unread_count": unreadCount,
    };
  }

  @override
  UpdateChatReadInbox copyWith({
    int? chatId,
    int? lastReadInboxMessageId,
    int? unreadCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatReadInbox(
      chatId: chatId ?? this.chatId,
      lastReadInboxMessageId:
          lastReadInboxMessageId ?? this.lastReadInboxMessageId,
      unreadCount: unreadCount ?? this.unreadCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatReadInbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadOutbox extends Update {
  /// Outgoing messages were read
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) =>
      UpdateChatReadOutbox(
        chatId: json['chat_id'] ?? 0,
        lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
    };
  }

  @override
  UpdateChatReadOutbox copyWith({
    int? chatId,
    int? lastReadOutboxMessageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatReadOutbox(
      chatId: chatId ?? this.chatId,
      lastReadOutboxMessageId:
          lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatReadOutbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatActionBar extends Update {
  /// The chat action bar was changed
  const UpdateChatActionBar({
    required this.chatId,
    this.actionBar,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [actionBar] The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) =>
      UpdateChatActionBar(
        chatId: json['chat_id'] ?? 0,
        actionBar: ChatActionBar.fromJson(json['action_bar'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "action_bar": actionBar?.toJson(),
    };
  }

  @override
  UpdateChatActionBar copyWith({
    int? chatId,
    ChatActionBar? actionBar,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatActionBar(
      chatId: chatId ?? this.chatId,
      actionBar: actionBar ?? this.actionBar,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatBusinessBotManageBar extends Update {
  /// The bar for managing business bot was changed in a chat
  const UpdateChatBusinessBotManageBar({
    required this.chatId,
    this.businessBotManageBar,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [businessBotManageBar] The new value of the business bot manage bar; may be null
  final BusinessBotManageBar? businessBotManageBar;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatBusinessBotManageBar.fromJson(Map<String, dynamic> json) =>
      UpdateChatBusinessBotManageBar(
        chatId: json['chat_id'] ?? 0,
        businessBotManageBar: BusinessBotManageBar.fromJson(
            json['business_bot_manage_bar'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "business_bot_manage_bar": businessBotManageBar?.toJson(),
    };
  }

  @override
  UpdateChatBusinessBotManageBar copyWith({
    int? chatId,
    BusinessBotManageBar? businessBotManageBar,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatBusinessBotManageBar(
      chatId: chatId ?? this.chatId,
      businessBotManageBar: businessBotManageBar ?? this.businessBotManageBar,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatBusinessBotManageBar';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatAvailableReactions extends Update {
  /// The chat available reactions were changed
  const UpdateChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [availableReactions] The new reactions, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatAvailableReactions.fromJson(Map<String, dynamic> json) =>
      UpdateChatAvailableReactions(
        chatId: json['chat_id'] ?? 0,
        availableReactions:
            ChatAvailableReactions.fromJson(json['available_reactions'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "available_reactions": availableReactions.toJson(),
    };
  }

  @override
  UpdateChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatAvailableReactions(
      chatId: chatId ?? this.chatId,
      availableReactions: availableReactions ?? this.availableReactions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatAvailableReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDraftMessage extends Update {
  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
  const UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [draftMessage] The new draft message; may be null if none
  final DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) =>
      UpdateChatDraftMessage(
        chatId: json['chat_id'] ?? 0,
        draftMessage: DraftMessage.fromJson(json['draft_message'] ?? {}),
        positions: json['positions'] == null
            ? <ChatPosition>[]
            : (json['positions'] as List)
                .map((e) => ChatPosition.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "draft_message": draftMessage?.toJson(),
      "positions": positions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateChatDraftMessage copyWith({
    int? chatId,
    DraftMessage? draftMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatDraftMessage(
      chatId: chatId ?? this.chatId,
      draftMessage: draftMessage ?? this.draftMessage,
      positions: positions ?? this.positions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatEmojiStatus extends Update {
  /// Chat emoji status has changed
  const UpdateChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] The new chat emoji status; may be null
  final EmojiStatus? emojiStatus;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatEmojiStatus.fromJson(Map<String, dynamic> json) =>
      UpdateChatEmojiStatus(
        chatId: json['chat_id'] ?? 0,
        emojiStatus: EmojiStatus.fromJson(json['emoji_status'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "emoji_status": emojiStatus?.toJson(),
    };
  }

  @override
  UpdateChatEmojiStatus copyWith({
    int? chatId,
    EmojiStatus? emojiStatus,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatEmojiStatus(
      chatId: chatId ?? this.chatId,
      emojiStatus: emojiStatus ?? this.emojiStatus,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatEmojiStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatMessageSender extends Update {
  /// The message sender that is selected to send messages in a chat has changed
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatMessageSender.fromJson(Map<String, dynamic> json) =>
      UpdateChatMessageSender(
        chatId: json['chat_id'] ?? 0,
        messageSenderId:
            MessageSender.fromJson(json['message_sender_id'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_sender_id": messageSenderId?.toJson(),
    };
  }

  @override
  UpdateChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatMessageSender(
      chatId: chatId ?? this.chatId,
      messageSenderId: messageSenderId ?? this.messageSenderId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatMessageSender';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatMessageAutoDeleteTime extends Update {
  /// The message auto-delete or self-destruct timer setting for a chat was changed
  const UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageAutoDeleteTime] New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatMessageAutoDeleteTime.fromJson(Map<String, dynamic> json) =>
      UpdateChatMessageAutoDeleteTime(
        chatId: json['chat_id'] ?? 0,
        messageAutoDeleteTime: json['message_auto_delete_time'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_auto_delete_time": messageAutoDeleteTime,
    };
  }

  @override
  UpdateChatMessageAutoDeleteTime copyWith({
    int? chatId,
    int? messageAutoDeleteTime,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatMessageAutoDeleteTime(
      chatId: chatId ?? this.chatId,
      messageAutoDeleteTime:
          messageAutoDeleteTime ?? this.messageAutoDeleteTime,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatMessageAutoDeleteTime';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatNotificationSettings extends Update {
  /// Notification settings for a chat were changed
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) =>
      UpdateChatNotificationSettings(
        chatId: json['chat_id'] ?? 0,
        notificationSettings: ChatNotificationSettings.fromJson(
            json['notification_settings'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
    };
  }

  @override
  UpdateChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatNotificationSettings(
      chatId: chatId ?? this.chatId,
      notificationSettings: notificationSettings ?? this.notificationSettings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPendingJoinRequests extends Update {
  /// The chat pending join requests were changed
  const UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [pendingJoinRequests] The new data about pending join requests; may be null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatPendingJoinRequests.fromJson(Map<String, dynamic> json) =>
      UpdateChatPendingJoinRequests(
        chatId: json['chat_id'] ?? 0,
        pendingJoinRequests:
            ChatJoinRequestsInfo.fromJson(json['pending_join_requests'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "pending_join_requests": pendingJoinRequests?.toJson(),
    };
  }

  @override
  UpdateChatPendingJoinRequests copyWith({
    int? chatId,
    ChatJoinRequestsInfo? pendingJoinRequests,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatPendingJoinRequests(
      chatId: chatId ?? this.chatId,
      pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatPendingJoinRequests';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReplyMarkup extends Update {
  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
  const UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) =>
      UpdateChatReplyMarkup(
        chatId: json['chat_id'] ?? 0,
        replyMarkupMessageId: json['reply_markup_message_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "reply_markup_message_id": replyMarkupMessageId,
    };
  }

  @override
  UpdateChatReplyMarkup copyWith({
    int? chatId,
    int? replyMarkupMessageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatReplyMarkup(
      chatId: chatId ?? this.chatId,
      replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatBackground extends Update {
  /// The chat background was changed
  const UpdateChatBackground({
    required this.chatId,
    this.background,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The new chat background; may be null if background was reset to default
  final ChatBackground? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatBackground.fromJson(Map<String, dynamic> json) =>
      UpdateChatBackground(
        chatId: json['chat_id'] ?? 0,
        background: ChatBackground.fromJson(json['background'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "background": background?.toJson(),
    };
  }

  @override
  UpdateChatBackground copyWith({
    int? chatId,
    ChatBackground? background,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatBackground(
      chatId: chatId ?? this.chatId,
      background: background ?? this.background,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatTheme extends Update {
  /// The chat theme was changed
  const UpdateChatTheme({
    required this.chatId,
    required this.themeName,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [themeName] The new name of the chat theme; may be empty if theme was reset to default
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatTheme.fromJson(Map<String, dynamic> json) =>
      UpdateChatTheme(
        chatId: json['chat_id'] ?? 0,
        themeName: json['theme_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "theme_name": themeName,
    };
  }

  @override
  UpdateChatTheme copyWith({
    int? chatId,
    String? themeName,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatTheme(
      chatId: chatId ?? this.chatId,
      themeName: themeName ?? this.themeName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatUnreadMentionCount extends Update {
  /// The chat unread_mention_count has changed
  const UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadMentionCount] The number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatUnreadMentionCount(
        chatId: json['chat_id'] ?? 0,
        unreadMentionCount: json['unread_mention_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "unread_mention_count": unreadMentionCount,
    };
  }

  @override
  UpdateChatUnreadMentionCount copyWith({
    int? chatId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatUnreadMentionCount(
      chatId: chatId ?? this.chatId,
      unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatUnreadMentionCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatUnreadReactionCount extends Update {
  /// The chat unread_reaction_count has changed
  const UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadReactionCount] The number of messages with unread reactions left in the chat
  final int unreadReactionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatUnreadReactionCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatUnreadReactionCount(
        chatId: json['chat_id'] ?? 0,
        unreadReactionCount: json['unread_reaction_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "unread_reaction_count": unreadReactionCount,
    };
  }

  @override
  UpdateChatUnreadReactionCount copyWith({
    int? chatId,
    int? unreadReactionCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatUnreadReactionCount(
      chatId: chatId ?? this.chatId,
      unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatUnreadReactionCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatVideoChat extends Update {
  /// A chat video chat state has changed
  const UpdateChatVideoChat({
    required this.chatId,
    required this.videoChat,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [videoChat] New value of video_chat
  final VideoChat videoChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatVideoChat.fromJson(Map<String, dynamic> json) =>
      UpdateChatVideoChat(
        chatId: json['chat_id'] ?? 0,
        videoChat: VideoChat.fromJson(json['video_chat'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "video_chat": videoChat.toJson(),
    };
  }

  @override
  UpdateChatVideoChat copyWith({
    int? chatId,
    VideoChat? videoChat,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatVideoChat(
      chatId: chatId ?? this.chatId,
      videoChat: videoChat ?? this.videoChat,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatVideoChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDefaultDisableNotification extends Update {
  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
  const UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  final bool defaultDisableNotification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatDefaultDisableNotification.fromJson(
          Map<String, dynamic> json) =>
      UpdateChatDefaultDisableNotification(
        chatId: json['chat_id'] ?? 0,
        defaultDisableNotification:
            json['default_disable_notification'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
    };
  }

  @override
  UpdateChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatDefaultDisableNotification(
      chatId: chatId ?? this.chatId,
      defaultDisableNotification:
          defaultDisableNotification ?? this.defaultDisableNotification,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatDefaultDisableNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatHasProtectedContent extends Update {
  /// A chat content was allowed or restricted for saving
  const UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatHasProtectedContent.fromJson(Map<String, dynamic> json) =>
      UpdateChatHasProtectedContent(
        chatId: json['chat_id'] ?? 0,
        hasProtectedContent: json['has_protected_content'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
    };
  }

  @override
  UpdateChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatHasProtectedContent(
      chatId: chatId ?? this.chatId,
      hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatHasProtectedContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsTranslatable extends Update {
  /// Translation of chat messages was enabled or disabled
  const UpdateChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatIsTranslatable.fromJson(Map<String, dynamic> json) =>
      UpdateChatIsTranslatable(
        chatId: json['chat_id'] ?? 0,
        isTranslatable: json['is_translatable'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_translatable": isTranslatable,
    };
  }

  @override
  UpdateChatIsTranslatable copyWith({
    int? chatId,
    bool? isTranslatable,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatIsTranslatable(
      chatId: chatId ?? this.chatId,
      isTranslatable: isTranslatable ?? this.isTranslatable,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatIsTranslatable';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsMarkedAsUnread extends Update {
  /// A chat was marked as unread or was read
  const UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) =>
      UpdateChatIsMarkedAsUnread(
        chatId: json['chat_id'] ?? 0,
        isMarkedAsUnread: json['is_marked_as_unread'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
    };
  }

  @override
  UpdateChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatIsMarkedAsUnread(
      chatId: chatId ?? this.chatId,
      isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatViewAsTopics extends Update {
  /// A chat default appearance has changed
  const UpdateChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatViewAsTopics.fromJson(Map<String, dynamic> json) =>
      UpdateChatViewAsTopics(
        chatId: json['chat_id'] ?? 0,
        viewAsTopics: json['view_as_topics'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "view_as_topics": viewAsTopics,
    };
  }

  @override
  UpdateChatViewAsTopics copyWith({
    int? chatId,
    bool? viewAsTopics,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatViewAsTopics(
      chatId: chatId ?? this.chatId,
      viewAsTopics: viewAsTopics ?? this.viewAsTopics,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatViewAsTopics';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatBlockList extends Update {
  /// A chat was blocked or unblocked
  const UpdateChatBlockList({
    required this.chatId,
    this.blockList,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatBlockList.fromJson(Map<String, dynamic> json) =>
      UpdateChatBlockList(
        chatId: json['chat_id'] ?? 0,
        blockList: BlockList.fromJson(json['block_list'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "block_list": blockList?.toJson(),
    };
  }

  @override
  UpdateChatBlockList copyWith({
    int? chatId,
    BlockList? blockList,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatBlockList(
      chatId: chatId ?? this.chatId,
      blockList: blockList ?? this.blockList,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatBlockList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatHasScheduledMessages extends Update {
  /// A chat's has_scheduled_messages field has changed
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) =>
      UpdateChatHasScheduledMessages(
        chatId: json['chat_id'] ?? 0,
        hasScheduledMessages: json['has_scheduled_messages'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_scheduled_messages": hasScheduledMessages,
    };
  }

  @override
  UpdateChatHasScheduledMessages copyWith({
    int? chatId,
    bool? hasScheduledMessages,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatHasScheduledMessages(
      chatId: chatId ?? this.chatId,
      hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatHasScheduledMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatFolders extends Update {
  /// The list of chat folders or a chat folder has changed
  const UpdateChatFolders({
    required this.chatFolders,
    required this.mainChatListPosition,
    required this.areTagsEnabled,
    this.extra,
    this.clientId,
  });

  /// [chatFolders] The new list of chat folders
  final List<ChatFolderInfo> chatFolders;

  /// [mainChatListPosition] Position of the main chat list among chat folders, 0-based
  final int mainChatListPosition;

  /// [areTagsEnabled] True, if folder tags are enabled
  final bool areTagsEnabled;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatFolders.fromJson(Map<String, dynamic> json) =>
      UpdateChatFolders(
        chatFolders: json['chat_folders'] == null
            ? <ChatFolderInfo>[]
            : (json['chat_folders'] as List)
                .map((e) => ChatFolderInfo.fromJson(e ?? {}))
                .toList(),
        mainChatListPosition: json['main_chat_list_position'] ?? 0,
        areTagsEnabled: json['are_tags_enabled'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folders": chatFolders.map((e) => e.toJson()).toList(),
      "main_chat_list_position": mainChatListPosition,
      "are_tags_enabled": areTagsEnabled,
    };
  }

  @override
  UpdateChatFolders copyWith({
    List<ChatFolderInfo>? chatFolders,
    int? mainChatListPosition,
    bool? areTagsEnabled,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatFolders(
      chatFolders: chatFolders ?? this.chatFolders,
      mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
      areTagsEnabled: areTagsEnabled ?? this.areTagsEnabled,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatFolders';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatOnlineMemberCount extends Update {
  /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.. There is no guarantee that it is sent just after the number of online users has changed
  const UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  final int onlineMemberCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) =>
      UpdateChatOnlineMemberCount(
        chatId: json['chat_id'] ?? 0,
        onlineMemberCount: json['online_member_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "online_member_count": onlineMemberCount,
    };
  }

  @override
  UpdateChatOnlineMemberCount copyWith({
    int? chatId,
    int? onlineMemberCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatOnlineMemberCount(
      chatId: chatId ?? this.chatId,
      onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatOnlineMemberCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedMessagesTopic extends Update {
  /// Basic information about a Saved Messages topic has changed. This update is guaranteed to come before the topic identifier is returned to the application
  const UpdateSavedMessagesTopic({
    required this.topic,
    this.extra,
    this.clientId,
  });

  /// [topic] New data about the topic
  final SavedMessagesTopic topic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSavedMessagesTopic.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTopic(
        topic: SavedMessagesTopic.fromJson(json['topic'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic": topic.toJson(),
    };
  }

  @override
  UpdateSavedMessagesTopic copyWith({
    SavedMessagesTopic? topic,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSavedMessagesTopic(
      topic: topic ?? this.topic,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSavedMessagesTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedMessagesTopicCount extends Update {
  /// Number of Saved Messages topics has changed
  const UpdateSavedMessagesTopicCount({
    required this.topicCount,
    this.extra,
    this.clientId,
  });

  /// [topicCount] Approximate total number of Saved Messages topics
  final int topicCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSavedMessagesTopicCount.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTopicCount(
        topicCount: json['topic_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_count": topicCount,
    };
  }

  @override
  UpdateSavedMessagesTopicCount copyWith({
    int? topicCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSavedMessagesTopicCount(
      topicCount: topicCount ?? this.topicCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSavedMessagesTopicCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateQuickReplyShortcut extends Update {
  /// Basic information about a quick reply shortcut has changed. This update is guaranteed to come before the quick shortcut name is returned to the application
  const UpdateQuickReplyShortcut({
    required this.shortcut,
    this.extra,
    this.clientId,
  });

  /// [shortcut] New data about the shortcut
  final QuickReplyShortcut shortcut;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateQuickReplyShortcut.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcut(
        shortcut: QuickReplyShortcut.fromJson(json['shortcut'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut": shortcut.toJson(),
    };
  }

  @override
  UpdateQuickReplyShortcut copyWith({
    QuickReplyShortcut? shortcut,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateQuickReplyShortcut(
      shortcut: shortcut ?? this.shortcut,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateQuickReplyShortcut';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateQuickReplyShortcutDeleted extends Update {
  /// A quick reply shortcut and all its messages were deleted
  const UpdateQuickReplyShortcutDeleted({
    required this.shortcutId,
    this.extra,
    this.clientId,
  });

  /// [shortcutId] The identifier of the deleted shortcut
  final int shortcutId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateQuickReplyShortcutDeleted.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcutDeleted(
        shortcutId: json['shortcut_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
    };
  }

  @override
  UpdateQuickReplyShortcutDeleted copyWith({
    int? shortcutId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateQuickReplyShortcutDeleted(
      shortcutId: shortcutId ?? this.shortcutId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateQuickReplyShortcutDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateQuickReplyShortcuts extends Update {
  /// The list of quick reply shortcuts has changed
  const UpdateQuickReplyShortcuts({
    required this.shortcutIds,
    this.extra,
    this.clientId,
  });

  /// [shortcutIds] The new list of identifiers of quick reply shortcuts
  final List<int> shortcutIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateQuickReplyShortcuts.fromJson(Map<String, dynamic> json) =>
      UpdateQuickReplyShortcuts(
        shortcutIds: json['shortcut_ids'] == null
            ? <int>[]
            : (json['shortcut_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_ids": shortcutIds,
    };
  }

  @override
  UpdateQuickReplyShortcuts copyWith({
    List<int>? shortcutIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateQuickReplyShortcuts(
      shortcutIds: shortcutIds ?? this.shortcutIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateQuickReplyShortcuts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateQuickReplyShortcutMessages extends Update {
  /// The list of quick reply shortcut messages has changed
  const UpdateQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messages,
    this.extra,
    this.clientId,
  });

  /// [shortcutId] The identifier of the shortcut
  final int shortcutId;

  /// [messages] The new list of quick reply messages for the shortcut in order from the first to the last sent
  final List<QuickReplyMessage> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateQuickReplyShortcutMessages.fromJson(
          Map<String, dynamic> json) =>
      UpdateQuickReplyShortcutMessages(
        shortcutId: json['shortcut_id'] ?? 0,
        messages: json['messages'] == null
            ? <QuickReplyMessage>[]
            : (json['messages'] as List)
                .map((e) => QuickReplyMessage.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "messages": messages.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateQuickReplyShortcutMessages copyWith({
    int? shortcutId,
    List<QuickReplyMessage>? messages,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateQuickReplyShortcutMessages(
      shortcutId: shortcutId ?? this.shortcutId,
      messages: messages ?? this.messages,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateQuickReplyShortcutMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateForumTopicInfo extends Update {
  /// Basic information about a topic in a forum chat was changed
  const UpdateForumTopicInfo({
    required this.info,
    this.extra,
    this.clientId,
  });

  /// [info] New information about the topic
  final ForumTopicInfo info;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateForumTopicInfo.fromJson(Map<String, dynamic> json) =>
      UpdateForumTopicInfo(
        info: ForumTopicInfo.fromJson(json['info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
    };
  }

  @override
  UpdateForumTopicInfo copyWith({
    ForumTopicInfo? info,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateForumTopicInfo(
      info: info ?? this.info,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateForumTopicInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateForumTopic extends Update {
  /// Information about a topic in a forum chat was changed
  const UpdateForumTopic({
    required this.chatId,
    required this.messageThreadId,
    required this.isPinned,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier of the topic
  final int messageThreadId;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [notificationSettings] Notification settings for the topic
  final ChatNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateForumTopic.fromJson(Map<String, dynamic> json) =>
      UpdateForumTopic(
        chatId: json['chat_id'] ?? 0,
        messageThreadId: json['message_thread_id'] ?? 0,
        isPinned: json['is_pinned'] ?? false,
        lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
        lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
        notificationSettings: ChatNotificationSettings.fromJson(
            json['notification_settings'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "is_pinned": isPinned,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "notification_settings": notificationSettings.toJson(),
    };
  }

  @override
  UpdateForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
    bool? isPinned,
    int? lastReadInboxMessageId,
    int? lastReadOutboxMessageId,
    ChatNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateForumTopic(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      isPinned: isPinned ?? this.isPinned,
      lastReadInboxMessageId:
          lastReadInboxMessageId ?? this.lastReadInboxMessageId,
      lastReadOutboxMessageId:
          lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
      notificationSettings: notificationSettings ?? this.notificationSettings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateForumTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateScopeNotificationSettings extends Update {
  /// Notification settings for some type of chats were updated
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// [scope] Types of chats for which notification settings were updated
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings
  final ScopeNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) =>
      UpdateScopeNotificationSettings(
        scope: NotificationSettingsScope.fromJson(json['scope'] ?? {}),
        notificationSettings: ScopeNotificationSettings.fromJson(
            json['notification_settings'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
    };
  }

  @override
  UpdateScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateScopeNotificationSettings(
      scope: scope ?? this.scope,
      notificationSettings: notificationSettings ?? this.notificationSettings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateReactionNotificationSettings extends Update {
  /// Notification settings for reactions were updated
  const UpdateReactionNotificationSettings({
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });

  /// [notificationSettings] The new notification settings
  final ReactionNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateReactionNotificationSettings.fromJson(
          Map<String, dynamic> json) =>
      UpdateReactionNotificationSettings(
        notificationSettings: ReactionNotificationSettings.fromJson(
            json['notification_settings'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_settings": notificationSettings.toJson(),
    };
  }

  @override
  UpdateReactionNotificationSettings copyWith({
    ReactionNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateReactionNotificationSettings(
      notificationSettings: notificationSettings ?? this.notificationSettings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateReactionNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotification extends Update {
  /// A notification was changed
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
    this.extra,
    this.clientId,
  });

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [notification] Changed notification
  final Notification notification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNotification.fromJson(Map<String, dynamic> json) =>
      UpdateNotification(
        notificationGroupId: json['notification_group_id'] ?? 0,
        notification: Notification.fromJson(json['notification'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "notification": notification.toJson(),
    };
  }

  @override
  UpdateNotification copyWith({
    int? notificationGroupId,
    Notification? notification,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNotification(
      notificationGroupId: notificationGroupId ?? this.notificationGroupId,
      notification: notification ?? this.notification,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotificationGroup extends Update {
  /// A list of active notifications in a notification group has changed
  const UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.notificationSoundId,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
    this.extra,
    this.clientId,
  });

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [type] New type of the notification group
  final NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;

  /// [notificationSoundId] Identifier of the notification sound to be played; 0 if sound is disabled
  final int notificationSoundId;

  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by notification identifier
  final List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification identifier
  final List<int> removedNotificationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) =>
      UpdateNotificationGroup(
        notificationGroupId: json['notification_group_id'] ?? 0,
        type: NotificationGroupType.fromJson(json['type'] ?? {}),
        chatId: json['chat_id'] ?? 0,
        notificationSettingsChatId: json['notification_settings_chat_id'] ?? 0,
        notificationSoundId:
            int.tryParse(json['notification_sound_id'] ?? '') ?? 0,
        totalCount: json['total_count'] ?? 0,
        addedNotifications: json['added_notifications'] == null
            ? <Notification>[]
            : (json['added_notifications'] as List)
                .map((e) => Notification.fromJson(e ?? {}))
                .toList(),
        removedNotificationIds: json['removed_notification_ids'] == null
            ? <int>[]
            : (json['removed_notification_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "type": type.toJson(),
      "chat_id": chatId,
      "notification_settings_chat_id": notificationSettingsChatId,
      "notification_sound_id": notificationSoundId,
      "total_count": totalCount,
      "added_notifications": addedNotifications.map((e) => e.toJson()).toList(),
      "removed_notification_ids": removedNotificationIds,
    };
  }

  @override
  UpdateNotificationGroup copyWith({
    int? notificationGroupId,
    NotificationGroupType? type,
    int? chatId,
    int? notificationSettingsChatId,
    int? notificationSoundId,
    int? totalCount,
    List<Notification>? addedNotifications,
    List<int>? removedNotificationIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNotificationGroup(
      notificationGroupId: notificationGroupId ?? this.notificationGroupId,
      type: type ?? this.type,
      chatId: chatId ?? this.chatId,
      notificationSettingsChatId:
          notificationSettingsChatId ?? this.notificationSettingsChatId,
      notificationSoundId: notificationSoundId ?? this.notificationSoundId,
      totalCount: totalCount ?? this.totalCount,
      addedNotifications: addedNotifications ?? this.addedNotifications,
      removedNotificationIds:
          removedNotificationIds ?? this.removedNotificationIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveNotifications extends Update {
  /// Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
  const UpdateActiveNotifications({
    required this.groups,
    this.extra,
    this.clientId,
  });

  /// [groups] Lists of active notification groups
  final List<NotificationGroup> groups;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) =>
      UpdateActiveNotifications(
        groups: json['groups'] == null
            ? <NotificationGroup>[]
            : (json['groups'] as List)
                .map((e) => NotificationGroup.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "groups": groups.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateActiveNotifications copyWith({
    List<NotificationGroup>? groups,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateActiveNotifications(
      groups: groups ?? this.groups,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateActiveNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateHavePendingNotifications extends Update {
  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
  const UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
    this.extra,
    this.clientId,
  });

  /// [haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) =>
      UpdateHavePendingNotifications(
        haveDelayedNotifications: json['have_delayed_notifications'] ?? false,
        haveUnreceivedNotifications:
            json['have_unreceived_notifications'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "have_delayed_notifications": haveDelayedNotifications,
      "have_unreceived_notifications": haveUnreceivedNotifications,
    };
  }

  @override
  UpdateHavePendingNotifications copyWith({
    bool? haveDelayedNotifications,
    bool? haveUnreceivedNotifications,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateHavePendingNotifications(
      haveDelayedNotifications:
          haveDelayedNotifications ?? this.haveDelayedNotifications,
      haveUnreceivedNotifications:
          haveUnreceivedNotifications ?? this.haveUnreceivedNotifications,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateHavePendingNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDeleteMessages extends Update {
  /// Some messages were deleted
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) =>
      UpdateDeleteMessages(
        chatId: json['chat_id'] ?? 0,
        messageIds: json['message_ids'] == null
            ? <int>[]
            : (json['message_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        isPermanent: json['is_permanent'] ?? false,
        fromCache: json['from_cache'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds,
      "is_permanent": isPermanent,
      "from_cache": fromCache,
    };
  }

  @override
  UpdateDeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? isPermanent,
    bool? fromCache,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateDeleteMessages(
      chatId: chatId ?? this.chatId,
      messageIds: messageIds ?? this.messageIds,
      isPermanent: isPermanent ?? this.isPermanent,
      fromCache: fromCache ?? this.fromCache,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateDeleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatAction extends Update {
  /// A message sender activity in the chat has changed
  const UpdateChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.senderId,
    required this.action,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the action was performed
  final int messageThreadId;

  /// [senderId] Identifier of a message sender performing the action
  final MessageSender senderId;

  /// [action] The action
  final ChatAction action;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatAction.fromJson(Map<String, dynamic> json) =>
      UpdateChatAction(
        chatId: json['chat_id'] ?? 0,
        messageThreadId: json['message_thread_id'] ?? 0,
        senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
        action: ChatAction.fromJson(json['action'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "sender_id": senderId.toJson(),
      "action": action.toJson(),
    };
  }

  @override
  UpdateChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    MessageSender? senderId,
    ChatAction? action,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatAction(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      senderId: senderId ?? this.senderId,
      action: action ?? this.action,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserStatus extends Update {
  /// The user went online or offline
  const UpdateUserStatus({
    required this.userId,
    required this.status,
    this.extra,
    this.clientId,
  });

  /// [userId] User identifier
  final int userId;

  /// [status] New status of the user
  final UserStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) =>
      UpdateUserStatus(
        userId: json['user_id'] ?? 0,
        status: UserStatus.fromJson(json['status'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
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
  UpdateUserStatus copyWith({
    int? userId,
    UserStatus? status,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUserStatus(
      userId: userId ?? this.userId,
      status: status ?? this.status,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUserStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUser extends Update {
  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
  const UpdateUser({
    required this.user,
    this.extra,
    this.clientId,
  });

  /// [user] New data about the user
  final User user;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
        user: User.fromJson(json['user'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user": user.toJson(),
    };
  }

  @override
  UpdateUser copyWith({
    User? user,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUser(
      user: user ?? this.user,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroup extends Update {
  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
  const UpdateBasicGroup({
    required this.basicGroup,
    this.extra,
    this.clientId,
  });

  /// [basicGroup] New data about the group
  final BasicGroup basicGroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) =>
      UpdateBasicGroup(
        basicGroup: BasicGroup.fromJson(json['basic_group'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group": basicGroup.toJson(),
    };
  }

  @override
  UpdateBasicGroup copyWith({
    BasicGroup? basicGroup,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateBasicGroup(
      basicGroup: basicGroup ?? this.basicGroup,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroup extends Update {
  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
  const UpdateSupergroup({
    required this.supergroup,
    this.extra,
    this.clientId,
  });

  /// [supergroup] New data about the supergroup
  final Supergroup supergroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) =>
      UpdateSupergroup(
        supergroup: Supergroup.fromJson(json['supergroup'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup": supergroup.toJson(),
    };
  }

  @override
  UpdateSupergroup copyWith({
    Supergroup? supergroup,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSupergroup(
      supergroup: supergroup ?? this.supergroup,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSecretChat extends Update {
  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
  const UpdateSecretChat({
    required this.secretChat,
    this.extra,
    this.clientId,
  });

  /// [secretChat] New data about the secret chat
  final SecretChat secretChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) =>
      UpdateSecretChat(
        secretChat: SecretChat.fromJson(json['secret_chat'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat": secretChat.toJson(),
    };
  }

  @override
  UpdateSecretChat copyWith({
    SecretChat? secretChat,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSecretChat(
      secretChat: secretChat ?? this.secretChat,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserFullInfo extends Update {
  /// Some data in userFullInfo has been changed
  const UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
    this.extra,
    this.clientId,
  });

  /// [userId] User identifier
  final int userId;

  /// [userFullInfo] New full information about the user
  final UserFullInfo userFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateUserFullInfo(
        userId: json['user_id'] ?? 0,
        userFullInfo: UserFullInfo.fromJson(json['user_full_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "user_full_info": userFullInfo.toJson(),
    };
  }

  @override
  UpdateUserFullInfo copyWith({
    int? userId,
    UserFullInfo? userFullInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUserFullInfo(
      userId: userId ?? this.userId,
      userFullInfo: userFullInfo ?? this.userFullInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroupFullInfo extends Update {
  /// Some data in basicGroupFullInfo has been changed
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
    this.extra,
    this.clientId,
  });

  /// [basicGroupId] Identifier of a basic group
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateBasicGroupFullInfo(
        basicGroupId: json['basic_group_id'] ?? 0,
        basicGroupFullInfo:
            BasicGroupFullInfo.fromJson(json['basic_group_full_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "basic_group_full_info": basicGroupFullInfo.toJson(),
    };
  }

  @override
  UpdateBasicGroupFullInfo copyWith({
    int? basicGroupId,
    BasicGroupFullInfo? basicGroupFullInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateBasicGroupFullInfo(
      basicGroupId: basicGroupId ?? this.basicGroupId,
      basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroupFullInfo extends Update {
  /// Some data in supergroupFullInfo has been changed
  const UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
    this.extra,
    this.clientId,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) =>
      UpdateSupergroupFullInfo(
        supergroupId: json['supergroup_id'] ?? 0,
        supergroupFullInfo:
            SupergroupFullInfo.fromJson(json['supergroup_full_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "supergroup_full_info": supergroupFullInfo.toJson(),
    };
  }

  @override
  UpdateSupergroupFullInfo copyWith({
    int? supergroupId,
    SupergroupFullInfo? supergroupFullInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSupergroupFullInfo(
      supergroupId: supergroupId ?? this.supergroupId,
      supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateServiceNotification extends Update {
  /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
  const UpdateServiceNotification({
    required this.type,
    required this.content,
    this.extra,
    this.clientId,
  });

  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// [content] Notification content
  final MessageContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) =>
      UpdateServiceNotification(
        type: json['type'] ?? '',
        content: MessageContent.fromJson(json['content'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "content": content.toJson(),
    };
  }

  @override
  UpdateServiceNotification copyWith({
    String? type,
    MessageContent? content,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateServiceNotification(
      type: type ?? this.type,
      content: content ?? this.content,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateServiceNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFile extends Update {
  /// Information about a file was updated
  const UpdateFile({
    required this.file,
    this.extra,
    this.clientId,
  });

  /// [file] New data about the file
  final File file;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFile.fromJson(Map<String, dynamic> json) => UpdateFile(
        file: File.fromJson(json['file'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file": file.toJson(),
    };
  }

  @override
  UpdateFile copyWith({
    File? file,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFile(
      file: file ?? this.file,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStart extends Update {
  /// The file generation process needs to be started by the application. Use setFileGenerationProgress and finishFileGeneration to generate the file
  const UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
    this.extra,
    this.clientId,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [originalPath] The original path specified by the application in inputFileGenerated
  final String originalPath;

  /// [destinationPath] The path to a file that must be created and where the new file must be generated by the application.. If the application has no access to the path, it can use writeGeneratedFilePart to generate the file
  final String destinationPath;

  /// [conversion] If the conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file that must be downloaded by the application.. Otherwise, this is the conversion specified by the application in inputFileGenerated
  final String conversion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) =>
      UpdateFileGenerationStart(
        generationId: int.tryParse(json['generation_id'] ?? '') ?? 0,
        originalPath: json['original_path'] ?? '',
        destinationPath: json['destination_path'] ?? '',
        conversion: json['conversion'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
      "original_path": originalPath,
      "destination_path": destinationPath,
      "conversion": conversion,
    };
  }

  @override
  UpdateFileGenerationStart copyWith({
    int? generationId,
    String? originalPath,
    String? destinationPath,
    String? conversion,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileGenerationStart(
      generationId: generationId ?? this.generationId,
      originalPath: originalPath ?? this.originalPath,
      destinationPath: destinationPath ?? this.destinationPath,
      conversion: conversion ?? this.conversion,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileGenerationStart';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStop extends Update {
  /// File generation is no longer needed
  const UpdateFileGenerationStop({
    required this.generationId,
    this.extra,
    this.clientId,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) =>
      UpdateFileGenerationStop(
        generationId: int.tryParse(json['generation_id'] ?? '') ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
    };
  }

  @override
  UpdateFileGenerationStop copyWith({
    int? generationId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileGenerationStop(
      generationId: generationId ?? this.generationId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileGenerationStop';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileDownloads extends Update {
  /// The state of the file download list has changed
  const UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
    this.extra,
    this.clientId,
  });

  /// [totalSize] Total size of files in the file download list, in bytes
  final int totalSize;

  /// [totalCount] Total number of files in the file download list
  final int totalCount;

  /// [downloadedSize] Total downloaded size of files in the file download list, in bytes
  final int downloadedSize;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileDownloads(
        totalSize: json['total_size'] ?? 0,
        totalCount: json['total_count'] ?? 0,
        downloadedSize: json['downloaded_size'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_size": totalSize,
      "total_count": totalCount,
      "downloaded_size": downloadedSize,
    };
  }

  @override
  UpdateFileDownloads copyWith({
    int? totalSize,
    int? totalCount,
    int? downloadedSize,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileDownloads(
      totalSize: totalSize ?? this.totalSize,
      totalCount: totalCount ?? this.totalCount,
      downloadedSize: downloadedSize ?? this.downloadedSize,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileAddedToDownloads extends Update {
  /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
  const UpdateFileAddedToDownloads({
    required this.fileDownload,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// [fileDownload] The added file download
  final FileDownload fileDownload;

  /// [counts] New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileAddedToDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileAddedToDownloads(
        fileDownload: FileDownload.fromJson(json['file_download'] ?? {}),
        counts: DownloadedFileCounts.fromJson(json['counts'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_download": fileDownload.toJson(),
      "counts": counts.toJson(),
    };
  }

  @override
  UpdateFileAddedToDownloads copyWith({
    FileDownload? fileDownload,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileAddedToDownloads(
      fileDownload: fileDownload ?? this.fileDownload,
      counts: counts ?? this.counts,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileAddedToDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileDownload extends Update {
  /// A file download was changed. This update is sent only after file download list is loaded for the first time
  const UpdateFileDownload({
    required this.fileId,
    required this.completeDate,
    required this.isPaused,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [completeDate] Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// [isPaused] True, if downloading of the file is paused
  final bool isPaused;

  /// [counts] New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileDownload.fromJson(Map<String, dynamic> json) =>
      UpdateFileDownload(
        fileId: json['file_id'] ?? 0,
        completeDate: json['complete_date'] ?? 0,
        isPaused: json['is_paused'] ?? false,
        counts: DownloadedFileCounts.fromJson(json['counts'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "complete_date": completeDate,
      "is_paused": isPaused,
      "counts": counts.toJson(),
    };
  }

  @override
  UpdateFileDownload copyWith({
    int? fileId,
    int? completeDate,
    bool? isPaused,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileDownload(
      fileId: fileId ?? this.fileId,
      completeDate: completeDate ?? this.completeDate,
      isPaused: isPaused ?? this.isPaused,
      counts: counts ?? this.counts,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileDownload';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileRemovedFromDownloads extends Update {
  /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
  const UpdateFileRemovedFromDownloads({
    required this.fileId,
    required this.counts,
    this.extra,
    this.clientId,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [counts] New number of being downloaded and recently downloaded files found
  final DownloadedFileCounts counts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFileRemovedFromDownloads.fromJson(Map<String, dynamic> json) =>
      UpdateFileRemovedFromDownloads(
        fileId: json['file_id'] ?? 0,
        counts: DownloadedFileCounts.fromJson(json['counts'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "counts": counts.toJson(),
    };
  }

  @override
  UpdateFileRemovedFromDownloads copyWith({
    int? fileId,
    DownloadedFileCounts? counts,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFileRemovedFromDownloads(
      fileId: fileId ?? this.fileId,
      counts: counts ?? this.counts,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFileRemovedFromDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateApplicationVerificationRequired extends Update {
  /// A request can't be completed unless application verification is performed; for official mobile applications only.. The method setApplicationVerificationToken must be called once the verification is completed or failed
  const UpdateApplicationVerificationRequired({
    required this.verificationId,
    required this.nonce,
    required this.cloudProjectNumber,
    this.extra,
    this.clientId,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [nonce] Unique base64url-encoded nonce for the classic Play Integrity verification (https://developer.android.com/google/play/integrity/classic) for Android,. or a unique string to compare with verify_nonce field from a push notification for iOS
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity API on Android
  final int cloudProjectNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateApplicationVerificationRequired.fromJson(
          Map<String, dynamic> json) =>
      UpdateApplicationVerificationRequired(
        verificationId: json['verification_id'] ?? 0,
        nonce: json['nonce'] ?? '',
        cloudProjectNumber:
            int.tryParse(json['cloud_project_number'] ?? '') ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "verification_id": verificationId,
      "nonce": nonce,
      "cloud_project_number": cloudProjectNumber,
    };
  }

  @override
  UpdateApplicationVerificationRequired copyWith({
    int? verificationId,
    String? nonce,
    int? cloudProjectNumber,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateApplicationVerificationRequired(
      verificationId: verificationId ?? this.verificationId,
      nonce: nonce ?? this.nonce,
      cloudProjectNumber: cloudProjectNumber ?? this.cloudProjectNumber,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateApplicationVerificationRequired';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateApplicationRecaptchaVerificationRequired extends Update {
  /// A request can't be completed unless reCAPTCHA verification is performed; for official mobile applications only.. The method setApplicationVerificationToken must be called once the verification is completed or failed
  const UpdateApplicationRecaptchaVerificationRequired({
    required this.verificationId,
    required this.action,
    required this.recaptchaKeyId,
    this.extra,
    this.clientId,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [action] The action for the check
  final String action;

  /// [recaptchaKeyId] Identifier of the reCAPTCHA key
  final String recaptchaKeyId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateApplicationRecaptchaVerificationRequired.fromJson(
          Map<String, dynamic> json) =>
      UpdateApplicationRecaptchaVerificationRequired(
        verificationId: json['verification_id'] ?? 0,
        action: json['action'] ?? '',
        recaptchaKeyId: json['recaptcha_key_id'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "verification_id": verificationId,
      "action": action,
      "recaptcha_key_id": recaptchaKeyId,
    };
  }

  @override
  UpdateApplicationRecaptchaVerificationRequired copyWith({
    int? verificationId,
    String? action,
    String? recaptchaKeyId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateApplicationRecaptchaVerificationRequired(
      verificationId: verificationId ?? this.verificationId,
      action: action ?? this.action,
      recaptchaKeyId: recaptchaKeyId ?? this.recaptchaKeyId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateApplicationRecaptchaVerificationRequired';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateCall extends Update {
  /// New call was created or information about a call was updated
  const UpdateCall({
    required this.call,
    this.extra,
    this.clientId,
  });

  /// [call] New data about a call
  final Call call;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
        call: Call.fromJson(json['call'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call": call.toJson(),
    };
  }

  @override
  UpdateCall copyWith({
    Call? call,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateCall(
      call: call ?? this.call,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCall extends Update {
  /// Information about a group call was updated
  const UpdateGroupCall({
    required this.groupCall,
    this.extra,
    this.clientId,
  });

  /// [groupCall] New data about the group call
  final GroupCall groupCall;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) =>
      UpdateGroupCall(
        groupCall: GroupCall.fromJson(json['group_call'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call": groupCall.toJson(),
    };
  }

  @override
  UpdateGroupCall copyWith({
    GroupCall? groupCall,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateGroupCall(
      groupCall: groupCall ?? this.groupCall,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCallParticipant extends Update {
  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
  const UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
    this.extra,
    this.clientId,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [participant] New data about the participant
  final GroupCallParticipant participant;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) =>
      UpdateGroupCallParticipant(
        groupCallId: json['group_call_id'] ?? 0,
        participant: GroupCallParticipant.fromJson(json['participant'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant": participant.toJson(),
    };
  }

  @override
  UpdateGroupCallParticipant copyWith({
    int? groupCallId,
    GroupCallParticipant? participant,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateGroupCallParticipant(
      groupCallId: groupCallId ?? this.groupCallId,
      participant: participant ?? this.participant,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateGroupCallParticipant';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCallParticipants extends Update {
  /// The list of group call participants that can send and receive encrypted call data has changed; for group calls not bound to a chat only
  const UpdateGroupCallParticipants({
    required this.groupCallId,
    required this.participantUserIds,
    this.extra,
    this.clientId,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [participantUserIds] New list of group call participant user identifiers. The identifiers may be invalid or the corresponding users may be unknown.. The participants must be shown in the list of group call participants even there is no information about them
  final List<int> participantUserIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateGroupCallParticipants.fromJson(Map<String, dynamic> json) =>
      UpdateGroupCallParticipants(
        groupCallId: json['group_call_id'] ?? 0,
        participantUserIds: json['participant_user_ids'] == null
            ? <int>[]
            : (json['participant_user_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_user_ids": participantUserIds.map((e) => '$e').toList(),
    };
  }

  @override
  UpdateGroupCallParticipants copyWith({
    int? groupCallId,
    List<int>? participantUserIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateGroupCallParticipants(
      groupCallId: groupCallId ?? this.groupCallId,
      participantUserIds: participantUserIds ?? this.participantUserIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateGroupCallVerificationState extends Update {
  /// The verification state of an encrypted group call has changed; for group calls not bound to a chat only
  const UpdateGroupCallVerificationState({
    required this.groupCallId,
    required this.generation,
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [generation] The call state generation to which the emoji corresponds. If generation is different for two users, then their emoji may be also different
  final int generation;

  /// [emojis] Group call state fingerprint represented as 4 emoji; may be empty if the state isn't verified yet
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateGroupCallVerificationState.fromJson(
          Map<String, dynamic> json) =>
      UpdateGroupCallVerificationState(
        groupCallId: json['group_call_id'] ?? 0,
        generation: json['generation'] ?? 0,
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "generation": generation,
      "emojis": emojis,
    };
  }

  @override
  UpdateGroupCallVerificationState copyWith({
    int? groupCallId,
    int? generation,
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateGroupCallVerificationState(
      groupCallId: groupCallId ?? this.groupCallId,
      generation: generation ?? this.generation,
      emojis: emojis ?? this.emojis,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateGroupCallVerificationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallSignalingData extends Update {
  /// New call signaling data arrived
  const UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
    this.extra,
    this.clientId,
  });

  /// [callId] The call identifier
  final int callId;

  /// [data] The data
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) =>
      UpdateNewCallSignalingData(
        callId: json['call_id'] ?? 0,
        data: json['data'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "data": data,
    };
  }

  @override
  UpdateNewCallSignalingData copyWith({
    int? callId,
    String? data,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewCallSignalingData(
      callId: callId ?? this.callId,
      data: data ?? this.data,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserPrivacySettingRules extends Update {
  /// Some privacy setting rules have been changed
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
    this.extra,
    this.clientId,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) =>
      UpdateUserPrivacySettingRules(
        setting: UserPrivacySetting.fromJson(json['setting'] ?? {}),
        rules: UserPrivacySettingRules.fromJson(json['rules'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
    };
  }

  @override
  UpdateUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUserPrivacySettingRules(
      setting: setting ?? this.setting,
      rules: rules ?? this.rules,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadMessageCount extends Update {
  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
  const UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    this.extra,
    this.clientId,
  });

  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [unreadCount] Total number of unread messages
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) =>
      UpdateUnreadMessageCount(
        chatList: ChatList.fromJson(json['chat_list'] ?? {}),
        unreadCount: json['unread_count'] ?? 0,
        unreadUnmutedCount: json['unread_unmuted_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
    };
  }

  @override
  UpdateUnreadMessageCount copyWith({
    ChatList? chatList,
    int? unreadCount,
    int? unreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUnreadMessageCount(
      chatList: chatList ?? this.chatList,
      unreadCount: unreadCount ?? this.unreadCount,
      unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUnreadMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadChatCount extends Update {
  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
  const UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
    this.extra,
    this.clientId,
  });

  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [totalCount] Approximate total number of chats in the chat list
  final int totalCount;

  /// [unreadCount] Total number of unread chats
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  final int markedAsUnreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) =>
      UpdateUnreadChatCount(
        chatList: ChatList.fromJson(json['chat_list'] ?? {}),
        totalCount: json['total_count'] ?? 0,
        unreadCount: json['unread_count'] ?? 0,
        unreadUnmutedCount: json['unread_unmuted_count'] ?? 0,
        markedAsUnreadCount: json['marked_as_unread_count'] ?? 0,
        markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "total_count": totalCount,
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
      "marked_as_unread_count": markedAsUnreadCount,
      "marked_as_unread_unmuted_count": markedAsUnreadUnmutedCount,
    };
  }

  @override
  UpdateUnreadChatCount copyWith({
    ChatList? chatList,
    int? totalCount,
    int? unreadCount,
    int? unreadUnmutedCount,
    int? markedAsUnreadCount,
    int? markedAsUnreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUnreadChatCount(
      chatList: chatList ?? this.chatList,
      totalCount: totalCount ?? this.totalCount,
      unreadCount: unreadCount ?? this.unreadCount,
      unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
      markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
      markedAsUnreadUnmutedCount:
          markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUnreadChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStory extends Update {
  /// A story was changed
  const UpdateStory({
    required this.story,
    this.extra,
    this.clientId,
  });

  /// [story] The new information about the story
  final Story story;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStory.fromJson(Map<String, dynamic> json) => UpdateStory(
        story: Story.fromJson(json['story'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story": story.toJson(),
    };
  }

  @override
  UpdateStory copyWith({
    Story? story,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStory(
      story: story ?? this.story,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStoryDeleted extends Update {
  /// A story became inaccessible
  const UpdateStoryDeleted({
    required this.storyPosterChatId,
    required this.storyId,
    this.extra,
    this.clientId,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStoryDeleted.fromJson(Map<String, dynamic> json) =>
      UpdateStoryDeleted(
        storyPosterChatId: json['story_poster_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
    };
  }

  @override
  UpdateStoryDeleted copyWith({
    int? storyPosterChatId,
    int? storyId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStoryDeleted(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStoryDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStoryPostSucceeded extends Update {
  /// A story has been successfully posted
  const UpdateStoryPostSucceeded({
    required this.story,
    required this.oldStoryId,
    this.extra,
    this.clientId,
  });

  /// [story] The posted story
  final Story story;

  /// [oldStoryId] The previous temporary story identifier
  final int oldStoryId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStoryPostSucceeded.fromJson(Map<String, dynamic> json) =>
      UpdateStoryPostSucceeded(
        story: Story.fromJson(json['story'] ?? {}),
        oldStoryId: json['old_story_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story": story.toJson(),
      "old_story_id": oldStoryId,
    };
  }

  @override
  UpdateStoryPostSucceeded copyWith({
    Story? story,
    int? oldStoryId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStoryPostSucceeded(
      story: story ?? this.story,
      oldStoryId: oldStoryId ?? this.oldStoryId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStoryPostSucceeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStoryPostFailed extends Update {
  /// A story failed to post. If the story posting is canceled, then updateStoryDeleted will be received instead of this update
  const UpdateStoryPostFailed({
    required this.story,
    required this.error,
    this.errorType,
    this.extra,
    this.clientId,
  });

  /// [story] The failed to post story
  final Story story;

  /// [error] The cause of the story posting failure
  final TdError error;

  /// [errorType] Type of the error; may be null if unknown
  final CanPostStoryResult? errorType;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStoryPostFailed.fromJson(Map<String, dynamic> json) =>
      UpdateStoryPostFailed(
        story: Story.fromJson(json['story'] ?? {}),
        error: TdError.fromJson(json['error'] ?? {}),
        errorType: CanPostStoryResult.fromJson(json['error_type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story": story.toJson(),
      "error": error.toJson(),
      "error_type": errorType?.toJson(),
    };
  }

  @override
  UpdateStoryPostFailed copyWith({
    Story? story,
    TdError? error,
    CanPostStoryResult? errorType,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStoryPostFailed(
      story: story ?? this.story,
      error: error ?? this.error,
      errorType: errorType ?? this.errorType,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStoryPostFailed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatActiveStories extends Update {
  /// The list of active stories posted by a specific chat has changed
  const UpdateChatActiveStories({
    required this.activeStories,
    this.extra,
    this.clientId,
  });

  /// [activeStories] The new list of active stories
  final ChatActiveStories activeStories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatActiveStories.fromJson(Map<String, dynamic> json) =>
      UpdateChatActiveStories(
        activeStories: ChatActiveStories.fromJson(json['active_stories'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "active_stories": activeStories.toJson(),
    };
  }

  @override
  UpdateChatActiveStories copyWith({
    ChatActiveStories? activeStories,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatActiveStories(
      activeStories: activeStories ?? this.activeStories,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatActiveStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStoryListChatCount extends Update {
  /// Number of chats in a story list has changed
  const UpdateStoryListChatCount({
    required this.storyList,
    required this.chatCount,
    this.extra,
    this.clientId,
  });

  /// [storyList] The story list
  final StoryList storyList;

  /// [chatCount] Approximate total number of chats with active stories in the list
  final int chatCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStoryListChatCount.fromJson(Map<String, dynamic> json) =>
      UpdateStoryListChatCount(
        storyList: StoryList.fromJson(json['story_list'] ?? {}),
        chatCount: json['chat_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_list": storyList.toJson(),
      "chat_count": chatCount,
    };
  }

  @override
  UpdateStoryListChatCount copyWith({
    StoryList? storyList,
    int? chatCount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStoryListChatCount(
      storyList: storyList ?? this.storyList,
      chatCount: chatCount ?? this.chatCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStoryListChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStoryStealthMode extends Update {
  /// Story stealth mode settings have changed
  const UpdateStoryStealthMode({
    required this.activeUntilDate,
    required this.cooldownUntilDate,
    this.extra,
    this.clientId,
  });

  /// [activeUntilDate] Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled
  final int activeUntilDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown
  final int cooldownUntilDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStoryStealthMode.fromJson(Map<String, dynamic> json) =>
      UpdateStoryStealthMode(
        activeUntilDate: json['active_until_date'] ?? 0,
        cooldownUntilDate: json['cooldown_until_date'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "active_until_date": activeUntilDate,
      "cooldown_until_date": cooldownUntilDate,
    };
  }

  @override
  UpdateStoryStealthMode copyWith({
    int? activeUntilDate,
    int? cooldownUntilDate,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStoryStealthMode(
      activeUntilDate: activeUntilDate ?? this.activeUntilDate,
      cooldownUntilDate: cooldownUntilDate ?? this.cooldownUntilDate,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStoryStealthMode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateOption extends Update {
  /// An option changed its value
  const UpdateOption({
    required this.name,
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [name] The option name
  final String name;

  /// [value] The new option value
  final OptionValue value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateOption.fromJson(Map<String, dynamic> json) => UpdateOption(
        name: json['name'] ?? '',
        value: OptionValue.fromJson(json['value'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "value": value.toJson(),
    };
  }

  @override
  UpdateOption copyWith({
    String? name,
    OptionValue? value,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateOption(
      name: name ?? this.name,
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStickerSet extends Update {
  /// A sticker set has changed
  const UpdateStickerSet({
    required this.stickerSet,
    this.extra,
    this.clientId,
  });

  /// [stickerSet] The sticker set
  final StickerSet stickerSet;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) =>
      UpdateStickerSet(
        stickerSet: StickerSet.fromJson(json['sticker_set'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set": stickerSet.toJson(),
    };
  }

  @override
  UpdateStickerSet copyWith({
    StickerSet? stickerSet,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStickerSet(
      stickerSet: stickerSet ?? this.stickerSet,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateInstalledStickerSets extends Update {
  /// The list of installed sticker sets was updated
  const UpdateInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
    this.extra,
    this.clientId,
  });

  /// [stickerType] Type of the affected stickers
  final StickerType stickerType;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) =>
      UpdateInstalledStickerSets(
        stickerType: StickerType.fromJson(json['sticker_type'] ?? {}),
        stickerSetIds: json['sticker_set_ids'] == null
            ? <int>[]
            : (json['sticker_set_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((e) => '$e').toList(),
    };
  }

  @override
  UpdateInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateInstalledStickerSets(
      stickerType: stickerType ?? this.stickerType,
      stickerSetIds: stickerSetIds ?? this.stickerSetIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTrendingStickerSets extends Update {
  /// The list of trending sticker sets was updated or some of them were viewed
  const UpdateTrendingStickerSets({
    required this.stickerType,
    required this.stickerSets,
    this.extra,
    this.clientId,
  });

  /// [stickerType] Type of the affected stickers
  final StickerType stickerType;

  /// [stickerSets] The prefix of the list of trending sticker sets with the newest trending sticker sets
  final TrendingStickerSets stickerSets;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) =>
      UpdateTrendingStickerSets(
        stickerType: StickerType.fromJson(json['sticker_type'] ?? {}),
        stickerSets: TrendingStickerSets.fromJson(json['sticker_sets'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "sticker_sets": stickerSets.toJson(),
    };
  }

  @override
  UpdateTrendingStickerSets copyWith({
    StickerType? stickerType,
    TrendingStickerSets? stickerSets,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateTrendingStickerSets(
      stickerType: stickerType ?? this.stickerType,
      stickerSets: stickerSets ?? this.stickerSets,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateRecentStickers extends Update {
  /// The list of recently used stickers was updated
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
    this.extra,
    this.clientId,
  });

  /// [isAttached] True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) =>
      UpdateRecentStickers(
        isAttached: json['is_attached'] ?? false,
        stickerIds: json['sticker_ids'] == null
            ? <int>[]
            : (json['sticker_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "sticker_ids": stickerIds,
    };
  }

  @override
  UpdateRecentStickers copyWith({
    bool? isAttached,
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateRecentStickers(
      isAttached: isAttached ?? this.isAttached,
      stickerIds: stickerIds ?? this.stickerIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFavoriteStickers extends Update {
  /// The list of favorite stickers was updated
  const UpdateFavoriteStickers({
    required this.stickerIds,
    this.extra,
    this.clientId,
  });

  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) =>
      UpdateFavoriteStickers(
        stickerIds: json['sticker_ids'] == null
            ? <int>[]
            : (json['sticker_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_ids": stickerIds,
    };
  }

  @override
  UpdateFavoriteStickers copyWith({
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFavoriteStickers(
      stickerIds: stickerIds ?? this.stickerIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedAnimations extends Update {
  /// The list of saved animations was updated
  const UpdateSavedAnimations({
    required this.animationIds,
    this.extra,
    this.clientId,
  });

  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) =>
      UpdateSavedAnimations(
        animationIds: json['animation_ids'] == null
            ? <int>[]
            : (json['animation_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation_ids": animationIds,
    };
  }

  @override
  UpdateSavedAnimations copyWith({
    List<int>? animationIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSavedAnimations(
      animationIds: animationIds ?? this.animationIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedNotificationSounds extends Update {
  /// The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
  const UpdateSavedNotificationSounds({
    required this.notificationSoundIds,
    this.extra,
    this.clientId,
  });

  /// [notificationSoundIds] The new list of identifiers of saved notification sounds
  final List<int> notificationSoundIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSavedNotificationSounds.fromJson(Map<String, dynamic> json) =>
      UpdateSavedNotificationSounds(
        notificationSoundIds: json['notification_sound_ids'] == null
            ? <int>[]
            : (json['notification_sound_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_sound_ids": notificationSoundIds.map((e) => '$e').toList(),
    };
  }

  @override
  UpdateSavedNotificationSounds copyWith({
    List<int>? notificationSoundIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSavedNotificationSounds(
      notificationSoundIds: notificationSoundIds ?? this.notificationSoundIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSavedNotificationSounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDefaultBackground extends Update {
  /// The default background has changed
  const UpdateDefaultBackground({
    required this.forDarkTheme,
    this.background,
    this.extra,
    this.clientId,
  });

  /// [forDarkTheme] True, if default background for dark theme has changed
  final bool forDarkTheme;

  /// [background] The new default background; may be null
  final Background? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateDefaultBackground.fromJson(Map<String, dynamic> json) =>
      UpdateDefaultBackground(
        forDarkTheme: json['for_dark_theme'] ?? false,
        background: Background.fromJson(json['background'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "background": background?.toJson(),
    };
  }

  @override
  UpdateDefaultBackground copyWith({
    bool? forDarkTheme,
    Background? background,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateDefaultBackground(
      forDarkTheme: forDarkTheme ?? this.forDarkTheme,
      background: background ?? this.background,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateDefaultBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatThemes extends Update {
  /// The list of available chat themes has changed
  const UpdateChatThemes({
    required this.chatThemes,
    this.extra,
    this.clientId,
  });

  /// [chatThemes] The new list of chat themes
  final List<ChatTheme> chatThemes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatThemes.fromJson(Map<String, dynamic> json) =>
      UpdateChatThemes(
        chatThemes: json['chat_themes'] == null
            ? <ChatTheme>[]
            : (json['chat_themes'] as List)
                .map((e) => ChatTheme.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_themes": chatThemes.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateChatThemes copyWith({
    List<ChatTheme>? chatThemes,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatThemes(
      chatThemes: chatThemes ?? this.chatThemes,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatThemes';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAccentColors extends Update {
  /// The list of supported accent colors has changed
  const UpdateAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
    this.extra,
    this.clientId,
  });

  /// [colors] Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported. and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme
  final List<AccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specified order
  final List<int> availableAccentColorIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateAccentColors(
        colors: json['colors'] == null
            ? <AccentColor>[]
            : (json['colors'] as List)
                .map((e) => AccentColor.fromJson(e ?? {}))
                .toList(),
        availableAccentColorIds: json['available_accent_color_ids'] == null
            ? <int>[]
            : (json['available_accent_color_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "colors": colors.map((e) => e.toJson()).toList(),
      "available_accent_color_ids": availableAccentColorIds,
    };
  }

  @override
  UpdateAccentColors copyWith({
    List<AccentColor>? colors,
    List<int>? availableAccentColorIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAccentColors(
      colors: colors ?? this.colors,
      availableAccentColorIds:
          availableAccentColorIds ?? this.availableAccentColorIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAccentColors';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateProfileAccentColors extends Update {
  /// The list of supported accent colors for user profiles has changed
  const UpdateProfileAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
    this.extra,
    this.clientId,
  });

  /// [colors] Information about supported colors
  final List<ProfileAccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can be set through setProfileAccentColor and setChatProfileAccentColor. The colors must be shown in the specified order
  final List<int> availableAccentColorIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateProfileAccentColors.fromJson(Map<String, dynamic> json) =>
      UpdateProfileAccentColors(
        colors: json['colors'] == null
            ? <ProfileAccentColor>[]
            : (json['colors'] as List)
                .map((e) => ProfileAccentColor.fromJson(e ?? {}))
                .toList(),
        availableAccentColorIds: json['available_accent_color_ids'] == null
            ? <int>[]
            : (json['available_accent_color_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "colors": colors.map((e) => e.toJson()).toList(),
      "available_accent_color_ids": availableAccentColorIds,
    };
  }

  @override
  UpdateProfileAccentColors copyWith({
    List<ProfileAccentColor>? colors,
    List<int>? availableAccentColorIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateProfileAccentColors(
      colors: colors ?? this.colors,
      availableAccentColorIds:
          availableAccentColorIds ?? this.availableAccentColorIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateProfileAccentColors';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateLanguagePackStrings extends Update {
  /// Some language pack strings have been updated
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
    this.extra,
    this.clientId,
  });

  /// [localizationTarget] Localization target to which the language pack belongs
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  final String languagePackId;

  /// [strings] List of changed language pack strings; empty if all strings have changed
  final List<LanguagePackString> strings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) =>
      UpdateLanguagePackStrings(
        localizationTarget: json['localization_target'] ?? '',
        languagePackId: json['language_pack_id'] ?? '',
        strings: json['strings'] == null
            ? <LanguagePackString>[]
            : (json['strings'] as List)
                .map((e) => LanguagePackString.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "strings": strings.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateLanguagePackStrings copyWith({
    String? localizationTarget,
    String? languagePackId,
    List<LanguagePackString>? strings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateLanguagePackStrings(
      localizationTarget: localizationTarget ?? this.localizationTarget,
      languagePackId: languagePackId ?? this.languagePackId,
      strings: strings ?? this.strings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateConnectionState extends Update {
  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
  const UpdateConnectionState({
    required this.state,
    this.extra,
    this.clientId,
  });

  /// [state] The new connection state
  final ConnectionState state;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) =>
      UpdateConnectionState(
        state: ConnectionState.fromJson(json['state'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "state": state.toJson(),
    };
  }

  @override
  UpdateConnectionState copyWith({
    ConnectionState? state,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateConnectionState(
      state: state ?? this.state,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateConnectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFreezeState extends Update {
  /// The freeze state of the current user's account has changed
  const UpdateFreezeState({
    required this.isFrozen,
    required this.freezingDate,
    required this.deletionDate,
    required this.appealLink,
    this.extra,
    this.clientId,
  });

  /// [isFrozen] True, if the account is frozen
  final bool isFrozen;

  /// [freezingDate] Point in time (Unix timestamp) when the account was frozen; 0 if the account isn't frozen
  final int freezingDate;

  /// [deletionDate] Point in time (Unix timestamp) when the account will be deleted and can't be unfrozen; 0 if the account isn't frozen
  final int deletionDate;

  /// [appealLink] The link to open to send an appeal to unfreeze the account
  final String appealLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateFreezeState.fromJson(Map<String, dynamic> json) =>
      UpdateFreezeState(
        isFrozen: json['is_frozen'] ?? false,
        freezingDate: json['freezing_date'] ?? 0,
        deletionDate: json['deletion_date'] ?? 0,
        appealLink: json['appeal_link'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_frozen": isFrozen,
      "freezing_date": freezingDate,
      "deletion_date": deletionDate,
      "appeal_link": appealLink,
    };
  }

  @override
  UpdateFreezeState copyWith({
    bool? isFrozen,
    int? freezingDate,
    int? deletionDate,
    String? appealLink,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateFreezeState(
      isFrozen: isFrozen ?? this.isFrozen,
      freezingDate: freezingDate ?? this.freezingDate,
      deletionDate: deletionDate ?? this.deletionDate,
      appealLink: appealLink ?? this.appealLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateFreezeState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTermsOfService extends Update {
  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
  const UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
    this.extra,
    this.clientId,
  });

  /// [termsOfServiceId] Identifier of the terms of service
  final String termsOfServiceId;

  /// [termsOfService] The new terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) =>
      UpdateTermsOfService(
        termsOfServiceId: json['terms_of_service_id'] ?? '',
        termsOfService: TermsOfService.fromJson(json['terms_of_service'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": termsOfServiceId,
      "terms_of_service": termsOfService.toJson(),
    };
  }

  @override
  UpdateTermsOfService copyWith({
    String? termsOfServiceId,
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateTermsOfService(
      termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
      termsOfService: termsOfService ?? this.termsOfService,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnconfirmedSession extends Update {
  /// The first unconfirmed session has changed
  const UpdateUnconfirmedSession({
    this.session,
    this.extra,
    this.clientId,
  });

  /// [session] The unconfirmed session; may be null if none
  final UnconfirmedSession? session;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateUnconfirmedSession.fromJson(Map<String, dynamic> json) =>
      UpdateUnconfirmedSession(
        session: UnconfirmedSession.fromJson(json['session'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "session": session?.toJson(),
    };
  }

  @override
  UpdateUnconfirmedSession copyWith({
    UnconfirmedSession? session,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateUnconfirmedSession(
      session: session ?? this.session,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateUnconfirmedSession';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAttachmentMenuBots extends Update {
  /// The list of bots added to attachment or side menu has changed
  const UpdateAttachmentMenuBots({
    required this.bots,
    this.extra,
    this.clientId,
  });

  /// [bots] The new list of bots. The bots must not be shown on scheduled messages screen
  final List<AttachmentMenuBot> bots;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAttachmentMenuBots.fromJson(Map<String, dynamic> json) =>
      UpdateAttachmentMenuBots(
        bots: json['bots'] == null
            ? <AttachmentMenuBot>[]
            : (json['bots'] as List)
                .map((e) => AttachmentMenuBot.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bots": bots.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateAttachmentMenuBots copyWith({
    List<AttachmentMenuBot>? bots,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAttachmentMenuBots(
      bots: bots ?? this.bots,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAttachmentMenuBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateWebAppMessageSent extends Update {
  /// A message was sent by an opened Web App, so the Web App needs to be closed
  const UpdateWebAppMessageSent({
    required this.webAppLaunchId,
    this.extra,
    this.clientId,
  });

  /// [webAppLaunchId] Identifier of Web App launch
  final int webAppLaunchId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateWebAppMessageSent.fromJson(Map<String, dynamic> json) =>
      UpdateWebAppMessageSent(
        webAppLaunchId: int.tryParse(json['web_app_launch_id'] ?? '') ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "web_app_launch_id": webAppLaunchId,
    };
  }

  @override
  UpdateWebAppMessageSent copyWith({
    int? webAppLaunchId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateWebAppMessageSent(
      webAppLaunchId: webAppLaunchId ?? this.webAppLaunchId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateWebAppMessageSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveEmojiReactions extends Update {
  /// The list of active emoji reactions has changed
  const UpdateActiveEmojiReactions({
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// [emojis] The new list of active emoji reactions
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateActiveEmojiReactions.fromJson(Map<String, dynamic> json) =>
      UpdateActiveEmojiReactions(
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis,
    };
  }

  @override
  UpdateActiveEmojiReactions copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateActiveEmojiReactions(
      emojis: emojis ?? this.emojis,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateActiveEmojiReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAvailableMessageEffects extends Update {
  /// The list of available message effects has changed
  const UpdateAvailableMessageEffects({
    required this.reactionEffectIds,
    required this.stickerEffectIds,
    this.extra,
    this.clientId,
  });

  /// [reactionEffectIds] The new list of available message effects from emoji reactions
  final List<int> reactionEffectIds;

  /// [stickerEffectIds] The new list of available message effects from Premium stickers
  final List<int> stickerEffectIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAvailableMessageEffects.fromJson(Map<String, dynamic> json) =>
      UpdateAvailableMessageEffects(
        reactionEffectIds: json['reaction_effect_ids'] == null
            ? <int>[]
            : (json['reaction_effect_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        stickerEffectIds: json['sticker_effect_ids'] == null
            ? <int>[]
            : (json['sticker_effect_ids'] as List)
                .map((e) => int.tryParse(e ?? '') ?? 0)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reaction_effect_ids": reactionEffectIds.map((e) => '$e').toList(),
      "sticker_effect_ids": stickerEffectIds.map((e) => '$e').toList(),
    };
  }

  @override
  UpdateAvailableMessageEffects copyWith({
    List<int>? reactionEffectIds,
    List<int>? stickerEffectIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAvailableMessageEffects(
      reactionEffectIds: reactionEffectIds ?? this.reactionEffectIds,
      stickerEffectIds: stickerEffectIds ?? this.stickerEffectIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAvailableMessageEffects';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDefaultReactionType extends Update {
  /// The type of default reaction has changed
  const UpdateDefaultReactionType({
    required this.reactionType,
    this.extra,
    this.clientId,
  });

  /// [reactionType] The new type of the default reaction
  final ReactionType reactionType;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateDefaultReactionType.fromJson(Map<String, dynamic> json) =>
      UpdateDefaultReactionType(
        reactionType: ReactionType.fromJson(json['reaction_type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reaction_type": reactionType.toJson(),
    };
  }

  @override
  UpdateDefaultReactionType copyWith({
    ReactionType? reactionType,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateDefaultReactionType(
      reactionType: reactionType ?? this.reactionType,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateDefaultReactionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDefaultPaidReactionType extends Update {
  /// The type of default paid reaction has changed
  const UpdateDefaultPaidReactionType({
    required this.type,
    this.extra,
    this.clientId,
  });

  /// [type] The new type of the default paid reaction
  final PaidReactionType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateDefaultPaidReactionType.fromJson(Map<String, dynamic> json) =>
      UpdateDefaultPaidReactionType(
        type: PaidReactionType.fromJson(json['type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
    };
  }

  @override
  UpdateDefaultPaidReactionType copyWith({
    PaidReactionType? type,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateDefaultPaidReactionType(
      type: type ?? this.type,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateDefaultPaidReactionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedMessagesTags extends Update {
  /// Tags used in Saved Messages or a Saved Messages topic have changed
  const UpdateSavedMessagesTags({
    required this.savedMessagesTopicId,
    required this.tags,
    this.extra,
    this.clientId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags were changed; 0 if tags for the whole chat has changed
  final int savedMessagesTopicId;

  /// [tags] The new tags
  final SavedMessagesTags tags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSavedMessagesTags.fromJson(Map<String, dynamic> json) =>
      UpdateSavedMessagesTags(
        savedMessagesTopicId: json['saved_messages_topic_id'] ?? 0,
        tags: SavedMessagesTags.fromJson(json['tags'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "tags": tags.toJson(),
    };
  }

  @override
  UpdateSavedMessagesTags copyWith({
    int? savedMessagesTopicId,
    SavedMessagesTags? tags,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSavedMessagesTags(
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
      tags: tags ?? this.tags,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSavedMessagesTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveLiveLocationMessages extends Update {
  /// The list of messages with active live location that need to be updated by the application has changed. The list is persistent across application restarts only if the message database is used
  const UpdateActiveLiveLocationMessages({
    required this.messages,
    this.extra,
    this.clientId,
  });

  /// [messages] The list of messages with active live locations
  final List<Message> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateActiveLiveLocationMessages.fromJson(
          Map<String, dynamic> json) =>
      UpdateActiveLiveLocationMessages(
        messages: json['messages'] == null
            ? <Message>[]
            : (json['messages'] as List)
                .map((e) => Message.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "messages": messages.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateActiveLiveLocationMessages copyWith({
    List<Message>? messages,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateActiveLiveLocationMessages(
      messages: messages ?? this.messages,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateActiveLiveLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateOwnedStarCount extends Update {
  /// The number of Telegram Stars owned by the current user has changed
  const UpdateOwnedStarCount({
    required this.starAmount,
    this.extra,
    this.clientId,
  });

  /// [starAmount] The new amount of owned Telegram Stars
  final StarAmount starAmount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateOwnedStarCount.fromJson(Map<String, dynamic> json) =>
      UpdateOwnedStarCount(
        starAmount: StarAmount.fromJson(json['star_amount'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_amount": starAmount.toJson(),
    };
  }

  @override
  UpdateOwnedStarCount copyWith({
    StarAmount? starAmount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateOwnedStarCount(
      starAmount: starAmount ?? this.starAmount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateOwnedStarCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatRevenueAmount extends Update {
  /// The revenue earned from sponsored messages in a chat has changed. If chat revenue screen is opened, then getChatRevenueTransactions may be called to fetch new transactions
  const UpdateChatRevenueAmount({
    required this.chatId,
    required this.revenueAmount,
    this.extra,
    this.clientId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [revenueAmount] New amount of earned revenue
  final ChatRevenueAmount revenueAmount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatRevenueAmount.fromJson(Map<String, dynamic> json) =>
      UpdateChatRevenueAmount(
        chatId: json['chat_id'] ?? 0,
        revenueAmount: ChatRevenueAmount.fromJson(json['revenue_amount'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "revenue_amount": revenueAmount.toJson(),
    };
  }

  @override
  UpdateChatRevenueAmount copyWith({
    int? chatId,
    ChatRevenueAmount? revenueAmount,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatRevenueAmount(
      chatId: chatId ?? this.chatId,
      revenueAmount: revenueAmount ?? this.revenueAmount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatRevenueAmount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStarRevenueStatus extends Update {
  /// The Telegram Star revenue earned by a bot or a chat has changed. If Telegram Star transaction screen of the chat is opened, then getStarTransactions may be called to fetch new transactions
  const UpdateStarRevenueStatus({
    required this.ownerId,
    required this.status,
    this.extra,
    this.clientId,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars
  final MessageSender ownerId;

  /// [status] New Telegram Star revenue status
  final StarRevenueStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateStarRevenueStatus.fromJson(Map<String, dynamic> json) =>
      UpdateStarRevenueStatus(
        ownerId: MessageSender.fromJson(json['owner_id'] ?? {}),
        status: StarRevenueStatus.fromJson(json['status'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "status": status.toJson(),
    };
  }

  @override
  UpdateStarRevenueStatus copyWith({
    MessageSender? ownerId,
    StarRevenueStatus? status,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateStarRevenueStatus(
      ownerId: ownerId ?? this.ownerId,
      status: status ?? this.status,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateStarRevenueStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSpeechRecognitionTrial extends Update {
  /// The parameters of speech recognition without Telegram Premium subscription has changed
  const UpdateSpeechRecognitionTrial({
    required this.maxMediaDuration,
    required this.weeklyCount,
    required this.leftCount,
    required this.nextResetDate,
    this.extra,
    this.clientId,
  });

  /// [maxMediaDuration] The maximum allowed duration of media for speech recognition without Telegram Premium subscription, in seconds
  final int maxMediaDuration;

  /// [weeklyCount] The total number of allowed speech recognitions per week; 0 if none
  final int weeklyCount;

  /// [leftCount] Number of left speech recognition attempts this week
  final int leftCount;

  /// [nextResetDate] Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown
  final int nextResetDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSpeechRecognitionTrial.fromJson(Map<String, dynamic> json) =>
      UpdateSpeechRecognitionTrial(
        maxMediaDuration: json['max_media_duration'] ?? 0,
        weeklyCount: json['weekly_count'] ?? 0,
        leftCount: json['left_count'] ?? 0,
        nextResetDate: json['next_reset_date'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "max_media_duration": maxMediaDuration,
      "weekly_count": weeklyCount,
      "left_count": leftCount,
      "next_reset_date": nextResetDate,
    };
  }

  @override
  UpdateSpeechRecognitionTrial copyWith({
    int? maxMediaDuration,
    int? weeklyCount,
    int? leftCount,
    int? nextResetDate,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSpeechRecognitionTrial(
      maxMediaDuration: maxMediaDuration ?? this.maxMediaDuration,
      weeklyCount: weeklyCount ?? this.weeklyCount,
      leftCount: leftCount ?? this.leftCount,
      nextResetDate: nextResetDate ?? this.nextResetDate,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSpeechRecognitionTrial';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDiceEmojis extends Update {
  /// The list of supported dice emojis has changed
  const UpdateDiceEmojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// [emojis] The new list of supported dice emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) =>
      UpdateDiceEmojis(
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis,
    };
  }

  @override
  UpdateDiceEmojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateDiceEmojis(
      emojis: emojis ?? this.emojis,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateDiceEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAnimatedEmojiMessageClicked extends Update {
  /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
  const UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    required this.sticker,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [sticker] The animated sticker to be played
  final Sticker sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAnimatedEmojiMessageClicked.fromJson(
          Map<String, dynamic> json) =>
      UpdateAnimatedEmojiMessageClicked(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        sticker: Sticker.fromJson(json['sticker'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "sticker": sticker.toJson(),
    };
  }

  @override
  UpdateAnimatedEmojiMessageClicked copyWith({
    int? chatId,
    int? messageId,
    Sticker? sticker,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAnimatedEmojiMessageClicked(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      sticker: sticker ?? this.sticker,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAnimatedEmojiMessageClicked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAnimationSearchParameters extends Update {
  /// The parameters of animation search through getOption("animation_search_bot_username") bot has changed
  const UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// [provider] Name of the animation search provider
  final String provider;

  /// [emojis] The new list of emojis suggested for searching
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) =>
      UpdateAnimationSearchParameters(
        provider: json['provider'] ?? '',
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "provider": provider,
      "emojis": emojis,
    };
  }

  @override
  UpdateAnimationSearchParameters copyWith({
    String? provider,
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAnimationSearchParameters(
      provider: provider ?? this.provider,
      emojis: emojis ?? this.emojis,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAnimationSearchParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSuggestedActions extends Update {
  /// The list of suggested to the user actions has changed
  const UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
    this.extra,
    this.clientId,
  });

  /// [addedActions] Added suggested actions
  final List<SuggestedAction> addedActions;

  /// [removedActions] Removed suggested actions
  final List<SuggestedAction> removedActions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) =>
      UpdateSuggestedActions(
        addedActions: json['added_actions'] == null
            ? <SuggestedAction>[]
            : (json['added_actions'] as List)
                .map((e) => SuggestedAction.fromJson(e ?? {}))
                .toList(),
        removedActions: json['removed_actions'] == null
            ? <SuggestedAction>[]
            : (json['removed_actions'] as List)
                .map((e) => SuggestedAction.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "added_actions": addedActions.map((e) => e.toJson()).toList(),
      "removed_actions": removedActions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateSuggestedActions copyWith({
    List<SuggestedAction>? addedActions,
    List<SuggestedAction>? removedActions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSuggestedActions(
      addedActions: addedActions ?? this.addedActions,
      removedActions: removedActions ?? this.removedActions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSuggestedActions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSpeedLimitNotification extends Update {
  /// Download or upload file speed for the user was limited, but it can be restored by subscription to Telegram Premium. The notification can be postponed until a being downloaded or uploaded file is visible to the user.. Use getOption("premium_download_speedup") or getOption("premium_upload_speedup") to get expected speedup after subscription to Telegram Premium
  const UpdateSpeedLimitNotification({
    required this.isUpload,
    this.extra,
    this.clientId,
  });

  /// [isUpload] True, if upload speed was limited; false, if download speed was limited
  final bool isUpload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateSpeedLimitNotification.fromJson(Map<String, dynamic> json) =>
      UpdateSpeedLimitNotification(
        isUpload: json['is_upload'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_upload": isUpload,
    };
  }

  @override
  UpdateSpeedLimitNotification copyWith({
    bool? isUpload,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateSpeedLimitNotification(
      isUpload: isUpload ?? this.isUpload,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateSpeedLimitNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateContactCloseBirthdays extends Update {
  /// The list of contacts that had birthdays recently or will have birthday soon has changed
  const UpdateContactCloseBirthdays({
    required this.closeBirthdayUsers,
    this.extra,
    this.clientId,
  });

  /// [closeBirthdayUsers] List of contact users with close birthday
  final List<CloseBirthdayUser> closeBirthdayUsers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateContactCloseBirthdays.fromJson(Map<String, dynamic> json) =>
      UpdateContactCloseBirthdays(
        closeBirthdayUsers: json['close_birthday_users'] == null
            ? <CloseBirthdayUser>[]
            : (json['close_birthday_users'] as List)
                .map((e) => CloseBirthdayUser.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "close_birthday_users":
          closeBirthdayUsers.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateContactCloseBirthdays copyWith({
    List<CloseBirthdayUser>? closeBirthdayUsers,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateContactCloseBirthdays(
      closeBirthdayUsers: closeBirthdayUsers ?? this.closeBirthdayUsers,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateContactCloseBirthdays';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAutosaveSettings extends Update {
  /// Autosave settings for some type of chats were updated
  const UpdateAutosaveSettings({
    required this.scope,
    this.settings,
    this.extra,
    this.clientId,
  });

  /// [scope] Type of chats for which autosave settings were updated
  final AutosaveSettingsScope scope;

  /// [settings] The new autosave settings; may be null if the settings are reset to default
  final ScopeAutosaveSettings? settings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateAutosaveSettings.fromJson(Map<String, dynamic> json) =>
      UpdateAutosaveSettings(
        scope: AutosaveSettingsScope.fromJson(json['scope'] ?? {}),
        settings: ScopeAutosaveSettings.fromJson(json['settings'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "settings": settings?.toJson(),
    };
  }

  @override
  UpdateAutosaveSettings copyWith({
    AutosaveSettingsScope? scope,
    ScopeAutosaveSettings? settings,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateAutosaveSettings(
      scope: scope ?? this.scope,
      settings: settings ?? this.settings,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateAutosaveSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBusinessConnection extends Update {
  /// A business connection has changed; for bots only
  const UpdateBusinessConnection({
    required this.connection,
    this.extra,
    this.clientId,
  });

  /// [connection] New data about the connection
  final BusinessConnection connection;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateBusinessConnection.fromJson(Map<String, dynamic> json) =>
      UpdateBusinessConnection(
        connection: BusinessConnection.fromJson(json['connection'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "connection": connection.toJson(),
    };
  }

  @override
  UpdateBusinessConnection copyWith({
    BusinessConnection? connection,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateBusinessConnection(
      connection: connection ?? this.connection,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateBusinessConnection';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewBusinessMessage extends Update {
  /// A new message was added to a business account; for bots only
  const UpdateNewBusinessMessage({
    required this.connectionId,
    required this.message,
    this.extra,
    this.clientId,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The new message
  final BusinessMessage message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewBusinessMessage.fromJson(Map<String, dynamic> json) =>
      UpdateNewBusinessMessage(
        connectionId: json['connection_id'] ?? '',
        message: BusinessMessage.fromJson(json['message'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "connection_id": connectionId,
      "message": message.toJson(),
    };
  }

  @override
  UpdateNewBusinessMessage copyWith({
    String? connectionId,
    BusinessMessage? message,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewBusinessMessage(
      connectionId: connectionId ?? this.connectionId,
      message: message ?? this.message,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewBusinessMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBusinessMessageEdited extends Update {
  /// A message in a business account was edited; for bots only
  const UpdateBusinessMessageEdited({
    required this.connectionId,
    required this.message,
    this.extra,
    this.clientId,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The edited message
  final BusinessMessage message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateBusinessMessageEdited.fromJson(Map<String, dynamic> json) =>
      UpdateBusinessMessageEdited(
        connectionId: json['connection_id'] ?? '',
        message: BusinessMessage.fromJson(json['message'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "connection_id": connectionId,
      "message": message.toJson(),
    };
  }

  @override
  UpdateBusinessMessageEdited copyWith({
    String? connectionId,
    BusinessMessage? message,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateBusinessMessageEdited(
      connectionId: connectionId ?? this.connectionId,
      message: message ?? this.message,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateBusinessMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBusinessMessagesDeleted extends Update {
  /// Messages in a business account were deleted; for bots only
  const UpdateBusinessMessagesDeleted({
    required this.connectionId,
    required this.chatId,
    required this.messageIds,
    this.extra,
    this.clientId,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [chatId] Identifier of a chat in the business account in which messages were deleted
  final int chatId;

  /// [messageIds] Unique message identifiers of the deleted messages
  final List<int> messageIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateBusinessMessagesDeleted.fromJson(Map<String, dynamic> json) =>
      UpdateBusinessMessagesDeleted(
        connectionId: json['connection_id'] ?? '',
        chatId: json['chat_id'] ?? 0,
        messageIds: json['message_ids'] == null
            ? <int>[]
            : (json['message_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "connection_id": connectionId,
      "chat_id": chatId,
      "message_ids": messageIds,
    };
  }

  @override
  UpdateBusinessMessagesDeleted copyWith({
    String? connectionId,
    int? chatId,
    List<int>? messageIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateBusinessMessagesDeleted(
      connectionId: connectionId ?? this.connectionId,
      chatId: chatId ?? this.chatId,
      messageIds: messageIds ?? this.messageIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateBusinessMessagesDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineQuery extends Update {
  /// A new incoming inline query; for bots only
  const UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [chatType] The type of the chat from which the query originated; may be null if unknown
  final ChatType? chatType;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewInlineQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        userLocation: Location.fromJson(json['user_location'] ?? {}),
        chatType: ChatType.fromJson(json['chat_type'] ?? {}),
        query: json['query'] ?? '',
        offset: json['offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "chat_type": chatType?.toJson(),
      "query": query,
      "offset": offset,
    };
  }

  @override
  UpdateNewInlineQuery copyWith({
    int? id,
    int? senderUserId,
    Location? userLocation,
    ChatType? chatType,
    String? query,
    String? offset,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewInlineQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      userLocation: userLocation ?? this.userLocation,
      chatType: chatType ?? this.chatType,
      query: query ?? this.query,
      offset: offset ?? this.offset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChosenInlineResult extends Update {
  /// The user has chosen a result of an inline query; for bots only
  const UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [resultId] Identifier of the chosen result
  final String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) =>
      UpdateNewChosenInlineResult(
        senderUserId: json['sender_user_id'] ?? 0,
        userLocation: Location.fromJson(json['user_location'] ?? {}),
        query: json['query'] ?? '',
        resultId: json['result_id'] ?? '',
        inlineMessageId: json['inline_message_id'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "query": query,
      "result_id": resultId,
      "inline_message_id": inlineMessageId,
    };
  }

  @override
  UpdateNewChosenInlineResult copyWith({
    int? senderUserId,
    Location? userLocation,
    String? query,
    String? resultId,
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewChosenInlineResult(
      senderUserId: senderUserId ?? this.senderUserId,
      userLocation: userLocation ?? this.userLocation,
      query: query ?? this.query,
      resultId: resultId ?? this.resultId,
      inlineMessageId: inlineMessageId ?? this.inlineMessageId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewChosenInlineResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallbackQuery extends Update {
  /// A new incoming callback query; for bots only
  const UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated
  final int messageId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewCallbackQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        chatInstance: int.tryParse(json['chat_instance'] ?? '') ?? 0,
        payload: CallbackQueryPayload.fromJson(json['payload'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "chat_id": chatId,
      "message_id": messageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }

  @override
  UpdateNewCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    int? chatId,
    int? messageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewCallbackQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      chatInstance: chatInstance ?? this.chatInstance,
      payload: payload ?? this.payload,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineCallbackQuery extends Update {
  /// A new incoming callback query from a message sent via a bot; for bots only
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [inlineMessageId] Identifier of the inline message from which the query originated
  final String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewInlineCallbackQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        inlineMessageId: json['inline_message_id'] ?? '',
        chatInstance: int.tryParse(json['chat_instance'] ?? '') ?? 0,
        payload: CallbackQueryPayload.fromJson(json['payload'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "inline_message_id": inlineMessageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }

  @override
  UpdateNewInlineCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    String? inlineMessageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewInlineCallbackQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      inlineMessageId: inlineMessageId ?? this.inlineMessageId,
      chatInstance: chatInstance ?? this.chatInstance,
      payload: payload ?? this.payload,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewInlineCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewBusinessCallbackQuery extends Update {
  /// A new incoming callback query from a business message; for bots only
  const UpdateNewBusinessCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.connectionId,
    required this.message,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The message from the business account from which the query originated
  final BusinessMessage message;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewBusinessCallbackQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewBusinessCallbackQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        connectionId: json['connection_id'] ?? '',
        message: BusinessMessage.fromJson(json['message'] ?? {}),
        chatInstance: int.tryParse(json['chat_instance'] ?? '') ?? 0,
        payload: CallbackQueryPayload.fromJson(json['payload'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "connection_id": connectionId,
      "message": message.toJson(),
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }

  @override
  UpdateNewBusinessCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    String? connectionId,
    BusinessMessage? message,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewBusinessCallbackQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      connectionId: connectionId ?? this.connectionId,
      message: message ?? this.message,
      chatInstance: chatInstance ?? this.chatInstance,
      payload: payload ?? this.payload,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewBusinessCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewShippingQuery extends Update {
  /// A new incoming shipping query; for bots only. Only for invoices with flexible price
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewShippingQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        invoicePayload: json['invoice_payload'] ?? '',
        shippingAddress: Address.fromJson(json['shipping_address'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "invoice_payload": invoicePayload,
      "shipping_address": shippingAddress.toJson(),
    };
  }

  @override
  UpdateNewShippingQuery copyWith({
    int? id,
    int? senderUserId,
    String? invoicePayload,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewShippingQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewPreCheckoutQuery extends Update {
  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
  const UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    this.extra,
    this.clientId,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewPreCheckoutQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        senderUserId: json['sender_user_id'] ?? 0,
        currency: json['currency'] ?? '',
        totalAmount: json['total_amount'] ?? 0,
        invoicePayload: json['invoice_payload'] ?? '',
        shippingOptionId: json['shipping_option_id'] ?? '',
        orderInfo: OrderInfo.fromJson(json['order_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
    };
  }

  @override
  UpdateNewPreCheckoutQuery copyWith({
    int? id,
    int? senderUserId,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewPreCheckoutQuery(
      id: id ?? this.id,
      senderUserId: senderUserId ?? this.senderUserId,
      currency: currency ?? this.currency,
      totalAmount: totalAmount ?? this.totalAmount,
      invoicePayload: invoicePayload ?? this.invoicePayload,
      shippingOptionId: shippingOptionId ?? this.shippingOptionId,
      orderInfo: orderInfo ?? this.orderInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomEvent extends Update {
  /// A new incoming event; for bots only
  const UpdateNewCustomEvent({
    required this.event,
    this.extra,
    this.clientId,
  });

  /// [event] A JSON-serialized event
  final String event;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) =>
      UpdateNewCustomEvent(
        event: json['event'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "event": event,
    };
  }

  @override
  UpdateNewCustomEvent copyWith({
    String? event,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewCustomEvent(
      event: event ?? this.event,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewCustomEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomQuery extends Update {
  /// A new incoming query; for bots only
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
    this.extra,
    this.clientId,
  });

  /// [id] The query identifier
  final int id;

  /// [data] JSON-serialized query data
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) =>
      UpdateNewCustomQuery(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        data: json['data'] ?? '',
        timeout: json['timeout'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "data": data,
      "timeout": timeout,
    };
  }

  @override
  UpdateNewCustomQuery copyWith({
    int? id,
    String? data,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewCustomQuery(
      id: id ?? this.id,
      data: data ?? this.data,
      timeout: timeout ?? this.timeout,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePoll extends Update {
  /// A poll was updated; for bots only
  const UpdatePoll({
    required this.poll,
    this.extra,
    this.clientId,
  });

  /// [poll] New data about the poll
  final Poll poll;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdatePoll.fromJson(Map<String, dynamic> json) => UpdatePoll(
        poll: Poll.fromJson(json['poll'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll": poll.toJson(),
    };
  }

  @override
  UpdatePoll copyWith({
    Poll? poll,
    dynamic extra,
    int? clientId,
  }) {
    return UpdatePoll(
      poll: poll ?? this.poll,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updatePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePollAnswer extends Update {
  /// A user changed the answer to a poll; for bots only
  const UpdatePollAnswer({
    required this.pollId,
    required this.voterId,
    required this.optionIds,
    this.extra,
    this.clientId,
  });

  /// [pollId] Unique poll identifier
  final int pollId;

  /// [voterId] Identifier of the message sender that changed the answer to the poll
  final MessageSender voterId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) =>
      UpdatePollAnswer(
        pollId: int.tryParse(json['poll_id'] ?? '') ?? 0,
        voterId: MessageSender.fromJson(json['voter_id'] ?? {}),
        optionIds: json['option_ids'] == null
            ? <int>[]
            : (json['option_ids'] as List).map((e) => (e ?? 0) as int).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll_id": pollId,
      "voter_id": voterId.toJson(),
      "option_ids": optionIds,
    };
  }

  @override
  UpdatePollAnswer copyWith({
    int? pollId,
    MessageSender? voterId,
    List<int>? optionIds,
    dynamic extra,
    int? clientId,
  }) {
    return UpdatePollAnswer(
      pollId: pollId ?? this.pollId,
      voterId: voterId ?? this.voterId,
      optionIds: optionIds ?? this.optionIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updatePollAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatMember extends Update {
  /// User rights changed in a chat; for bots only
  const UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.viaJoinRequest,
    required this.viaChatFolderInviteLink,
    required this.oldChatMember,
    required this.newChatMember,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [actorUserId] Identifier of the user, changing the rights
  final int actorUserId;

  /// [date] Point in time (Unix timestamp) when the user rights were changed
  final int date;

  /// [inviteLink] If user has joined the chat using an invite link, the invite link; may be null
  final ChatInviteLink? inviteLink;

  /// [viaJoinRequest] True, if the user has joined the chat after sending a join request and being approved by an administrator
  final bool viaJoinRequest;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// [oldChatMember] Previous chat member
  final ChatMember oldChatMember;

  /// [newChatMember] New chat member
  final ChatMember newChatMember;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatMember.fromJson(Map<String, dynamic> json) =>
      UpdateChatMember(
        chatId: json['chat_id'] ?? 0,
        actorUserId: json['actor_user_id'] ?? 0,
        date: json['date'] ?? 0,
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
        viaJoinRequest: json['via_join_request'] ?? false,
        viaChatFolderInviteLink: json['via_chat_folder_invite_link'] ?? false,
        oldChatMember: ChatMember.fromJson(json['old_chat_member'] ?? {}),
        newChatMember: ChatMember.fromJson(json['new_chat_member'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "actor_user_id": actorUserId,
      "date": date,
      "invite_link": inviteLink?.toJson(),
      "via_join_request": viaJoinRequest,
      "via_chat_folder_invite_link": viaChatFolderInviteLink,
      "old_chat_member": oldChatMember.toJson(),
      "new_chat_member": newChatMember.toJson(),
    };
  }

  @override
  UpdateChatMember copyWith({
    int? chatId,
    int? actorUserId,
    int? date,
    ChatInviteLink? inviteLink,
    bool? viaJoinRequest,
    bool? viaChatFolderInviteLink,
    ChatMember? oldChatMember,
    ChatMember? newChatMember,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatMember(
      chatId: chatId ?? this.chatId,
      actorUserId: actorUserId ?? this.actorUserId,
      date: date ?? this.date,
      inviteLink: inviteLink ?? this.inviteLink,
      viaJoinRequest: viaJoinRequest ?? this.viaJoinRequest,
      viaChatFolderInviteLink:
          viaChatFolderInviteLink ?? this.viaChatFolderInviteLink,
      oldChatMember: oldChatMember ?? this.oldChatMember,
      newChatMember: newChatMember ?? this.newChatMember,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChatJoinRequest extends Update {
  /// A user sent a join request to a chat; for bots only
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    required this.userChatId,
    this.inviteLink,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [request] Join request
  final ChatJoinRequest request;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [inviteLink] The invite link, which was used to send join request; may be null
  final ChatInviteLink? inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateNewChatJoinRequest.fromJson(Map<String, dynamic> json) =>
      UpdateNewChatJoinRequest(
        chatId: json['chat_id'] ?? 0,
        request: ChatJoinRequest.fromJson(json['request'] ?? {}),
        userChatId: json['user_chat_id'] ?? 0,
        inviteLink: ChatInviteLink.fromJson(json['invite_link'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "request": request.toJson(),
      "user_chat_id": userChatId,
      "invite_link": inviteLink?.toJson(),
    };
  }

  @override
  UpdateNewChatJoinRequest copyWith({
    int? chatId,
    ChatJoinRequest? request,
    int? userChatId,
    ChatInviteLink? inviteLink,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateNewChatJoinRequest(
      chatId: chatId ?? this.chatId,
      request: request ?? this.request,
      userChatId: userChatId ?? this.userChatId,
      inviteLink: inviteLink ?? this.inviteLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateNewChatJoinRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatBoost extends Update {
  /// A chat boost has changed; for bots only
  const UpdateChatBoost({
    required this.chatId,
    required this.boost,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [boost] New information about the boost
  final ChatBoost boost;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateChatBoost.fromJson(Map<String, dynamic> json) =>
      UpdateChatBoost(
        chatId: json['chat_id'] ?? 0,
        boost: ChatBoost.fromJson(json['boost'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "boost": boost.toJson(),
    };
  }

  @override
  UpdateChatBoost copyWith({
    int? chatId,
    ChatBoost? boost,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateChatBoost(
      chatId: chatId ?? this.chatId,
      boost: boost ?? this.boost,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateChatBoost';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageReaction extends Update {
  /// User changed its reactions on a message with public reactions; for bots only
  const UpdateMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.actorId,
    required this.date,
    required this.oldReactionTypes,
    required this.newReactionTypes,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [actorId] Identifier of the user or chat that changed reactions
  final MessageSender actorId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [oldReactionTypes] Old list of chosen reactions
  final List<ReactionType> oldReactionTypes;

  /// [newReactionTypes] New list of chosen reactions
  final List<ReactionType> newReactionTypes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageReaction.fromJson(Map<String, dynamic> json) =>
      UpdateMessageReaction(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        actorId: MessageSender.fromJson(json['actor_id'] ?? {}),
        date: json['date'] ?? 0,
        oldReactionTypes: json['old_reaction_types'] == null
            ? <ReactionType>[]
            : (json['old_reaction_types'] as List)
                .map((e) => ReactionType.fromJson(e ?? {}))
                .toList(),
        newReactionTypes: json['new_reaction_types'] == null
            ? <ReactionType>[]
            : (json['new_reaction_types'] as List)
                .map((e) => ReactionType.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "actor_id": actorId.toJson(),
      "date": date,
      "old_reaction_types": oldReactionTypes.map((e) => e.toJson()).toList(),
      "new_reaction_types": newReactionTypes.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateMessageReaction copyWith({
    int? chatId,
    int? messageId,
    MessageSender? actorId,
    int? date,
    List<ReactionType>? oldReactionTypes,
    List<ReactionType>? newReactionTypes,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageReaction(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      actorId: actorId ?? this.actorId,
      date: date ?? this.date,
      oldReactionTypes: oldReactionTypes ?? this.oldReactionTypes,
      newReactionTypes: newReactionTypes ?? this.newReactionTypes,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageReactions extends Update {
  /// Reactions added to a message with anonymous reactions have changed; for bots only
  const UpdateMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.date,
    required this.reactions,
    this.extra,
    this.clientId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [reactions] The list of reactions added to the message
  final List<MessageReaction> reactions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdateMessageReactions.fromJson(Map<String, dynamic> json) =>
      UpdateMessageReactions(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        date: json['date'] ?? 0,
        reactions: json['reactions'] == null
            ? <MessageReaction>[]
            : (json['reactions'] as List)
                .map((e) => MessageReaction.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "date": date,
      "reactions": reactions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  UpdateMessageReactions copyWith({
    int? chatId,
    int? messageId,
    int? date,
    List<MessageReaction>? reactions,
    dynamic extra,
    int? clientId,
  }) {
    return UpdateMessageReactions(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      date: date ?? this.date,
      reactions: reactions ?? this.reactions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updateMessageReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePaidMediaPurchased extends Update {
  /// Paid media were purchased by a user; for bots only
  const UpdatePaidMediaPurchased({
    required this.userId,
    required this.payload,
    this.extra,
    this.clientId,
  });

  /// [userId] User identifier
  final int userId;

  /// [payload] Bot-specified payload for the paid media
  final String payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpdatePaidMediaPurchased.fromJson(Map<String, dynamic> json) =>
      UpdatePaidMediaPurchased(
        userId: json['user_id'] ?? 0,
        payload: json['payload'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "payload": payload,
    };
  }

  @override
  UpdatePaidMediaPurchased copyWith({
    int? userId,
    String? payload,
    dynamic extra,
    int? clientId,
  }) {
    return UpdatePaidMediaPurchased(
      userId: userId ?? this.userId,
      payload: payload ?? this.payload,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'updatePaidMediaPurchased';

  @override
  String getConstructor() => CONSTRUCTOR;
}
