part of '../tdapi.dart';

class ReaddQuickReplyShortcutMessages extends TdFunction {

  /// Readds quick reply messages which failed to add. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.. If a message is readded, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be readded, null will be returned instead of the message
  const ReaddQuickReplyShortcutMessages({
    required this.shortcutName,
    required this.messageIds,
  });
  
  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [messageIds] Identifiers of the quick reply messages to readd. Message identifiers must be in a strictly increasing order
  final List<int> messageIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_name": shortcutName,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReaddQuickReplyShortcutMessages copyWith({
    String? shortcutName,
    List<int>? messageIds,
  }) => ReaddQuickReplyShortcutMessages(
    shortcutName: shortcutName ?? this.shortcutName,
    messageIds: messageIds ?? this.messageIds,
  );

  static const CONSTRUCTOR = 'readdQuickReplyShortcutMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
