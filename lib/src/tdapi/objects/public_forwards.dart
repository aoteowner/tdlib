import '../tdapi.dart';

class PublicForwards extends TdObject {
  /// Represents a list of public forwards and reposts as a story of a message or a story
  const PublicForwards({
    required this.totalCount,
    required this.forwards,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of messages and stories found
  final int totalCount;

  /// [forwards] List of found public forwards and reposts
  final List<PublicForward> forwards;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory PublicForwards.fromJson(Map<String, dynamic> json) => PublicForwards(
        totalCount: json['total_count'] ?? 0,
        forwards: json['forwards'] == null
            ? <PublicForward>[]
            : (json['forwards'] as List)
                .map((e) => PublicForward.fromJson(e ?? {}))
                .toList(),
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "forwards": forwards.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  PublicForwards copyWith({
    int? totalCount,
    List<PublicForward>? forwards,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return PublicForwards(
      totalCount: totalCount ?? this.totalCount,
      forwards: forwards ?? this.forwards,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'publicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}
