part of '../tdapi.dart';

class RemoveBusinessConnectedBotFromChat extends TdFunction {

  /// Removes the connected business bot from a specific chat by adding the chat to businessRecipients.excluded_chat_ids
  const RemoveBusinessConnectedBotFromChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  RemoveBusinessConnectedBotFromChat copyWith({
    int? chatId,
  }) => RemoveBusinessConnectedBotFromChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'removeBusinessConnectedBotFromChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
