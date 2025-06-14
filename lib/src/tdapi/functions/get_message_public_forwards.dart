import '../tdapi.dart';

class GetMessagePublicForwards extends TdFunction {
  /// Returns forwarded copies of a channel message to different public channels and public reposts as a story. Can be used only if messageProperties.can_get_statistics == true. For optimal performance, the number of returned messages and stories is chosen by TDLib
  const GetMessagePublicForwards({
    required this.chatId,
    required this.messageId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages and stories to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetMessagePublicForwards copyWith({
    int? chatId,
    int? messageId,
    String? offset,
    int? limit,
  }) {
    return GetMessagePublicForwards(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'getMessagePublicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}
