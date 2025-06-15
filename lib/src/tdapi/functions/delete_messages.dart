import '../tdapi.dart';

class DeleteMessages extends TdFunction {
  /// Deletes messages
  const DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted. Use messageProperties.can_be_deleted_only_for_self and messageProperties.can_be_deleted_for_all_users to get suitable messages
  final List<int> messageIds;

  /// [revoke] Pass true to delete messages for all chat members. Always true for supergroups, channels and secret chats
  final bool revoke;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds,
      "revoke": revoke,
      "@extra": extra,
    };
  }

  DeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? revoke,
  }) {
    return DeleteMessages(
      chatId: chatId ?? this.chatId,
      messageIds: messageIds ?? this.messageIds,
      revoke: revoke ?? this.revoke,
    );
  }

  static const CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
