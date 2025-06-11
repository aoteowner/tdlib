import '../tdapi.dart';

class GiftUpgradePreview extends TdObject {

  /// Contains examples of possible upgraded gifts for the given regular gift
  const GiftUpgradePreview({
    required this.models,
    required this.symbols,
    required this.backdrops,
    this.extra,
    this.clientId,
  });
  
  /// [models] Examples of possible models that can be chosen for the gift after upgrade
  final List<UpgradedGiftModel> models;

  /// [symbols] Examples of possible symbols that can be chosen for the gift after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// [backdrops] Examples of possible backdrops that can be chosen for the gift after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GiftUpgradePreview.fromJson(Map<String, dynamic> json) => GiftUpgradePreview(
    models: List<UpgradedGiftModel>.from((json['models'] ?? []).map((item) => UpgradedGiftModel.fromJson(item)).toList()),
    symbols: List<UpgradedGiftSymbol>.from((json['symbols'] ?? []).map((item) => UpgradedGiftSymbol.fromJson(item)).toList()),
    backdrops: List<UpgradedGiftBackdrop>.from((json['backdrops'] ?? []).map((item) => UpgradedGiftBackdrop.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "models": models.map((i) => i.toJson()).toList(),
      "symbols": symbols.map((i) => i.toJson()).toList(),
      "backdrops": backdrops.map((i) => i.toJson()).toList(),
    };
  }
  
  GiftUpgradePreview copyWith({
    List<UpgradedGiftModel>? models,
    List<UpgradedGiftSymbol>? symbols,
    List<UpgradedGiftBackdrop>? backdrops,
    dynamic extra,
    int? clientId,
  }) => GiftUpgradePreview(
    models: models ?? this.models,
    symbols: symbols ?? this.symbols,
    backdrops: backdrops ?? this.backdrops,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'giftUpgradePreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
