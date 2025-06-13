import '../tdapi.dart';

class StoryStatistics extends TdObject {

  /// A detailed statistics about a story
  const StoryStatistics({
    required this.storyInteractionGraph,
    required this.storyReactionGraph,
    this.extra,
    this.clientId,
  });
  
  /// [storyInteractionGraph] A graph containing number of story views and shares
  final StatisticalGraph storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of story reactions
  final StatisticalGraph storyReactionGraph;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StoryStatistics.fromJson(Map<String, dynamic> json) => StoryStatistics(
    storyInteractionGraph: StatisticalGraph.fromJson(json['story_interaction_graph'] ?? {}),
    storyReactionGraph: StatisticalGraph.fromJson(json['story_reaction_graph'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_interaction_graph": storyInteractionGraph.toJson(),
      "story_reaction_graph": storyReactionGraph.toJson(),
    };
  }
  
  StoryStatistics copyWith({
    StatisticalGraph? storyInteractionGraph,
    StatisticalGraph? storyReactionGraph,
    dynamic extra,
    int? clientId,
  }) => StoryStatistics(
    storyInteractionGraph: storyInteractionGraph ?? this.storyInteractionGraph,
    storyReactionGraph: storyReactionGraph ?? this.storyReactionGraph,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'storyStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
