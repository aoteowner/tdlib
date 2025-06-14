import '../tdapi.dart';

class GetChatMessageCalendar extends TdFunction {
  /// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset"
  const GetChatMessageCalendar({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.savedMessagesTopicId,
  });

  /// [chatId] Identifier of the chat in which to return information about messages
  final int chatId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information about messages; use 0 to get results from the last message
  final int fromMessageId;

  /// [savedMessagesTopicId] If not0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages, or for chats other than Saved Messages
  final int savedMessagesTopicId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "from_message_id": fromMessageId,
      "saved_messages_topic_id": savedMessagesTopicId,
      "@extra": extra,
    };
  }

  GetChatMessageCalendar copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? fromMessageId,
    int? savedMessagesTopicId,
  }) {
    return GetChatMessageCalendar(
      chatId: chatId ?? this.chatId,
      filter: filter ?? this.filter,
      fromMessageId: fromMessageId ?? this.fromMessageId,
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    );
  }

  static const CONSTRUCTOR = 'getChatMessageCalendar';

  @override
  String getConstructor() => CONSTRUCTOR;
}
