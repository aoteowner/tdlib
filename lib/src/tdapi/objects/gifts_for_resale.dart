import '../tdapi.dart';

class GiftsForResale extends TdObject {
  /// Describes gifts available for resale
  const GiftsForResale({
    required this.totalCount,
    required this.gifts,
    required this.models,
    required this.symbols,
    required this.backdrops,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Total number of gifts found
  final int totalCount;

  /// [gifts] The gifts
  final List<GiftForResale> gifts;

  /// [models] Available models; for searchGiftsForResale requests without offset and attributes only
  final List<UpgradedGiftModelCount> models;

  /// [symbols] Available symbols; for searchGiftsForResale requests without offset and attributes only
  final List<UpgradedGiftSymbolCount> symbols;

  /// [backdrops] Available backdrops; for searchGiftsForResale requests without offset and attributes only
  final List<UpgradedGiftBackdropCount> backdrops;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory GiftsForResale.fromJson(Map<String, dynamic> json) => GiftsForResale(
        totalCount: json['total_count'] ?? 0,
        gifts: json['gifts'] == null
            ? <GiftForResale>[]
            : (json['gifts'] as List)
                .map((e) => GiftForResale.fromJson(e ?? {}))
                .toList(),
        models: json['models'] == null
            ? <UpgradedGiftModelCount>[]
            : (json['models'] as List)
                .map((e) => UpgradedGiftModelCount.fromJson(e ?? {}))
                .toList(),
        symbols: json['symbols'] == null
            ? <UpgradedGiftSymbolCount>[]
            : (json['symbols'] as List)
                .map((e) => UpgradedGiftSymbolCount.fromJson(e ?? {}))
                .toList(),
        backdrops: json['backdrops'] == null
            ? <UpgradedGiftBackdropCount>[]
            : (json['backdrops'] as List)
                .map((e) => UpgradedGiftBackdropCount.fromJson(e ?? {}))
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
      "gifts": gifts.map((e) => e.toJson()).toList(),
      "models": models.map((e) => e.toJson()).toList(),
      "symbols": symbols.map((e) => e.toJson()).toList(),
      "backdrops": backdrops.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  GiftsForResale copyWith({
    int? totalCount,
    List<GiftForResale>? gifts,
    List<UpgradedGiftModelCount>? models,
    List<UpgradedGiftSymbolCount>? symbols,
    List<UpgradedGiftBackdropCount>? backdrops,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return GiftsForResale(
      totalCount: totalCount ?? this.totalCount,
      gifts: gifts ?? this.gifts,
      models: models ?? this.models,
      symbols: symbols ?? this.symbols,
      backdrops: backdrops ?? this.backdrops,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'giftsForResale';

  @override
  String getConstructor() => CONSTRUCTOR;
}
