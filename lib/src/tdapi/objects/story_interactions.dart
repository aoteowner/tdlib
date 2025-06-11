import '../tdapi.dart';

class StoryInteractions extends TdObject {

  /// Represents a list of interactions with a story
  const StoryInteractions({
    required this.totalCount,
    required this.totalForwardCount,
    required this.totalReactionCount,
    required this.interactions,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total number of interactions found
  final int totalCount;

  /// [totalForwardCount] Approximate total number of found forwards and reposts; always 0 for chat stories
  final int totalForwardCount;

  /// [totalReactionCount] Approximate total number of found reactions; always 0 for chat stories
  final int totalReactionCount;

  /// [interactions] List of story interactions
  final List<StoryInteraction> interactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StoryInteractions.fromJson(Map<String, dynamic> json) => StoryInteractions(
    totalCount: json['total_count'],
    totalForwardCount: json['total_forward_count'],
    totalReactionCount: json['total_reaction_count'],
    interactions: List<StoryInteraction>.from((json['interactions'] ?? []).map((item) => StoryInteraction.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "total_forward_count": totalForwardCount,
      "total_reaction_count": totalReactionCount,
      "interactions": interactions.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }
  
  StoryInteractions copyWith({
    int? totalCount,
    int? totalForwardCount,
    int? totalReactionCount,
    List<StoryInteraction>? interactions,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => StoryInteractions(
    totalCount: totalCount ?? this.totalCount,
    totalForwardCount: totalForwardCount ?? this.totalForwardCount,
    totalReactionCount: totalReactionCount ?? this.totalReactionCount,
    interactions: interactions ?? this.interactions,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'storyInteractions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
