import '../tdapi.dart';

class SearchStringsByPrefix extends TdFunction {
  /// Searches specified query by word prefixes in the provided strings. Returns 0-based positions of strings that matched. Can be called synchronously
  const SearchStringsByPrefix({
    required this.strings,
    required this.query,
    required this.limit,
    required this.returnNoneForEmptyQuery,
  });

  /// [strings] The strings to search in for the query
  final List<String> strings;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of objects to return
  final int limit;

  /// [returnNoneForEmptyQuery] Pass true to receive no results for an empty query
  final bool returnNoneForEmptyQuery;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "strings": strings,
      "query": query,
      "limit": limit,
      "return_none_for_empty_query": returnNoneForEmptyQuery,
      "@extra": extra,
    };
  }

  SearchStringsByPrefix copyWith({
    List<String>? strings,
    String? query,
    int? limit,
    bool? returnNoneForEmptyQuery,
  }) {
    return SearchStringsByPrefix(
      strings: strings ?? this.strings,
      query: query ?? this.query,
      limit: limit ?? this.limit,
      returnNoneForEmptyQuery:
          returnNoneForEmptyQuery ?? this.returnNoneForEmptyQuery,
    );
  }

  static const CONSTRUCTOR = 'searchStringsByPrefix';

  @override
  String getConstructor() => CONSTRUCTOR;
}
