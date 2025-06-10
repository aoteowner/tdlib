part of '../tdapi.dart';

class GetStory extends TdFunction {

  /// Returns a story
  const GetStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.onlyLocal,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }
  
  GetStory copyWith({
    int? storyPosterChatId,
    int? storyId,
    bool? onlyLocal,
  }) => GetStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  static const CONSTRUCTOR = 'getStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
