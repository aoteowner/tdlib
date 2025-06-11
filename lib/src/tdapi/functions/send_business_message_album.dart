import '../tdapi.dart';

class SendBusinessMessageAlbum extends TdFunction {

  /// Sends 2-10 messages grouped together into an album on behalf of a business account; for bots only. Currently, only audio, document, photo and video messages can be grouped into an album.. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
  const SendBusinessMessageAlbum({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    required this.effectId,
    required this.inputMessageContents,
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

  /// [inputMessageContents] Contents of messages to be sent. At most 10 messages can be added to an album. All messages must have the same value of show_caption_above_media
  final List<InputMessageContent> inputMessageContents;
  
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
      "input_message_contents": inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SendBusinessMessageAlbum copyWith({
    String? businessConnectionId,
    int? chatId,
    InputMessageReplyTo? replyTo,
    bool? disableNotification,
    bool? protectContent,
    int? effectId,
    List<InputMessageContent>? inputMessageContents,
  }) => SendBusinessMessageAlbum(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    chatId: chatId ?? this.chatId,
    replyTo: replyTo ?? this.replyTo,
    disableNotification: disableNotification ?? this.disableNotification,
    protectContent: protectContent ?? this.protectContent,
    effectId: effectId ?? this.effectId,
    inputMessageContents: inputMessageContents ?? this.inputMessageContents,
  );

  static const CONSTRUCTOR = 'sendBusinessMessageAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
