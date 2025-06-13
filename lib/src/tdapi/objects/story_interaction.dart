import '../tdapi.dart';

class StoryInteraction extends TdObject {

  /// Represents interaction with a story
  const StoryInteraction({
    required this.actorId,
    required this.interactionDate,
    this.blockList,
    required this.type,
  });
  
  /// [actorId] Identifier of the user or chat that made the interaction
  final MessageSender actorId;

  /// [interactionDate] Approximate point in time (Unix timestamp) when the interaction happened
  final int interactionDate;

  /// [blockList] Block list to which the actor is added; may be null if none or for chat stories
  final BlockList? blockList;

  /// [type] Type of the interaction
  final StoryInteractionType type;
  
  /// Parse from a json
  factory StoryInteraction.fromJson(Map<String, dynamic> json) => StoryInteraction(
    actorId: MessageSender.fromJson(json['actor_id'] ?? {}),
    interactionDate: json['interaction_date'] ?? 0,
    blockList: BlockList.fromJson(json['block_list'] ?? {}),
    type: StoryInteractionType.fromJson(json['type'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "actor_id": actorId.toJson(),
      "interaction_date": interactionDate,
      "block_list": blockList?.toJson(),
      "type": type.toJson(),
    };
  }
  
  StoryInteraction copyWith({
    MessageSender? actorId,
    int? interactionDate,
    BlockList? blockList,
    StoryInteractionType? type,
  }) => StoryInteraction(
    actorId: actorId ?? this.actorId,
    interactionDate: interactionDate ?? this.interactionDate,
    blockList: blockList ?? this.blockList,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'storyInteraction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
