import '../tdapi.dart';

class SendBusinessMessage extends TdFunction {
  /// Sends a message on behalf of a business account; for bots only. Returns the message after it was sent
  const SendBusinessMessage({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    required this.effectId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request
  final String businessConnectionId;

  /// [chatId] Target chat
  final int chatId;

  /// [replyTo] Information about the message to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [protectContent] Pass true if the content of the message must be protected from forwarding and saving
  final bool protectContent;

  /// [effectId] Identifier of the effect to apply to the message
  final int effectId;

  /// [replyMarkup] Markup for replying to the message; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "chat_id": chatId,
      "reply_to": replyTo?.toJson(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "effect_id": effectId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }

  SendBusinessMessage copyWith({
    String? businessConnectionId,
    int? chatId,
    InputMessageReplyTo? replyTo,
    bool? disableNotification,
    bool? protectContent,
    int? effectId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return SendBusinessMessage(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      chatId: chatId ?? this.chatId,
      replyTo: replyTo ?? this.replyTo,
      disableNotification: disableNotification ?? this.disableNotification,
      protectContent: protectContent ?? this.protectContent,
      effectId: effectId ?? this.effectId,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'sendBusinessMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
