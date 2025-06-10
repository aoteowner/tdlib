part of '../tdapi.dart';

class EditStory extends TdFunction {

  /// Changes content and caption of a story. Can be called only if story.can_be_edited == true
  const EditStory({
    required this.storyPosterChatId,
    required this.storyId,
    this.content,
    this.areas,
    this.caption,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story; pass null to keep the current content
  final InputStoryContent? content;

  /// [areas] New clickable rectangle areas to be shown on the story media; pass null to keep the current areas. Areas can't be edited if story content isn't changed
  final InputStoryAreas? areas;

  /// [caption] New story caption; pass null to keep the current caption
  final FormattedText? caption;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "content": content?.toJson(),
      "areas": areas?.toJson(),
      "caption": caption?.toJson(),
      "@extra": extra,
    };
  }
  
  EditStory copyWith({
    int? storyPosterChatId,
    int? storyId,
    InputStoryContent? content,
    InputStoryAreas? areas,
    FormattedText? caption,
  }) => EditStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    content: content ?? this.content,
    areas: areas ?? this.areas,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'editStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
