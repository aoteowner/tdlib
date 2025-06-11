import '../tdapi.dart';

class EditBusinessStory extends TdFunction {

  /// Changes a story posted by the bot on behalf of a business account; for bots only
  const EditBusinessStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.content,
    required this.areas,
    required this.caption,
    required this.privacySettings,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story
  final InputStoryContent content;

  /// [areas] New clickable rectangle areas to be shown on the story media
  final InputStoryAreas areas;

  /// [caption] New story caption
  final FormattedText caption;

  /// [privacySettings] The new privacy settings for the story
  final StoryPrivacySettings privacySettings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "content": content.toJson(),
      "areas": areas.toJson(),
      "caption": caption.toJson(),
      "privacy_settings": privacySettings.toJson(),
      "@extra": extra,
    };
  }
  
  EditBusinessStory copyWith({
    int? storyPosterChatId,
    int? storyId,
    InputStoryContent? content,
    InputStoryAreas? areas,
    FormattedText? caption,
    StoryPrivacySettings? privacySettings,
  }) => EditBusinessStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    content: content ?? this.content,
    areas: areas ?? this.areas,
    caption: caption ?? this.caption,
    privacySettings: privacySettings ?? this.privacySettings,
  );

  static const CONSTRUCTOR = 'editBusinessStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
