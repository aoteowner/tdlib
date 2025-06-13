import '../tdapi.dart';

class ChatActiveStories extends TdObject {

  /// Describes active stories posted by a chat
  const ChatActiveStories({
    required this.chatId,
    this.list,
    required this.order,
    required this.maxReadStoryId,
    required this.stories,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [list] Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list
  final StoryList? list;

  /// [order] A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_poster_chat_id) in descending order
  final int order;

  /// [maxReadStoryId] Identifier of the last read active story
  final int maxReadStoryId;

  /// [stories] Basic information about the stories; use getStory to get full information about the stories. The stories are in chronological order (i.e., in order of increasing story identifiers)
  final List<StoryInfo> stories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatActiveStories.fromJson(Map<String, dynamic> json) => ChatActiveStories(
    chatId: json['chat_id'] ?? 0,
    list: StoryList.fromJson(json['list'] ?? {}),
    order: json['order'] ?? 0,
    maxReadStoryId: json['max_read_story_id'] ?? 0,
    stories: json['stories'] == null ? [] :(json['stories'] as List).map((e) => StoryInfo.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "list": list?.toJson(),
      "order": order,
      "max_read_story_id": maxReadStoryId,
      "stories": stories.map((e) => e.toJson()).toList(),
    };
  }
  
  ChatActiveStories copyWith({
    int? chatId,
    StoryList? list,
    int? order,
    int? maxReadStoryId,
    List<StoryInfo>? stories,
    dynamic extra,
    int? clientId,
  }) => ChatActiveStories(
    chatId: chatId ?? this.chatId,
    list: list ?? this.list,
    order: order ?? this.order,
    maxReadStoryId: maxReadStoryId ?? this.maxReadStoryId,
    stories: stories ?? this.stories,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatActiveStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
