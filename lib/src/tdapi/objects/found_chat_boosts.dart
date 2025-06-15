import '../tdapi.dart';

class FoundChatBoosts extends TdObject {
  /// Contains a list of boosts applied to a chat
  const FoundChatBoosts({
    required this.totalCount,
    required this.boosts,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Total number of boosts applied to the chat
  final int totalCount;

  /// [boosts] List of boosts
  final List<ChatBoost> boosts;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory FoundChatBoosts.fromJson(Map<String, dynamic> json) =>
      FoundChatBoosts(
        totalCount: json['total_count'] ?? 0,
        boosts: json['boosts'] == null
            ? <ChatBoost>[]
            : (json['boosts'] as List)
                .map((e) => ChatBoost.fromJson(e ?? {}))
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
      "boosts": boosts.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  FoundChatBoosts copyWith({
    int? totalCount,
    List<ChatBoost>? boosts,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return FoundChatBoosts(
      totalCount: totalCount ?? this.totalCount,
      boosts: boosts ?? this.boosts,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'foundChatBoosts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
