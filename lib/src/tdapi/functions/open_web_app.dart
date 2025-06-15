import '../tdapi.dart';

class OpenWebApp extends TdFunction {
  /// Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert about data sent to the bot must be shown once
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    required this.messageThreadId,
    this.replyTo,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats
  final int chatId;

  /// [botUserId] Identifier of the bot, providing the Web App. If the bot is restricted for the current user, then show an error instead of calling the method
  final int botUserId;

  /// [url] The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
  final String url;

  /// [messageThreadId] If not 0, the message thread identifier in which the message will be sent
  final int messageThreadId;

  /// [replyTo] Information about the message or story to be replied in the message sent by the Web App; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "url": url,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
      "parameters": parameters.toJson(),
      "@extra": extra,
    };
  }

  OpenWebApp copyWith({
    int? chatId,
    int? botUserId,
    String? url,
    int? messageThreadId,
    InputMessageReplyTo? replyTo,
    WebAppOpenParameters? parameters,
  }) {
    return OpenWebApp(
      chatId: chatId ?? this.chatId,
      botUserId: botUserId ?? this.botUserId,
      url: url ?? this.url,
      messageThreadId: messageThreadId ?? this.messageThreadId,
      replyTo: replyTo ?? this.replyTo,
      parameters: parameters ?? this.parameters,
    );
  }

  static const CONSTRUCTOR = 'openWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
