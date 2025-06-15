import '../tdapi.dart';

class OpenChatSimilarChat extends TdFunction {
  /// Informs TDLib that a chat was opened from the list of similar chats. The method is independent of openChat and closeChat methods
  const OpenChatSimilarChat({
    required this.chatId,
    required this.openedChatId,
  });

  /// [chatId] Identifier of the original chat, which similar chats were requested
  final int chatId;

  /// [openedChatId] Identifier of the opened chat
  final int openedChatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "opened_chat_id": openedChatId,
      "@extra": extra,
    };
  }

  OpenChatSimilarChat copyWith({
    int? chatId,
    int? openedChatId,
  }) {
    return OpenChatSimilarChat(
      chatId: chatId ?? this.chatId,
      openedChatId: openedChatId ?? this.openedChatId,
    );
  }

  static const CONSTRUCTOR = 'openChatSimilarChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
