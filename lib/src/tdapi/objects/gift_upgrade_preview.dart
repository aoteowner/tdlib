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
    models: json['models'] == null ? [] :(json['models'] as List).map((e) => UpgradedGiftModel.fromJson(e ?? {})).toList(),
    symbols: json['symbols'] == null ? [] :(json['symbols'] as List).map((e) => UpgradedGiftSymbol.fromJson(e ?? {})).toList(),
    backdrops: json['backdrops'] == null ? [] :(json['backdrops'] as List).map((e) => UpgradedGiftBackdrop.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "models": models.map((e) => e.toJson()).toList(),
      "symbols": symbols.map((e) => e.toJson()).toList(),
      "backdrops": backdrops.map((e) => e.toJson()).toList(),
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
