import '../tdapi.dart';

class DeleteSavedMessagesTopicMessagesByDate extends TdFunction {
  /// Deletes all messages between the specified dates in a Saved Messages topic. Messages sent in the last 30 seconds will not be deleted
  const DeleteSavedMessagesTopicMessagesByDate({
    required this.savedMessagesTopicId,
    required this.minDate,
    required this.maxDate,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages will be deleted
  final int savedMessagesTopicId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "min_date": minDate,
      "max_date": maxDate,
      "@extra": extra,
    };
  }

  DeleteSavedMessagesTopicMessagesByDate copyWith({
    int? savedMessagesTopicId,
    int? minDate,
    int? maxDate,
  }) {
    return DeleteSavedMessagesTopicMessagesByDate(
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
      minDate: minDate ?? this.minDate,
      maxDate: maxDate ?? this.maxDate,
    );
  }

  static const CONSTRUCTOR = 'deleteSavedMessagesTopicMessagesByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
