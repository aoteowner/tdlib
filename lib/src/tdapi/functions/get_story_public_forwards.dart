import '../tdapi.dart';

class GetStoryPublicForwards extends TdFunction {
  /// Returns forwards of a story as a message to public chats and reposts by public channels. Can be used only if the story is posted on behalf of the current user or story.can_get_statistics == true.. For optimal performance, the number of returned messages and stories is chosen by TDLib
  const GetStoryPublicForwards({
    required this.storyPosterChatId,
    required this.storyId,
    required this.offset,
    required this.limit,
  });

  /// [storyPosterChatId] The identifier of the poster of the story
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages and stories to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetStoryPublicForwards copyWith({
    int? storyPosterChatId,
    int? storyId,
    String? offset,
    int? limit,
  }) {
    return GetStoryPublicForwards(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getStoryPublicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}
