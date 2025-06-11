import '../tdapi.dart';

class AddQuickReplyShortcutInlineQueryResultMessage extends TdFunction {

  /// Adds a message to a quick reply shortcut via inline bot. If shortcut doesn't exist and there are less than getOption("quick_reply_shortcut_count_max") shortcuts, then a new shortcut is created.. The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding the new message. Returns the added message
  const AddQuickReplyShortcutInlineQueryResultMessage({
    required this.shortcutName,
    required this.replyToMessageId,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
  });
  
  /// [shortcutName] Name of the target shortcut
  final String shortcutName;

  /// [replyToMessageId] Identifier of a quick reply message in the same shortcut to be replied; pass 0 if none
  final int replyToMessageId;

  /// [queryId] Identifier of the inline query
  final int queryId;

  /// [resultId] Identifier of the inline query result
  final String resultId;

  /// [hideViaBot] Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
  final bool hideViaBot;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_name": shortcutName,
      "reply_to_message_id": replyToMessageId,
      "query_id": queryId,
      "result_id": resultId,
      "hide_via_bot": hideViaBot,
      "@extra": extra,
    };
  }
  
  AddQuickReplyShortcutInlineQueryResultMessage copyWith({
    String? shortcutName,
    int? replyToMessageId,
    int? queryId,
    String? resultId,
    bool? hideViaBot,
  }) => AddQuickReplyShortcutInlineQueryResultMessage(
    shortcutName: shortcutName ?? this.shortcutName,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    queryId: queryId ?? this.queryId,
    resultId: resultId ?? this.resultId,
    hideViaBot: hideViaBot ?? this.hideViaBot,
  );

  static const CONSTRUCTOR = 'addQuickReplyShortcutInlineQueryResultMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
