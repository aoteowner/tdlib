part of '../tdapi.dart';

class EditQuickReplyMessage extends TdFunction {

  /// Asynchronously edits the text, media or caption of a quick reply message. Use quickReplyMessage.can_be_edited to check whether a message can be edited.. Media message can be edited only to a media message. The type of message content in an album can't be changed with exception of replacing a photo with a video or vice versa
  const EditQuickReplyMessage({
    required this.shortcutId,
    required this.messageId,
    required this.inputMessageContent,
  });
  
  /// [shortcutId] Unique identifier of the quick reply shortcut with the message
  final int shortcutId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [inputMessageContent] New content of the message. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "message_id": messageId,
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }
  
  EditQuickReplyMessage copyWith({
    int? shortcutId,
    int? messageId,
    InputMessageContent? inputMessageContent,
  }) => EditQuickReplyMessage(
    shortcutId: shortcutId ?? this.shortcutId,
    messageId: messageId ?? this.messageId,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'editQuickReplyMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
