import '../tdapi.dart';

class TrendingStickerSets extends TdObject {
  /// Represents a list of trending sticker sets
  const TrendingStickerSets({
    required this.totalCount,
    required this.sets,
    required this.isPremium,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of trending sticker sets
  final int totalCount;

  /// [sets] List of trending sticker sets
  final List<StickerSetInfo> sets;

  /// [isPremium] True, if the list contains sticker sets with premium stickers
  final bool isPremium;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TrendingStickerSets.fromJson(Map<String, dynamic> json) =>
      TrendingStickerSets(
        totalCount: json['total_count'] ?? 0,
        sets: json['sets'] == null
            ? <StickerSetInfo>[]
            : (json['sets'] as List)
                .map((e) => StickerSetInfo.fromJson(e ?? {}))
                .toList(),
        isPremium: json['is_premium'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "sets": sets.map((e) => e.toJson()).toList(),
      "is_premium": isPremium,
    };
  }

  TrendingStickerSets copyWith({
    int? totalCount,
    List<StickerSetInfo>? sets,
    bool? isPremium,
    dynamic extra,
    int? clientId,
  }) {
    return TrendingStickerSets(
      totalCount: totalCount ?? this.totalCount,
      sets: sets ?? this.sets,
      isPremium: isPremium ?? this.isPremium,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'trendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
