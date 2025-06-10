part of '../tdapi.dart';

class OpenStory extends TdFunction {

  /// Informs TDLib that a story is opened and is being viewed by the user
  const OpenStory({
    required this.storyPosterChatId,
    required this.storyId,
  });
  
  /// [storyPosterChatId] The identifier of the chat that posted the opened story
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
  
  OpenStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) => OpenStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'openStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
