import '../tdapi.dart';

class InputTextQuote extends TdObject {

  /// Describes manually chosen quote from another message
  const InputTextQuote({
    required this.text,
    required this.position,
  });
  
  /// [text] Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote
  final FormattedText text;

  /// [position] Quote position in the original message in UTF-16 code units
  final int position;
  
  /// Parse from a json
  factory InputTextQuote.fromJson(Map<String, dynamic> json) => InputTextQuote(
    text: FormattedText.fromJson(json['text']),
    position: json['position'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "position": position,
    };
  }
  
  InputTextQuote copyWith({
    FormattedText? text,
    int? position,
  }) => InputTextQuote(
    text: text ?? this.text,
    position: position ?? this.position,
  );

  static const CONSTRUCTOR = 'inputTextQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
