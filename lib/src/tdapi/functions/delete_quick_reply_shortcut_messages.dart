part of '../tdapi.dart';

class DeleteQuickReplyShortcutMessages extends TdFunction {

  /// Deletes specified quick reply messages
  const DeleteQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messageIds,
  });
  
  /// [shortcutId] Unique identifier of the quick reply shortcut to which the messages belong
  final int shortcutId;

  /// [messageIds] Unique identifiers of the messages
  final List<int> messageIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  DeleteQuickReplyShortcutMessages copyWith({
    int? shortcutId,
    List<int>? messageIds,
  }) => DeleteQuickReplyShortcutMessages(
    shortcutId: shortcutId ?? this.shortcutId,
    messageIds: messageIds ?? this.messageIds,
  );

  static const CONSTRUCTOR = 'deleteQuickReplyShortcutMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
