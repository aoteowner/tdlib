part of '../tdapi.dart';

class SetChatAvailableReactions extends TdFunction {

  /// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info member right
  const SetChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [availableReactions] Reactions available in the chat. All explicitly specified emoji reactions must be active. In channel chats up to the chat's boost level custom emoji reactions can be explicitly specified
  final ChatAvailableReactions availableReactions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "available_reactions": availableReactions.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatAvailableReactions copyWith({
    int? chatId,
    ChatAvailableReactions? availableReactions,
  }) => SetChatAvailableReactions(
    chatId: chatId ?? this.chatId,
    availableReactions: availableReactions ?? this.availableReactions,
  );

  static const CONSTRUCTOR = 'setChatAvailableReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
