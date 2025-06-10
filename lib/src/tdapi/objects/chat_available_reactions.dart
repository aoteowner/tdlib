part of '../tdapi.dart';

class ChatAvailableReactions extends TdObject {

  /// Describes reactions available in the chat
  const ChatAvailableReactions();
  
  /// a ChatAvailableReactions return type can be :
  /// * [ChatAvailableReactionsAll]
  /// * [ChatAvailableReactionsSome]
  factory ChatAvailableReactions.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatAvailableReactionsAll.CONSTRUCTOR:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.CONSTRUCTOR:
        return ChatAvailableReactionsSome.fromJson(json);
      default:
        return const ChatAvailableReactions();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatAvailableReactions copyWith() => const ChatAvailableReactions();

  static const CONSTRUCTOR = 'chatAvailableReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatAvailableReactionsAll extends ChatAvailableReactions {

  /// All reactions are available in the chat, excluding the paid reaction and custom reactions in channel chats
  const ChatAvailableReactionsAll({
    required this.maxReactionCount,
  });
  
  /// [maxReactionCount] The maximum allowed number of reactions per message; 1-11
  final int maxReactionCount;
  
  /// Parse from a json
  factory ChatAvailableReactionsAll.fromJson(Map<String, dynamic> json) => ChatAvailableReactionsAll(
    maxReactionCount: json['max_reaction_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "max_reaction_count": maxReactionCount,
    };
  }
  
  @override
  ChatAvailableReactionsAll copyWith({
    int? maxReactionCount,
  }) => ChatAvailableReactionsAll(
    maxReactionCount: maxReactionCount ?? this.maxReactionCount,
  );

  static const CONSTRUCTOR = 'chatAvailableReactionsAll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatAvailableReactionsSome extends ChatAvailableReactions {

  /// Only specific reactions are available in the chat
  const ChatAvailableReactionsSome({
    required this.reactions,
    required this.maxReactionCount,
  });
  
  /// [reactions] The list of reactions 
  final List<ReactionType> reactions;

  /// [maxReactionCount] The maximum allowed number of reactions per message; 1-11
  final int maxReactionCount;
  
  /// Parse from a json
  factory ChatAvailableReactionsSome.fromJson(Map<String, dynamic> json) => ChatAvailableReactionsSome(
    reactions: List<ReactionType>.from((json['reactions'] ?? []).map((item) => ReactionType.fromJson(item)).toList()),
    maxReactionCount: json['max_reaction_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reactions": reactions.map((i) => i.toJson()).toList(),
      "max_reaction_count": maxReactionCount,
    };
  }
  
  @override
  ChatAvailableReactionsSome copyWith({
    List<ReactionType>? reactions,
    int? maxReactionCount,
  }) => ChatAvailableReactionsSome(
    reactions: reactions ?? this.reactions,
    maxReactionCount: maxReactionCount ?? this.maxReactionCount,
  );

  static const CONSTRUCTOR = 'chatAvailableReactionsSome';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
