import '../tdapi.dart';

class GetChatPostedToChatPageStories extends TdFunction {

  /// Returns the list of stories that posted by the given chat to its chat page. If from_story_id == 0, then pinned stories are returned first.. Then, stories are returned in reverse chronological order (i.e., in order of decreasing story_id). For optimal performance, the number of returned stories is chosen by TDLib
  const GetChatPostedToChatPageStories({
    required this.chatId,
    required this.fromStoryId,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [fromStoryId] Identifier of the story starting from which stories must be returned; use 0 to get results from pinned and the newest story
  final int fromStoryId;

  /// [limit] The maximum number of stories to be returned.. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "from_story_id": fromStoryId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatPostedToChatPageStories copyWith({
    int? chatId,
    int? fromStoryId,
    int? limit,
  }) => GetChatPostedToChatPageStories(
    chatId: chatId ?? this.chatId,
    fromStoryId: fromStoryId ?? this.fromStoryId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatPostedToChatPageStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
