import '../tdapi.dart';

class GetKeywordEmojis extends TdFunction {

  /// Return emojis matching the keyword. Supported only if the file database is enabled. Order of results is unspecified
  const GetKeywordEmojis({
    required this.text,
    required this.inputLanguageCodes,
  });
  
  /// [text] Text to search for
  final String text;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's input language; may be empty if unknown
  final List<String> inputLanguageCodes;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "input_language_codes": inputLanguageCodes,
      "@extra": extra,
    };
  }
  
  GetKeywordEmojis copyWith({
    String? text,
    List<String>? inputLanguageCodes,
  }) => GetKeywordEmojis(
    text: text ?? this.text,
    inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes,
  );

  static const CONSTRUCTOR = 'getKeywordEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
