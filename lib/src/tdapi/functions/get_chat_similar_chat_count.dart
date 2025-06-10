part of '../tdapi.dart';

class GetChatSimilarChatCount extends TdFunction {

  /// Returns approximate number of chats similar to the given chat
  const GetChatSimilarChatCount({
    required this.chatId,
    required this.returnLocal,
  });
  
  /// [chatId] Identifier of the target chat; must be an identifier of a channel chat
  final int chatId;

  /// [returnLocal] Pass true to get the number of chats without sending network requests, or -1 if the number of chats is unknown locally
  final bool returnLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "return_local": returnLocal,
      "@extra": extra,
    };
  }
  
  GetChatSimilarChatCount copyWith({
    int? chatId,
    bool? returnLocal,
  }) => GetChatSimilarChatCount(
    chatId: chatId ?? this.chatId,
    returnLocal: returnLocal ?? this.returnLocal,
  );

  static const CONSTRUCTOR = 'getChatSimilarChatCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
