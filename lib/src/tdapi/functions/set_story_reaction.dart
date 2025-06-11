import '../tdapi.dart';

class SetStoryReaction extends TdFunction {

  /// Changes chosen reaction on a story that has already been sent
  const SetStoryReaction({
    required this.storyPosterChatId,
    required this.storyId,
    this.reactionType,
    required this.updateRecentReactions,
  });
  
  /// [storyPosterChatId] The identifier of the poster of the story
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  /// [reactionType] Type of the reaction to set; pass null to remove the reaction. Custom emoji reactions can be used only by Telegram Premium users. Paid reactions can't be set
  final ReactionType? reactionType;

  /// [updateRecentReactions] Pass true if the reaction needs to be added to recent reactions
  final bool updateRecentReactions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "reaction_type": reactionType?.toJson(),
      "update_recent_reactions": updateRecentReactions,
      "@extra": extra,
    };
  }
  
  SetStoryReaction copyWith({
    int? storyPosterChatId,
    int? storyId,
    ReactionType? reactionType,
    bool? updateRecentReactions,
  }) => SetStoryReaction(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    reactionType: reactionType ?? this.reactionType,
    updateRecentReactions: updateRecentReactions ?? this.updateRecentReactions,
  );

  static const CONSTRUCTOR = 'setStoryReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
