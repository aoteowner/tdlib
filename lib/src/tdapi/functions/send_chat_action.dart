import '../tdapi.dart';

class SendChatAction extends TdFunction {
  /// Sends a notification about user activity in a chat
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.businessConnectionId,
    this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the action was performed
  final int messageThreadId;

  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// [action] The action description; pass null to cancel the currently active action
  final ChatAction? action;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "business_connection_id": businessConnectionId,
      "action": action?.toJson(),
      "@extra": extra,
    };
  }

  SendChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    String? businessConnectionId,
    ChatAction? action,
  }) {
    return SendChatAction(
      chatId: chatId ?? this.chatId,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      action: action ?? this.action,
    );
  }

  static const CONSTRUCTOR = 'sendChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
