import '../tdapi.dart';

class SearchPublicStoriesByTag extends TdFunction {

  /// Searches for public stories containing the given hashtag or cashtag. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  const SearchPublicStoriesByTag({
    required this.storyPosterChatId,
    required this.tag,
    required this.offset,
    required this.limit,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the stories to search for; pass 0 to search stories in all chats
  final int storyPosterChatId;

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "tag": tag,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchPublicStoriesByTag copyWith({
    int? storyPosterChatId,
    String? tag,
    String? offset,
    int? limit,
  }) => SearchPublicStoriesByTag(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    tag: tag ?? this.tag,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchPublicStoriesByTag';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
