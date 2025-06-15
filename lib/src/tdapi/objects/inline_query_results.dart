import '../tdapi.dart';

class InlineQueryResults extends TdObject {
  /// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
  const InlineQueryResults({
    required this.inlineQueryId,
    this.button,
    required this.results,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [button] Button to be shown above inline query results; may be null
  final InlineQueryResultsButton? button;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InlineQueryResults.fromJson(Map<String, dynamic> json) =>
      InlineQueryResults(
        inlineQueryId: int.tryParse(json['inline_query_id'] ?? '') ?? 0,
        button: InlineQueryResultsButton.fromJson(json['button'] ?? {}),
        results: json['results'] == null
            ? <InlineQueryResult>[]
            : (json['results'] as List)
                .map((e) => InlineQueryResult.fromJson(e ?? {}))
                .toList(),
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "button": button?.toJson(),
      "results": results.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  InlineQueryResults copyWith({
    int? inlineQueryId,
    InlineQueryResultsButton? button,
    List<InlineQueryResult>? results,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return InlineQueryResults(
      inlineQueryId: inlineQueryId ?? this.inlineQueryId,
      button: button ?? this.button,
      results: results ?? this.results,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'inlineQueryResults';

  @override
  String getConstructor() => CONSTRUCTOR;
}
