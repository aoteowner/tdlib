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
    reactions: json['reactions'] == null ? [] :(json['reactions'] as List).map((e) => MessageReaction.fromJson(e ?? {})).toList(),
    areTags: json['are_tags'] ?? false,
    paidReactors: json['paid_reactors'] == null ? [] :(json['paid_reactors'] as List).map((e) => PaidReactor.fromJson(e ?? {})).toList(),
    canGetAddedReactions: json['can_get_added_reactions'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reactions": reactions.map((e) => e.toJson()).toList(),
      "are_tags": areTags,
      "paid_reactors": paidReactors.map((e) => e.toJson()).toList(),
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
