import '../tdapi.dart';

class MessageReactions extends TdObject {

  /// Contains a list of reactions added to a message
  const MessageReactions({
    required this.reactions,
    required this.areTags,
    required this.paidReactors,
    required this.canGetAddedReactions,
  });
  
  /// [reactions] List of added reactions
  final List<MessageReaction> reactions;

  /// [areTags] True, if the reactions are tags and Telegram Premium users can filter messages by them
  final bool areTags;

  /// [paidReactors] Information about top users that added the paid reaction
  final List<PaidReactor> paidReactors;

  /// [canGetAddedReactions] True, if the list of added reactions is available using getMessageAddedReactions
  final bool canGetAddedReactions;
  
  /// Parse from a json
  factory MessageReactions.fromJson(Map<String, dynamic> json) => MessageReactions(
    reactions: List<MessageReaction>.from((json['reactions'] ?? []).map((item) => MessageReaction.fromJson(item)).toList()),
    areTags: json['are_tags'],
    paidReactors: List<PaidReactor>.from((json['paid_reactors'] ?? []).map((item) => PaidReactor.fromJson(item)).toList()),
    canGetAddedReactions: json['can_get_added_reactions'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reactions": reactions.map((i) => i.toJson()).toList(),
      "are_tags": areTags,
      "paid_reactors": paidReactors.map((i) => i.toJson()).toList(),
      "can_get_added_reactions": canGetAddedReactions,
    };
  }
  
  MessageReactions copyWith({
    List<MessageReaction>? reactions,
    bool? areTags,
    List<PaidReactor>? paidReactors,
    bool? canGetAddedReactions,
  }) => MessageReactions(
    reactions: reactions ?? this.reactions,
    areTags: areTags ?? this.areTags,
    paidReactors: paidReactors ?? this.paidReactors,
    canGetAddedReactions: canGetAddedReactions ?? this.canGetAddedReactions,
  );

  static const CONSTRUCTOR = 'messageReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
