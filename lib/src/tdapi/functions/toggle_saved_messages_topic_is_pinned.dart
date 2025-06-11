import '../tdapi.dart';

class ToggleSavedMessagesTopicIsPinned extends TdFunction {

  /// Changes the pinned state of a Saved Messages topic. There can be up to getOption("pinned_saved_messages_topic_count_max") pinned topics. The limit can be increased with Telegram Premium
  const ToggleSavedMessagesTopicIsPinned({
    required this.savedMessagesTopicId,
    required this.isPinned,
  });
  
  /// [savedMessagesTopicId] Identifier of Saved Messages topic to pin or unpin
  final int savedMessagesTopicId;

  /// [isPinned] Pass true to pin the topic; pass false to unpin it
  final bool isPinned;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_messages_topic_id": savedMessagesTopicId,
      "is_pinned": isPinned,
      "@extra": extra,
    };
  }
  
  ToggleSavedMessagesTopicIsPinned copyWith({
    int? savedMessagesTopicId,
    bool? isPinned,
  }) => ToggleSavedMessagesTopicIsPinned(
    savedMessagesTopicId: savedMessagesTopicId ?? this.savedMessagesTopicId,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'toggleSavedMessagesTopicIsPinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
