import '../tdapi.dart';

class SetPinnedSavedMessagesTopics extends TdFunction {
  /// Changes the order of pinned Saved Messages topics
  const SetPinnedSavedMessagesTopics({
    required this.savedMessagesTopicIds,
  });

  /// [savedMessagesTopicIds] Identifiers of the new pinned Saved Messages topics
  final List<int> savedMessagesTopicIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_ids": savedMessagesTopicIds,
      "@extra": extra,
    };
  }

  SetPinnedSavedMessagesTopics copyWith({
    List<int>? savedMessagesTopicIds,
  }) {
    return SetPinnedSavedMessagesTopics(
      savedMessagesTopicIds:
          savedMessagesTopicIds ?? this.savedMessagesTopicIds,
    );
  }

  static const CONSTRUCTOR = 'setPinnedSavedMessagesTopics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
