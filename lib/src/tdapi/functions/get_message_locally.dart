import '../tdapi.dart';

class GetMessageLocally extends TdFunction {
  /// Returns information about a message, if it is available without sending network request. Returns a 404 error if message isn't available locally. This is an offline method
  const GetMessageLocally({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
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

  GetMessageLocally copyWith({
    int? chatId,
    int? messageId,
  }) {
    return GetMessageLocally(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'getMessageLocally';

  @override
  String getConstructor() => CONSTRUCTOR;
}
