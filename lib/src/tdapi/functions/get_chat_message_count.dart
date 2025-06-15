import '../tdapi.dart';

class GetChatMessageCount extends TdFunction {
  /// Returns approximate number of messages of the specified type in the chat
  const GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.savedMessagesTopicId,
    required this.returnLocal,
  });

  /// [chatId] Identifier of the chat in which to count messages
  final int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  final SearchMessagesFilter filter;

  /// [savedMessagesTopicId] If not 0, only messages in the specified Saved Messages topic will be counted; pass 0 to count all messages, or for chats other than Saved Messages
  final int savedMessagesTopicId;

  /// [returnLocal] Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
  final bool returnLocal;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "saved_messages_topic_id": savedMessagesTopicId,
      "return_local": returnLocal,
      "@extra": extra,
    };
  }

  GetChatMessageCount copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? savedMessagesTopicId,
    bool? returnLocal,
  }) {
    return GetChatMessageCount(
      chatId: chatId ?? this.chatId,
      filter: filter ?? this.filter,
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
      returnLocal: returnLocal ?? this.returnLocal,
    );
  }

  static const CONSTRUCTOR = 'getChatMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
