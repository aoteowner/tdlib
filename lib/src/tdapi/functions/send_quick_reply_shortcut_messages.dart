import '../tdapi.dart';

class SendQuickReplyShortcutMessages extends TdFunction {
  /// Sends messages from a quick reply shortcut. Requires Telegram Business subscription. Can't be used to send paid messages
  const SendQuickReplyShortcutMessages({
    required this.chatId,
    required this.shortcutId,
    required this.sendingId,
  });

  /// [chatId] Identifier of the chat to which to send messages. The chat must be a private chat with a regular user
  final int chatId;

  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;

  /// [sendingId] Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
  final int sendingId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "shortcut_id": shortcutId,
      "sending_id": sendingId,
      "@extra": extra,
    };
  }

  SendQuickReplyShortcutMessages copyWith({
    int? chatId,
    int? shortcutId,
    int? sendingId,
  }) {
    return SendQuickReplyShortcutMessages(
      chatId: chatId ?? this.chatId,
      shortcutId: shortcutId ?? this.shortcutId,
      sendingId: sendingId ?? this.sendingId,
    );
  }

  static const CONSTRUCTOR = 'sendQuickReplyShortcutMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
