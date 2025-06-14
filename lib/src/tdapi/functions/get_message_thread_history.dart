import '../tdapi.dart';

class GetMessageThreadHistory extends TdFunction {
  /// Returns messages in a message thread of a message. Can be used only if messageProperties.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup.. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
  const GetMessageThreadHistory({
    required this.chatId,
    required this.messageId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier, which thread history needs to be returned
  final int messageId;

  /// [fromMessageId] Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "from_message_id": fromMessageId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetMessageThreadHistory copyWith({
    int? chatId,
    int? messageId,
    int? fromMessageId,
    int? offset,
    int? limit,
  }) {
    return GetMessageThreadHistory(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      fromMessageId: fromMessageId ?? this.fromMessageId,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getMessageThreadHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
