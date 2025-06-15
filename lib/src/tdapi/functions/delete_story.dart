import '../tdapi.dart';

class DeleteStory extends TdFunction {
  /// Deletes a previously posted story. Can be called only if story.can_be_deleted == true
  const DeleteStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to delete
  final int storyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "@extra": extra,
    };
  }

  DeleteStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) {
    return DeleteStory(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'deleteStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
