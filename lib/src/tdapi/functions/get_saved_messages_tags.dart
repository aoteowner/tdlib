import '../tdapi.dart';

class GetSavedMessagesTags extends TdFunction {
  /// Returns tags used in Saved Messages or a Saved Messages topic
  const GetSavedMessagesTags({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags will be returned; pass 0 to get all Saved Messages tags
  final int savedMessagesTopicId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "@extra": extra,
    };
  }

  GetSavedMessagesTags copyWith({
    int? savedMessagesTopicId,
  }) {
    return GetSavedMessagesTags(
      savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    );
  }

  static const CONSTRUCTOR = 'getSavedMessagesTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
