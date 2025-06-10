part of '../tdapi.dart';

class SendMessageAlbum extends TdFunction {

  /// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album.. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
  const SendMessageAlbum({
    required this.chatId,
    required this.messageThreadId,
    this.replyTo,
    this.options,
    required this.inputMessageContents,
  });
  
  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the messages will be sent
  final int messageThreadId;

  /// [replyTo] Information about the message or story to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [options] Options to be used to send the messages; pass null to use default options
  final MessageSendOptions? options;

  /// [inputMessageContents] Contents of messages to be sent. At most 10 messages can be added to an album. All messages must have the same value of show_caption_above_media
  final List<InputMessageContent> inputMessageContents;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
      "options": options?.toJson(),
      "input_message_contents": inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SendMessageAlbum copyWith({
    int? chatId,
    int? messageThreadId,
    InputMessageReplyTo? replyTo,
    MessageSendOptions? options,
    List<InputMessageContent>? inputMessageContents,
  }) => SendMessageAlbum(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyTo: replyTo ?? this.replyTo,
    options: options ?? this.options,
    inputMessageContents: inputMessageContents ?? this.inputMessageContents,
  );

  static const CONSTRUCTOR = 'sendMessageAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
