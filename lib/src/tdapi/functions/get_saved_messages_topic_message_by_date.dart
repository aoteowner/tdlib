import '../tdapi.dart';

class GetSavedMessagesTopicMessageByDate extends TdFunction {
  /// Returns the last message sent in a Saved Messages topic no later than the specified date
  const GetSavedMessagesTopicMessageByDate({
    required this.savedMessagesTopicId,
    required this.date,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which message will be returned
  final int savedMessagesTopicId;

  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  final int date;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "date": date,
      "@extra": extra,
    };
  }

  GetSavedMessagesTopicMessageByDate copyWith({
    int? savedMessagesTopicId,
    int? date,
  }) {
    return GetSavedMessagesTopicMessageByDate(
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
      date: date ?? this.date,
    );
  }

  static const CONSTRUCTOR = 'getSavedMessagesTopicMessageByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
