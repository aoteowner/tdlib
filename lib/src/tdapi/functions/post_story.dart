import '../tdapi.dart';

class PostStory extends TdFunction {
  /// Posts a new story on behalf of a chat; requires can_post_stories right for supergroup and channel chats. Returns a temporary story
  const PostStory({
    required this.chatId,
    required this.content,
    this.areas,
    this.caption,
    required this.privacySettings,
    required this.activePeriod,
    this.fromStoryFullId,
    required this.isPostedToChatPage,
    required this.protectContent,
  });

  /// [chatId] Identifier of the chat that will post the story. Pass Saved Messages chat identifier when posting a story on behalf of the current user
  final int chatId;

  /// [content] Content of the story
  final InputStoryContent content;

  /// [areas] Clickable rectangle areas to be shown on the story media; pass null if none
  final InputStoryAreas? areas;

  /// [caption] Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters; can have entities only if getOption("can_use_text_entities_in_story_caption")
  final FormattedText? caption;

  /// [privacySettings] The privacy settings for the story; ignored for stories posted on behalf of supergroup and channel chats
  final StoryPrivacySettings privacySettings;

  /// [activePeriod] Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise
  final int activePeriod;

  /// [fromStoryFullId] Full identifier of the original story, which content was used to create the story; pass null if the story isn't repost of another story
  final StoryFullId? fromStoryFullId;

  /// [isPostedToChatPage] Pass true to keep the story accessible after expiration
  final bool isPostedToChatPage;

  /// [protectContent] Pass true if the content of the story must be protected from forwarding and screenshotting
  final bool protectContent;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "content": content.toJson(),
      "areas": areas?.toJson(),
      "caption": caption?.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "active_period": activePeriod,
      "from_story_full_id": fromStoryFullId?.toJson(),
      "is_posted_to_chat_page": isPostedToChatPage,
      "protect_content": protectContent,
      "@extra": extra,
    };
  }

  PostStory copyWith({
    int? chatId,
    InputStoryContent? content,
    InputStoryAreas? areas,
    FormattedText? caption,
    StoryPrivacySettings? privacySettings,
    int? activePeriod,
    StoryFullId? fromStoryFullId,
    bool? isPostedToChatPage,
    bool? protectContent,
  }) {
    return PostStory(
      chatId: chatId ?? this.chatId,
      content: content ?? this.content,
      areas: areas ?? this.areas,
      caption: caption ?? this.caption,
      privacySettings: privacySettings ?? this.privacySettings,
      activePeriod: activePeriod ?? this.activePeriod,
      fromStoryFullId: fromStoryFullId ?? this.fromStoryFullId,
      isPostedToChatPage: isPostedToChatPage ?? this.isPostedToChatPage,
      protectContent: protectContent ?? this.protectContent,
    );
  }

  static const CONSTRUCTOR = 'postStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
