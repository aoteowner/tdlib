import '../tdapi.dart';

class TextQuote extends TdObject {
  /// Describes manually or automatically chosen quote from another message
  const TextQuote({
    required this.text,
    required this.position,
    required this.isManual,
  });

  /// [text] Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text
  final FormattedText text;

  /// [position] Approximate quote position in the original message in UTF-16 code units as specified by the message sender
  final int position;

  /// [isManual] True, if the quote was manually chosen by the message sender
  final bool isManual;

  factory TextQuote.fromJson(Map<String, dynamic> json) => TextQuote(
        text: FormattedText.fromJson(json['text'] ?? {}),
        position: json['position'] ?? 0,
        isManual: json['is_manual'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "position": position,
      "is_manual": isManual,
    };
  }

  TextQuote copyWith({
    FormattedText? text,
    int? position,
    bool? isManual,
  }) {
    return TextQuote(
      text: text ?? this.text,
      position: position ?? this.position,
      isManual: isManual ?? this.isManual,
    );
  }

  static const CONSTRUCTOR = 'textQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
