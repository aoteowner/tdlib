import '../tdapi.dart';

class GetMessages extends TdFunction {
  /// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
  const GetMessages({
    required this.chatId,
    required this.messageIds,
  });

  /// [chatId] Identifier of the chat the messages belong to
  final int chatId;

  /// [messageIds] Identifiers of the messages to get
  final List<int> messageIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds,
      "@extra": extra,
    };
  }

  GetMessages copyWith({
    int? chatId,
    List<int>? messageIds,
  }) {
    return GetMessages(
      chatId: chatId ?? this.chatId,
      messageIds: messageIds ?? this.messageIds,
    );
  }

  static const CONSTRUCTOR = 'getMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
