import '../tdapi.dart';

class GetMessageProperties extends TdFunction {
  /// Returns properties of a message. This is an offline method
  const GetMessageProperties({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
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

  GetMessageProperties copyWith({
    int? chatId,
    int? messageId,
  }) {
    return GetMessageProperties(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'getMessageProperties';

  @override
  String getConstructor() => CONSTRUCTOR;
}
