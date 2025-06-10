part of '../tdapi.dart';

class AddQuickReplyShortcutMessageAlbum extends TdFunction {

  /// Adds 2-10 messages grouped together into an album to a quick reply shortcut. Currently, only audio, document, photo and video messages can be grouped into an album.. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
  const AddQuickReplyShortcutMessageAlbum({
    required this.shortcutName,
    required this.replyToMessageId,
    required this.inputMessageContents,
  });
  
  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [replyToMessageId] Identifier of a quick reply message in the same shortcut to be replied; pass 0 if none
  final int replyToMessageId;

  /// [inputMessageContents] Contents of messages to be sent. At most 10 messages can be added to an album. All messages must have the same value of show_caption_above_media
  final List<InputMessageContent> inputMessageContents;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_name": shortcutName,
      "reply_to_message_id": replyToMessageId,
      "input_message_contents": inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  AddQuickReplyShortcutMessageAlbum copyWith({
    String? shortcutName,
    int? replyToMessageId,
    List<InputMessageContent>? inputMessageContents,
  }) => AddQuickReplyShortcutMessageAlbum(
    shortcutName: shortcutName ?? this.shortcutName,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    inputMessageContents: inputMessageContents ?? this.inputMessageContents,
  );

  static const CONSTRUCTOR = 'addQuickReplyShortcutMessageAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
