import '../tdapi.dart';

class UnpinAllChatMessages extends TdFunction {

  /// Removes all pinned messages from a chat; requires can_pin_messages member right if the chat is a basic group or supergroup, or can_edit_messages administrator right if the chat is a channel
  const UnpinAllChatMessages({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  UnpinAllChatMessages copyWith({
    int? chatId,
  }) => UnpinAllChatMessages(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'unpinAllChatMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
