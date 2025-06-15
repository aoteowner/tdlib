import '../tdapi.dart';

class UpgradedGiftSymbolCount extends TdObject {
  /// Describes a symbol shown on the pattern of an upgraded gift
  const UpgradedGiftSymbolCount({
    required this.symbol,
    required this.totalCount,
  });

  /// [symbol] The symbol
  final UpgradedGiftSymbol symbol;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;

  factory UpgradedGiftSymbolCount.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftSymbolCount(
        symbol: UpgradedGiftSymbol.fromJson(json['symbol'] ?? {}),
        totalCount: json['total_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "symbol": symbol.toJson(),
      "total_count": totalCount,
    };
  }

  UpgradedGiftSymbolCount copyWith({
    UpgradedGiftSymbol? symbol,
    int? totalCount,
  }) {
    return UpgradedGiftSymbolCount(
      symbol: symbol ?? this.symbol,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftSymbolCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
