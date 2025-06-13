import '../tdapi.dart';

class Chat extends TdObject {

  /// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
  const Chat({
    required this.id,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    required this.permissions,
    this.lastMessage,
    required this.positions,
    required this.chatLists,
    this.messageSenderId,
    this.blockList,
    required this.hasProtectedContent,
    required this.isTranslatable,
    required this.isMarkedAsUnread,
    required this.viewAsTopics,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
    required this.availableReactions,
    required this.messageAutoDeleteTime,
    this.emojiStatus,
    this.background,
    required this.themeName,
    this.actionBar,
    this.businessBotManageBar,
    required this.videoChat,
    this.pendingJoinRequests,
    required this.replyMarkupMessageId,
    this.draftMessage,
    required this.clientData,
    this.extra,
    this.clientId,
  });
  
  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for message sender name, and backgrounds of chat photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the reply header and link preview background for messages sent by the chat; 0 if none
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] Identifier of the profile accent color for the chat's profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown on the background of the chat's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [permissions] Actions that non-administrator chat members are allowed to take in the chat
  final ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null if none or unknown
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [chatLists] Chat lists to which the chat belongs. A chat can have a non-zero position in a chat list even it doesn't belong to the chat list and have no position in a chat list even it belongs to the chat list
  final List<ChatList> chatLists;

  /// [messageSenderId] Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [hasProtectedContent] True, if chat content can't be saved locally, forwarded, or copied
  final bool hasProtectedContent;

  /// [isTranslatable] True, if translation of all messages in the chat must be suggested to the user
  final bool isTranslatable;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [viewAsTopics] True, if the chat is a forum supergroup that must be shown in the "View as topics" mode, or Saved Messages chat that must be shown in the "View as chats"
  final bool viewAsTopics;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto
  final bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the chat
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// [notificationSettings] Notification settings for the chat
  final ChatNotificationSettings notificationSettings;

  /// [availableReactions] Types of reaction, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [messageAutoDeleteTime] Current message auto-delete or self-destruct timer setting for the chat, in seconds; 0 if disabled. Self-destruct timer in secret chats starts after the message or its content is viewed. Auto-delete timer in other chats starts from the send date
  final int messageAutoDeleteTime;

  /// [emojiStatus] Emoji status to be shown along with chat title; may be null
  final EmojiStatus? emojiStatus;

  /// [background] Background set for the chat; may be null if none
  final ChatBackground? background;

  /// [themeName] If non-empty, name of a theme, set for the chat
  final String themeName;

  /// [actionBar] Information about actions which must be possible to do through the chat action bar; may be null if none
  final ChatActionBar? actionBar;

  /// [businessBotManageBar] Information about bar for managing a business bot in the chat; may be null if none
  final BusinessBotManageBar? businessBotManageBar;

  /// [videoChat] Information about video chat of the chat
  final VideoChat videoChat;

  /// [pendingJoinRequests] Information about pending join requests; may be null if none
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null if none
  final DraftMessage? draftMessage;

  /// [clientData] Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  final String clientData;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
    id: json['id'] ?? 0,
    type: ChatType.fromJson(json['type'] ?? {}),
    title: json['title'] ?? '',
    photo: ChatPhotoInfo.fromJson(json['photo'] ?? {}),
    accentColorId: json['accent_color_id'] ?? 0,
    backgroundCustomEmojiId: int.tryParse(json['background_custom_emoji_id'] ?? '') ?? 0,
    profileAccentColorId: json['profile_accent_color_id'] ?? 0,
    profileBackgroundCustomEmojiId: int.tryParse(json['profile_background_custom_emoji_id'] ?? '') ?? 0,
    permissions: ChatPermissions.fromJson(json['permissions'] ?? {}),
    lastMessage: Message.fromJson(json['last_message'] ?? {}),
    positions: json['positions'] == null ? [] :(json['positions'] as List).map((e) => ChatPosition.fromJson(e ?? {})).toList(),
    chatLists: json['chat_lists'] == null ? [] :(json['chat_lists'] as List).map((e) => ChatList.fromJson(e ?? {})).toList(),
    messageSenderId: MessageSender.fromJson(json['message_sender_id'] ?? {}),
    blockList: BlockList.fromJson(json['block_list'] ?? {}),
    hasProtectedContent: json['has_protected_content'] ?? false,
    isTranslatable: json['is_translatable'] ?? false,
    isMarkedAsUnread: json['is_marked_as_unread'] ?? false,
    viewAsTopics: json['view_as_topics'] ?? false,
    hasScheduledMessages: json['has_scheduled_messages'] ?? false,
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] ?? false,
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] ?? false,
    canBeReported: json['can_be_reported'] ?? false,
    defaultDisableNotification: json['default_disable_notification'] ?? false,
    unreadCount: json['unread_count'] ?? 0,
    lastReadInboxMessageId: json['last_read_inbox_message_id'] ?? 0,
    lastReadOutboxMessageId: json['last_read_outbox_message_id'] ?? 0,
    unreadMentionCount: json['unread_mention_count'] ?? 0,
    unreadReactionCount: json['unread_reaction_count'] ?? 0,
    notificationSettings: ChatNotificationSettings.fromJson(json['notification_settings'] ?? {}),
    availableReactions: ChatAvailableReactions.fromJson(json['available_reactions'] ?? {}),
    messageAutoDeleteTime: json['message_auto_delete_time'] ?? 0,
    emojiStatus: EmojiStatus.fromJson(json['emoji_status'] ?? {}),
    background: ChatBackground.fromJson(json['background'] ?? {}),
    themeName: json['theme_name'] ?? '',
    actionBar: ChatActionBar.fromJson(json['action_bar'] ?? {}),
    businessBotManageBar: BusinessBotManageBar.fromJson(json['business_bot_manage_bar'] ?? {}),
    videoChat: VideoChat.fromJson(json['video_chat'] ?? {}),
    pendingJoinRequests: ChatJoinRequestsInfo.fromJson(json['pending_join_requests'] ?? {}),
    replyMarkupMessageId: json['reply_markup_message_id'] ?? 0,
    draftMessage: DraftMessage.fromJson(json['draft_message'] ?? {}),
    clientData: json['client_data'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "accent_color_id": accentColorId,
      "background_custom_emoji_id": backgroundCustomEmojiId,
      "profile_accent_color_id": profileAccentColorId,
      "profile_background_custom_emoji_id": profileBackgroundCustomEmojiId,
      "permissions": permissions.toJson(),
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((e) => e.toJson()).toList(),
      "chat_lists": chatLists.map((e) => e.toJson()).toList(),
      "message_sender_id": messageSenderId?.toJson(),
      "block_list": blockList?.toJson(),
      "has_protected_content": hasProtectedContent,
      "is_translatable": isTranslatable,
      "is_marked_as_unread": isMarkedAsUnread,
      "view_as_topics": viewAsTopics,
      "has_scheduled_messages": hasScheduledMessages,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_be_reported": canBeReported,
      "default_disable_notification": defaultDisableNotification,
      "unread_count": unreadCount,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "unread_mention_count": unreadMentionCount,
      "unread_reaction_count": unreadReactionCount,
      "notification_settings": notificationSettings.toJson(),
      "available_reactions": availableReactions.toJson(),
      "message_auto_delete_time": messageAutoDeleteTime,
      "emoji_status": emojiStatus?.toJson(),
      "background": background?.toJson(),
      "theme_name": themeName,
      "action_bar": actionBar?.toJson(),
      "business_bot_manage_bar": businessBotManageBar?.toJson(),
      "video_chat": videoChat.toJson(),
      "pending_join_requests": pendingJoinRequests?.toJson(),
      "reply_markup_message_id": replyMarkupMessageId,
      "draft_message": draftMessage?.toJson(),
      "client_data": clientData,
    };
  }
  
  Chat copyWith({
    int? id,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    int? accentColorId,
    int? backgroundCustomEmojiId,
    int? profileAccentColorId,
    int? profileBackgroundCustomEmojiId,
    ChatPermissions? permissions,
    Message? lastMessage,
    List<ChatPosition>? positions,
    List<ChatList>? chatLists,
    MessageSender? messageSenderId,
    BlockList? blockList,
    bool? hasProtectedContent,
    bool? isTranslatable,
    bool? isMarkedAsUnread,
    bool? viewAsTopics,
    bool? hasScheduledMessages,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canBeReported,
    bool? defaultDisableNotification,
    int? unreadCount,
    int? lastReadInboxMessageId,
    int? lastReadOutboxMessageId,
    int? unreadMentionCount,
    int? unreadReactionCount,
    ChatNotificationSettings? notificationSettings,
    ChatAvailableReactions? availableReactions,
    int? messageAutoDeleteTime,
    EmojiStatus? emojiStatus,
    ChatBackground? background,
    String? themeName,
    ChatActionBar? actionBar,
    BusinessBotManageBar? businessBotManageBar,
    VideoChat? videoChat,
    ChatJoinRequestsInfo? pendingJoinRequests,
    int? replyMarkupMessageId,
    DraftMessage? draftMessage,
    String? clientData,
    dynamic extra,
    int? clientId,
  }) => Chat(
    id: id ?? this.id,
    type: type ?? this.type,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    accentColorId: accentColorId ?? this.accentColorId,
    backgroundCustomEmojiId: backgroundCustomEmojiId ?? this.backgroundCustomEmojiId,
    profileAccentColorId: profileAccentColorId ?? this.profileAccentColorId,
    profileBackgroundCustomEmojiId: profileBackgroundCustomEmojiId ?? this.profileBackgroundCustomEmojiId,
    permissions: permissions ?? this.permissions,
    lastMessage: lastMessage ?? this.lastMessage,
    positions: positions ?? this.positions,
    chatLists: chatLists ?? this.chatLists,
    messageSenderId: messageSenderId ?? this.messageSenderId,
    blockList: blockList ?? this.blockList,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
    isTranslatable: isTranslatable ?? this.isTranslatable,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
    viewAsTopics: viewAsTopics ?? this.viewAsTopics,
    hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canBeReported: canBeReported ?? this.canBeReported,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
    unreadCount: unreadCount ?? this.unreadCount,
    lastReadInboxMessageId: lastReadInboxMessageId ?? this.lastReadInboxMessageId,
    lastReadOutboxMessageId: lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    availableReactions: availableReactions ?? this.availableReactions,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    emojiStatus: emojiStatus ?? this.emojiStatus,
    background: background ?? this.background,
    themeName: themeName ?? this.themeName,
    actionBar: actionBar ?? this.actionBar,
    businessBotManageBar: businessBotManageBar ?? this.businessBotManageBar,
    videoChat: videoChat ?? this.videoChat,
    pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
    replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
    draftMessage: draftMessage ?? this.draftMessage,
    clientData: clientData ?? this.clientData,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
