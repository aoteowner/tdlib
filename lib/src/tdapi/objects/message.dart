import '../tdapi.dart';

class Message extends TdObject {

  /// Describes a message
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.isFromOffline,
    required this.canBeSaved,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.importInfo,
    this.interactionInfo,
    required this.unreadReactions,
    this.factCheck,
    this.replyTo,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
    this.selfDestructType,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.senderBusinessBotUserId,
    required this.senderBoostCount,
    required this.paidMessageStarCount,
    required this.authorSignature,
    required this.mediaAlbumId,
    required this.effectId,
    required this.hasSensitiveContent,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });
  
  /// [id] Message identifier; unique for the chat to which the message belongs
  final int id;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sendingState] The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null if the message isn't scheduled
  final MessageSchedulingState? schedulingState;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [isFromOffline] True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message
  final bool isFromOffline;

  /// [canBeSaved] True, if content of the message can be saved locally or copied using inputMessageForwarded or forwardMessages with copy options
  final bool canBeSaved;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [isTopicMessage] True, if the message is a forum topic message
  final bool isTopicMessage;

  /// [containsUnreadMention] True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent; 0 for scheduled messages
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last edited; 0 for scheduled messages
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null if none or unknown
  final MessageForwardInfo? forwardInfo;

  /// [importInfo] Information about the initial message for messages created with importMessages; may be null if the message isn't imported
  final MessageImportInfo? importInfo;

  /// [interactionInfo] Information about interactions with the message; may be null if none
  final MessageInteractionInfo? interactionInfo;

  /// [unreadReactions] Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// [factCheck] Information about fact-check added to the message; may be null if none
  final FactCheck? factCheck;

  /// [replyTo] Information about the message or the story this message is replying to; may be null if none
  final MessageReplyTo? replyTo;

  /// [messageThreadId] If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// [savedMessagesTopicId] Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages
  final int savedMessagesTopicId;

  /// [selfDestructType] The message's self-destruct type; may be null if none
  final MessageSelfDestructType? selfDestructType;

  /// [selfDestructIn] Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet
  final double selfDestructIn;

  /// [autoDeleteIn] Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never
  final double autoDeleteIn;

  /// [viaBotUserId] If non-zero, the user identifier of the inline bot through which this message was sent
  final int viaBotUserId;

  /// [senderBusinessBotUserId] If non-zero, the user identifier of the business bot that sent this message
  final int senderBusinessBotUserId;

  /// [senderBoostCount] Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
  final int senderBoostCount;

  /// [paidMessageStarCount] The number of Telegram Stars the sender paid to send the message
  final int paidMessageStarCount;

  /// [authorSignature] For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// [effectId] Unique identifier of the effect added to the message; 0 if none
  final int effectId;

  /// [hasSensitiveContent] True, if media content of the message must be hidden with 18+ spoiler
  final bool hasSensitiveContent;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json['id'] ?? 0,
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    chatId: json['chat_id'] ?? 0,
    sendingState: MessageSendingState.fromJson(json['sending_state'] ?? {}),
    schedulingState: MessageSchedulingState.fromJson(json['scheduling_state'] ?? {}),
    isOutgoing: json['is_outgoing'] ?? false,
    isPinned: json['is_pinned'] ?? false,
    isFromOffline: json['is_from_offline'] ?? false,
    canBeSaved: json['can_be_saved'] ?? false,
    hasTimestampedMedia: json['has_timestamped_media'] ?? false,
    isChannelPost: json['is_channel_post'] ?? false,
    isTopicMessage: json['is_topic_message'] ?? false,
    containsUnreadMention: json['contains_unread_mention'] ?? false,
    date: json['date'] ?? 0,
    editDate: json['edit_date'] ?? 0,
    forwardInfo: MessageForwardInfo.fromJson(json['forward_info'] ?? {}),
    importInfo: MessageImportInfo.fromJson(json['import_info'] ?? {}),
    interactionInfo: MessageInteractionInfo.fromJson(json['interaction_info'] ?? {}),
    unreadReactions: json['unread_reactions'] == null ? [] :(json['unread_reactions'] as List).map((e) => UnreadReaction.fromJson(e ?? {})).toList(),
    factCheck: FactCheck.fromJson(json['fact_check'] ?? {}),
    replyTo: MessageReplyTo.fromJson(json['reply_to'] ?? {}),
    messageThreadId: json['message_thread_id'] ?? 0,
    savedMessagesTopicId: json['saved_messages_topic_id'] ?? 0,
    selfDestructType: MessageSelfDestructType.fromJson(json['self_destruct_type'] ?? {}),
    selfDestructIn: json['self_destruct_in'] ?? 0,
    autoDeleteIn: json['auto_delete_in'] ?? 0,
    viaBotUserId: json['via_bot_user_id'] ?? 0,
    senderBusinessBotUserId: json['sender_business_bot_user_id'] ?? 0,
    senderBoostCount: json['sender_boost_count'] ?? 0,
    paidMessageStarCount: json['paid_message_star_count'] ?? 0,
    authorSignature: json['author_signature'] ?? '',
    mediaAlbumId: int.tryParse(json['media_album_id'] ?? '') ?? 0,
    effectId: int.tryParse(json['effect_id'] ?? '') ?? 0,
    hasSensitiveContent: json['has_sensitive_content'] ?? false,
    restrictionReason: json['restriction_reason'] ?? '',
    content: MessageContent.fromJson(json['content'] ?? {}),
    replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_id": senderId.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "is_from_offline": isFromOffline,
      "can_be_saved": canBeSaved,
      "has_timestamped_media": hasTimestampedMedia,
      "is_channel_post": isChannelPost,
      "is_topic_message": isTopicMessage,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "import_info": importInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "unread_reactions": unreadReactions.map((e) => e.toJson()).toList(),
      "fact_check": factCheck?.toJson(),
      "reply_to": replyTo?.toJson(),
      "message_thread_id": messageThreadId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "self_destruct_type": selfDestructType?.toJson(),
      "self_destruct_in": selfDestructIn,
      "auto_delete_in": autoDeleteIn,
      "via_bot_user_id": viaBotUserId,
      "sender_business_bot_user_id": senderBusinessBotUserId,
      "sender_boost_count": senderBoostCount,
      "paid_message_star_count": paidMessageStarCount,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
      "effect_id": effectId,
      "has_sensitive_content": hasSensitiveContent,
      "restriction_reason": restrictionReason,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
    };
  }
  
  Message copyWith({
    int? id,
    MessageSender? senderId,
    int? chatId,
    MessageSendingState? sendingState,
    MessageSchedulingState? schedulingState,
    bool? isOutgoing,
    bool? isPinned,
    bool? isFromOffline,
    bool? canBeSaved,
    bool? hasTimestampedMedia,
    bool? isChannelPost,
    bool? isTopicMessage,
    bool? containsUnreadMention,
    int? date,
    int? editDate,
    MessageForwardInfo? forwardInfo,
    MessageImportInfo? importInfo,
    MessageInteractionInfo? interactionInfo,
    List<UnreadReaction>? unreadReactions,
    FactCheck? factCheck,
    MessageReplyTo? replyTo,
    int? messageThreadId,
    int? savedMessagesTopicId,
    MessageSelfDestructType? selfDestructType,
    double? selfDestructIn,
    double? autoDeleteIn,
    int? viaBotUserId,
    int? senderBusinessBotUserId,
    int? senderBoostCount,
    int? paidMessageStarCount,
    String? authorSignature,
    int? mediaAlbumId,
    int? effectId,
    bool? hasSensitiveContent,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => Message(
    id: id ?? this.id,
    senderId: senderId ?? this.senderId,
    chatId: chatId ?? this.chatId,
    sendingState: sendingState ?? this.sendingState,
    schedulingState: schedulingState ?? this.schedulingState,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isPinned: isPinned ?? this.isPinned,
    isFromOffline: isFromOffline ?? this.isFromOffline,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
    isChannelPost: isChannelPost ?? this.isChannelPost,
    isTopicMessage: isTopicMessage ?? this.isTopicMessage,
    containsUnreadMention: containsUnreadMention ?? this.containsUnreadMention,
    date: date ?? this.date,
    editDate: editDate ?? this.editDate,
    forwardInfo: forwardInfo ?? this.forwardInfo,
    importInfo: importInfo ?? this.importInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    unreadReactions: unreadReactions ?? this.unreadReactions,
    factCheck: factCheck ?? this.factCheck,
    replyTo: replyTo ?? this.replyTo,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    selfDestructType: selfDestructType ?? this.selfDestructType,
    selfDestructIn: selfDestructIn ?? this.selfDestructIn,
    autoDeleteIn: autoDeleteIn ?? this.autoDeleteIn,
    viaBotUserId: viaBotUserId ?? this.viaBotUserId,
    senderBusinessBotUserId: senderBusinessBotUserId ?? this.senderBusinessBotUserId,
    senderBoostCount: senderBoostCount ?? this.senderBoostCount,
    paidMessageStarCount: paidMessageStarCount ?? this.paidMessageStarCount,
    authorSignature: authorSignature ?? this.authorSignature,
    mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
    effectId: effectId ?? this.effectId,
    hasSensitiveContent: hasSensitiveContent ?? this.hasSensitiveContent,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    content: content ?? this.content,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'message';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
