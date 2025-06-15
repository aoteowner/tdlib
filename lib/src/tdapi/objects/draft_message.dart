import '../tdapi.dart';

class DraftMessage extends TdObject {
  /// Contains information about a message draft
  const DraftMessage({
    this.replyTo,
    required this.date,
    required this.inputMessageText,
    required this.effectId,
  });

  /// [replyTo] Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
  final InputMessageReplyTo? replyTo;

  /// [date] Point in time (Unix timestamp) when the draft was created
  final int date;

  /// [inputMessageText] Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
  final InputMessageContent inputMessageText;

  /// [effectId] Identifier of the effect to apply to the message when it is sent; 0 if none
  final int effectId;

  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
        replyTo: InputMessageReplyTo.fromJson(json['reply_to'] ?? {}),
        date: json['date'] ?? 0,
        inputMessageText:
            InputMessageContent.fromJson(json['input_message_text'] ?? {}),
        effectId: int.tryParse(json['effect_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reply_to": replyTo?.toJson(),
      "date": date,
      "input_message_text": inputMessageText.toJson(),
      "effect_id": effectId,
    };
  }

  DraftMessage copyWith({
    InputMessageReplyTo? replyTo,
    int? date,
    InputMessageContent? inputMessageText,
    int? effectId,
  }) {
    return DraftMessage(
      replyTo: replyTo ?? this.replyTo,
      date: date ?? this.date,
      inputMessageText: inputMessageText ?? this.inputMessageText,
      effectId: effectId ?? this.effectId,
    );
  }

  static const CONSTRUCTOR = 'draftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
