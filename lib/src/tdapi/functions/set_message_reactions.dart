import '../tdapi.dart';

class SetMessageReactions extends TdFunction {

  /// Sets reactions on a message; for bots only
  const SetMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.reactionTypes,
    required this.isBig,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionTypes] Types of the reaction to set; pass an empty list to remove the reactions
  final List<ReactionType> reactionTypes;

  /// [isBig] Pass true if the reactions are added with a big animation
  final bool isBig;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_types": reactionTypes.map((i) => i.toJson()).toList(),
      "is_big": isBig,
      "@extra": extra,
    };
  }
  
  SetMessageReactions copyWith({
    int? chatId,
    int? messageId,
    List<ReactionType>? reactionTypes,
    bool? isBig,
  }) => SetMessageReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    reactionTypes: reactionTypes ?? this.reactionTypes,
    isBig: isBig ?? this.isBig,
  );

  static const CONSTRUCTOR = 'setMessageReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
