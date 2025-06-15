import '../tdapi.dart';

class AddQuickReplyShortcutMessage extends TdFunction {
  /// Adds a message to a quick reply shortcut. If shortcut doesn't exist and there are less than getOption("quick_reply_shortcut_count_max") shortcuts, then a new shortcut is created.. The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding the new message. Returns the added message
  const AddQuickReplyShortcutMessage({
    required this.shortcutName,
    required this.replyToMessageId,
    required this.inputMessageContent,
  });

  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [replyToMessageId] Identifier of a quick reply message in the same shortcut to be replied; pass 0 if none
  final int replyToMessageId;

  /// [inputMessageContent] The content of the message to be added; inputMessagePoll, inputMessageForwarded and inputMessageLocation with live_period aren't supported
  final InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_name": shortcutName,
      "reply_to_message_id": replyToMessageId,
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }

  AddQuickReplyShortcutMessage copyWith({
    String? shortcutName,
    int? replyToMessageId,
    InputMessageContent? inputMessageContent,
  }) {
    return AddQuickReplyShortcutMessage(
      shortcutName: shortcutName ?? this.shortcutName,
      replyToMessageId: replyToMessageId ?? this.replyToMessageId,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'addQuickReplyShortcutMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
