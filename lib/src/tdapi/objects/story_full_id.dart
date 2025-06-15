import '../tdapi.dart';

class StoryFullId extends TdObject {
  /// Contains identifier of a story along with identifier of the chat that posted it
  const StoryFullId({
    required this.posterChatId,
    required this.storyId,
  });

  /// [posterChatId] Identifier of the chat that posted the story
  final int posterChatId;

  /// [storyId] Unique story identifier among stories of the chat
  final int storyId;

  factory StoryFullId.fromJson(Map<String, dynamic> json) => StoryFullId(
        posterChatId: json['poster_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poster_chat_id": posterChatId,
      "story_id": storyId,
    };
  }

  StoryFullId copyWith({
    int? posterChatId,
    int? storyId,
  }) {
    return StoryFullId(
      posterChatId: posterChatId ?? this.posterChatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'storyFullId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
