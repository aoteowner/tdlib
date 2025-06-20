import '../tdapi.dart';

class SetPinnedForumTopics extends TdFunction {
  /// Changes the order of pinned forum topics; requires can_manage_topics right in the supergroup
  const SetPinnedForumTopics({
    required this.chatId,
    required this.messageThreadIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadIds] The new list of pinned forum topics
  final List<int> messageThreadIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_ids": messageThreadIds,
      "@extra": extra,
    };
  }

  SetPinnedForumTopics copyWith({
    int? chatId,
    List<int>? messageThreadIds,
  }) {
    return SetPinnedForumTopics(
      chatId: chatId ?? this.chatId,
      messageThreadIds: messageThreadIds ?? this.messageThreadIds,
    );
  }

  static const CONSTRUCTOR = 'setPinnedForumTopics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
