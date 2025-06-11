import '../tdapi.dart';

class GetChatStoryInteractions extends TdFunction {

  /// Returns interactions with a story posted in a chat. Can be used only if story is posted on behalf of a chat and the user is an administrator in the chat
  const GetChatStoryInteractions({
    required this.storyPosterChatId,
    required this.storyId,
    this.reactionType,
    required this.preferForwards,
    required this.offset,
    required this.limit,
  });
  
  /// [storyPosterChatId] The identifier of the poster of the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [reactionType] Pass the default heart reaction or a suggested reaction type to receive only interactions with the specified reaction type; pass null to receive all interactions; reactionTypePaid isn't supported
  final ReactionType? reactionType;

  /// [preferForwards] Pass true to get forwards and reposts first, then reactions, then other views; pass false to get interactions sorted just by interaction date
  final bool preferForwards;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of story interactions to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "reaction_type": reactionType?.toJson(),
      "prefer_forwards": preferForwards,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetChatStoryInteractions copyWith({
    int? storyPosterChatId,
    int? storyId,
    ReactionType? reactionType,
    bool? preferForwards,
    String? offset,
    int? limit,
  }) => GetChatStoryInteractions(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    reactionType: reactionType ?? this.reactionType,
    preferForwards: preferForwards ?? this.preferForwards,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getChatStoryInteractions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
