part of '../tdapi.dart';

class DeleteSavedMessagesTopicHistory extends TdFunction {

  /// Deletes all messages in a Saved Messages topic
  const DeleteSavedMessagesTopicHistory({
    required this.savedMessagesTopicId,
  });
  
  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages will be deleted
  final int savedMessagesTopicId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "@extra": extra,
    };
  }
  
  DeleteSavedMessagesTopicHistory copyWith({
    int? savedMessagesTopicId,
  }) => DeleteSavedMessagesTopicHistory(
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
  );

  static const CONSTRUCTOR = 'deleteSavedMessagesTopicHistory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
