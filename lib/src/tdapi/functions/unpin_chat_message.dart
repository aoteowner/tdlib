import '../tdapi.dart';

class UnpinChatMessage extends TdFunction {
  /// Removes a pinned message from a chat; requires can_pin_messages member right if the chat is a basic group or supergroup, or can_edit_messages administrator right if the chat is a channel
  const UnpinChatMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the removed pinned message
  final int messageId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  UnpinChatMessage copyWith({
    int? chatId,
    int? messageId,
  }) {
    return UnpinChatMessage(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'unpinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
