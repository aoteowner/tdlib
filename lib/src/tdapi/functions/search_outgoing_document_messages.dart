import '../tdapi.dart';

class SearchOutgoingDocumentMessages extends TdFunction {
  /// Searches for outgoing messages with content of the type messageDocument in all chats except secret chats. Returns the results in reverse chronological order
  const SearchOutgoingDocumentMessages({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for in document file name and message caption
  final String query;

  /// [limit] The maximum number of messages to be returned; up to 100
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }

  SearchOutgoingDocumentMessages copyWith({
    String? query,
    int? limit,
  }) {
    return SearchOutgoingDocumentMessages(
      query: query ?? this.query,
      limit: limit ?? this.limit,
    );
  }

  static const CONSTRUCTOR = 'searchOutgoingDocumentMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
