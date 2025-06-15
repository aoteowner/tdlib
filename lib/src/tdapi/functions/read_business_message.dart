import '../tdapi.dart';

class ReadBusinessMessage extends TdFunction {
  /// Reads a message on behalf of a business account; for bots only
  const ReadBusinessMessage({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
  });

  /// [businessConnectionId] Unique identifier of business connection through which the message was received
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  ReadBusinessMessage copyWith({
    String? businessConnectionId,
    int? chatId,
    int? messageId,
  }) {
    return ReadBusinessMessage(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'readBusinessMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
