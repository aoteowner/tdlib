import '../tdapi.dart';

class GetSavedMessagesTopicHistory extends TdFunction {

  /// Returns messages in a Saved Messages topic. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id)
  const GetSavedMessagesTopicHistory({
    required this.savedMessagesTopicId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });
  
  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages will be fetched
  final int savedMessagesTopicId;

  /// [fromMessageId] Identifier of the message starting from which messages must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "from_message_id": fromMessageId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetSavedMessagesTopicHistory copyWith({
    int? savedMessagesTopicId,
    int? fromMessageId,
    int? offset,
    int? limit,
  }) => GetSavedMessagesTopicHistory(
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getSavedMessagesTopicHistory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
