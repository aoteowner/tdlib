part of '../tdapi.dart';

class SearchQuote extends TdFunction {

  /// Searches for a given quote in a text. Returns found quote start position in UTF-16 code units. Returns a 404 error if the quote is not found. Can be called synchronously
  const SearchQuote({
    required this.text,
    required this.quote,
    required this.quotePosition,
  });
  
  /// [text] Text in which to search for the quote
  final FormattedText text;

  /// [quote] Quote to search for
  final FormattedText quote;

  /// [quotePosition] Approximate quote position in UTF-16 code units
  final int quotePosition;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "quote": quote.toJson(),
      "quote_position": quotePosition,
      "@extra": extra,
    };
  }
  
  SearchQuote copyWith({
    FormattedText? text,
    FormattedText? quote,
    int? quotePosition,
  }) => SearchQuote(
    text: text ?? this.text,
    quote: quote ?? this.quote,
    quotePosition: quotePosition ?? this.quotePosition,
  );

  static const CONSTRUCTOR = 'searchQuote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
