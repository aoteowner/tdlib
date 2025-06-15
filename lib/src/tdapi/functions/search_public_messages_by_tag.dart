import '../tdapi.dart';

class SearchPublicMessagesByTag extends TdFunction {
  /// Searches for public channel posts containing the given hashtag or cashtag. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  const SearchPublicMessagesByTag({
    required this.tag,
    required this.offset,
    required this.limit,
  });

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }

  SearchPublicMessagesByTag copyWith({
    String? tag,
    String? offset,
    int? limit,
  }) {
    return SearchPublicMessagesByTag(
      tag: tag ?? this.tag,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'searchPublicMessagesByTag';

  @override
  String getConstructor() => CONSTRUCTOR;
}
