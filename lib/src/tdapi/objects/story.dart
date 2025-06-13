import '../tdapi.dart';

class Story extends TdObject {

  /// Represents a story
  const Story({
    required this.id,
    required this.posterChatId,
    this.posterId,
    required this.date,
    required this.isBeingPosted,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPostedToChatPage,
    required this.isVisibleOnlyForSelf,
    required this.canBeDeleted,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canToggleIsPostedToChatPage,
    required this.canGetStatistics,
    required this.canGetInteractions,
    required this.hasExpiredViewers,
    this.repostInfo,
    this.interactionInfo,
    this.chosenReactionType,
    required this.privacySettings,
    required this.content,
    required this.areas,
    required this.caption,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique story identifier among stories posted by the given chat
  final int id;

  /// [posterChatId] Identifier of the chat that posted the story
  final int posterChatId;

  /// [posterId] Identifier of the user or chat that posted the story; may be null if the story is posted on behalf of the poster_chat_id
  final MessageSender? posterId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingPosted] True, if the story is being posted by the current user
  final bool isBeingPosted;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPostedToChatPage] True, if the story is saved in the profile of the chat that posted it and will be available there after expiration
  final bool isPostedToChatPage;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current user
  final bool isVisibleOnlyForSelf;

  /// [canBeDeleted] True, if the story can be deleted
  final bool canBeDeleted;

  /// [canBeEdited] True, if the story can be edited
  final bool canBeEdited;

  /// [canBeForwarded] True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the user that posted the story
  final bool canBeReplied;

  /// [canToggleIsPostedToChatPage] True, if the story's is_posted_to_chat_page value can be changed
  final bool canToggleIsPostedToChatPage;

  /// [canGetStatistics] True, if the story statistics are available through getStoryStatistics
  final bool canGetStatistics;

  /// [canGetInteractions] True, if interactions with the story can be received through getStoryInteractions
  final bool canGetInteractions;

  /// [hasExpiredViewers] True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [repostInfo] Information about the original story; may be null if the story wasn't reposted
  final StoryRepostInfo? repostInfo;

  /// [interactionInfo] Information about interactions with the story; may be null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// [chosenReactionType] Type of the chosen reaction; may be null if none
  final ReactionType? chosenReactionType;

  /// [privacySettings] Privacy rules affecting story visibility; may be approximate for non-owned stories
  final StoryPrivacySettings privacySettings;

  /// [content] Content of the story
  final StoryContent content;

  /// [areas] Clickable areas to be shown on the story content
  final List<StoryArea> areas;

  /// [caption] Caption of the story
  final FormattedText caption;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Story.fromJson(Map<String, dynamic> json) => Story(
    id: json['id'] ?? 0,
    posterChatId: json['poster_chat_id'] ?? 0,
    posterId: MessageSender.fromJson(json['poster_id'] ?? {}),
    date: json['date'] ?? 0,
    isBeingPosted: json['is_being_posted'] ?? false,
    isBeingEdited: json['is_being_edited'] ?? false,
    isEdited: json['is_edited'] ?? false,
    isPostedToChatPage: json['is_posted_to_chat_page'] ?? false,
    isVisibleOnlyForSelf: json['is_visible_only_for_self'] ?? false,
    canBeDeleted: json['can_be_deleted'] ?? false,
    canBeEdited: json['can_be_edited'] ?? false,
    canBeForwarded: json['can_be_forwarded'] ?? false,
    canBeReplied: json['can_be_replied'] ?? false,
    canToggleIsPostedToChatPage: json['can_toggle_is_posted_to_chat_page'] ?? false,
    canGetStatistics: json['can_get_statistics'] ?? false,
    canGetInteractions: json['can_get_interactions'] ?? false,
    hasExpiredViewers: json['has_expired_viewers'] ?? false,
    repostInfo: StoryRepostInfo.fromJson(json['repost_info'] ?? {}),
    interactionInfo: StoryInteractionInfo.fromJson(json['interaction_info'] ?? {}),
    chosenReactionType: ReactionType.fromJson(json['chosen_reaction_type'] ?? {}),
    privacySettings: StoryPrivacySettings.fromJson(json['privacy_settings'] ?? {}),
    content: StoryContent.fromJson(json['content'] ?? {}),
    areas: json['areas'] == null ? <StoryArea>[] :(json['areas'] as List).map((e) => StoryArea.fromJson(e ?? {})).toList(),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "poster_chat_id": posterChatId,
      "poster_id": posterId?.toJson(),
      "date": date,
      "is_being_posted": isBeingPosted,
      "is_being_edited": isBeingEdited,
      "is_edited": isEdited,
      "is_posted_to_chat_page": isPostedToChatPage,
      "is_visible_only_for_self": isVisibleOnlyForSelf,
      "can_be_deleted": canBeDeleted,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_replied": canBeReplied,
      "can_toggle_is_posted_to_chat_page": canToggleIsPostedToChatPage,
      "can_get_statistics": canGetStatistics,
      "can_get_interactions": canGetInteractions,
      "has_expired_viewers": hasExpiredViewers,
      "repost_info": repostInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "chosen_reaction_type": chosenReactionType?.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "content": content.toJson(),
      "areas": areas.map((e) => e.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }
  
  Story copyWith({
    int? id,
    int? posterChatId,
    MessageSender? posterId,
    int? date,
    bool? isBeingPosted,
    bool? isBeingEdited,
    bool? isEdited,
    bool? isPostedToChatPage,
    bool? isVisibleOnlyForSelf,
    bool? canBeDeleted,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBeReplied,
    bool? canToggleIsPostedToChatPage,
    bool? canGetStatistics,
    bool? canGetInteractions,
    bool? hasExpiredViewers,
    StoryRepostInfo? repostInfo,
    StoryInteractionInfo? interactionInfo,
    ReactionType? chosenReactionType,
    StoryPrivacySettings? privacySettings,
    StoryContent? content,
    List<StoryArea>? areas,
    FormattedText? caption,
    dynamic extra,
    int? clientId,
  }) => Story(
    id: id ?? this.id,
    posterChatId: posterChatId ?? this.posterChatId,
    posterId: posterId ?? this.posterId,
    date: date ?? this.date,
    isBeingPosted: isBeingPosted ?? this.isBeingPosted,
    isBeingEdited: isBeingEdited ?? this.isBeingEdited,
    isEdited: isEdited ?? this.isEdited,
    isPostedToChatPage: isPostedToChatPage ?? this.isPostedToChatPage,
    isVisibleOnlyForSelf: isVisibleOnlyForSelf ?? this.isVisibleOnlyForSelf,
    canBeDeleted: canBeDeleted ?? this.canBeDeleted,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBeReplied: canBeReplied ?? this.canBeReplied,
    canToggleIsPostedToChatPage: canToggleIsPostedToChatPage ?? this.canToggleIsPostedToChatPage,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetInteractions: canGetInteractions ?? this.canGetInteractions,
    hasExpiredViewers: hasExpiredViewers ?? this.hasExpiredViewers,
    repostInfo: repostInfo ?? this.repostInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    chosenReactionType: chosenReactionType ?? this.chosenReactionType,
    privacySettings: privacySettings ?? this.privacySettings,
    content: content ?? this.content,
    areas: areas ?? this.areas,
    caption: caption ?? this.caption,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'story';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
