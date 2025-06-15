import '../tdapi.dart';

class CloseStory extends TdFunction {
  /// Informs TDLib that a story is closed by the user
  const CloseStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the poster of the story to close
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
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

  CloseStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) {
    return CloseStory(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'closeStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
