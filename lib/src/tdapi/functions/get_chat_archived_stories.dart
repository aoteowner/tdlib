import '../tdapi.dart';

class GetChatArchivedStories extends TdFunction {

  /// Returns the list of all stories posted by the given chat; requires can_edit_stories right in the chat.. The stories are returned in reverse chronological order (i.e., in order of decreasing story_id). For optimal performance, the number of returned stories is chosen by TDLib
  const GetChatArchivedStories({
    required this.chatId,
    required this.fromStoryId,
    required this.limit,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [fromStoryId] Identifier of the story starting from which stories must be returned; use 0 to get results from the last story
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
  
  GetChatArchivedStories copyWith({
    int? chatId,
    int? fromStoryId,
    int? limit,
  }) => GetChatArchivedStories(
    chatId: chatId ?? this.chatId,
    fromStoryId: fromStoryId ?? this.fromStoryId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatArchivedStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
