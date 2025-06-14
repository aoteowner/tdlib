import '../tdapi.dart';

class GetChatPinnedMessage extends TdFunction {
  /// Returns information about a newest pinned message in the chat. Returns a 404 error if the message doesn't exist
  const GetChatPinnedMessage({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetChatPinnedMessage copyWith({
    int? chatId,
  }) {
    return GetChatPinnedMessage(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
