import '../tdapi.dart';

class SearchEmojis extends TdFunction {

  /// Searches for emojis by keywords. Supported only if the file database is enabled. Order of results is unspecified
  const SearchEmojis({
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
      "input_language_codes": inputLanguageCodes.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  SearchEmojis copyWith({
    String? text,
    List<String>? inputLanguageCodes,
  }) => SearchEmojis(
    text: text ?? this.text,
    inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes,
  );

  static const CONSTRUCTOR = 'searchEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
