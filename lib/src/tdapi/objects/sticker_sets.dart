import '../tdapi.dart';

class StickerSets extends TdObject {
  /// Represents a list of sticker sets
  const StickerSets({
    required this.totalCount,
    required this.sets,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of sticker sets found
  final int totalCount;

  /// [sets] List of sticker sets
  final List<StickerSetInfo> sets;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory StickerSets.fromJson(Map<String, dynamic> json) => StickerSets(
        totalCount: json['total_count'] ?? 0,
        sets: json['sets'] == null
            ? <StickerSetInfo>[]
            : (json['sets'] as List)
                .map((e) => StickerSetInfo.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "sets": sets.map((e) => e.toJson()).toList(),
    };
  }

  StickerSets copyWith({
    int? totalCount,
    List<StickerSetInfo>? sets,
    dynamic extra,
    int? clientId,
  }) {
    return StickerSets(
      totalCount: totalCount ?? this.totalCount,
      sets: sets ?? this.sets,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'stickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
