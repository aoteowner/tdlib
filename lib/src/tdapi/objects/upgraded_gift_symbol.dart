import '../tdapi.dart';

class UpgradedGiftSymbol extends TdObject {

  /// Describes a symbol shown on the pattern of an upgraded gift
  const UpgradedGiftSymbol({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });
  
  /// [name] Name of the symbol
  final String name;

  /// [sticker] The sticker representing the symbol
  final Sticker sticker;

  /// [rarityPerMille] The number of upgraded gifts that receive this symbol for each 1000 gifts upgraded
  final int rarityPerMille;
  
  /// Parse from a json
  factory UpgradedGiftSymbol.fromJson(Map<String, dynamic> json) => UpgradedGiftSymbol(
    name: json['name'],
    sticker: Sticker.fromJson(json['sticker']),
    rarityPerMille: json['rarity_per_mille'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "sticker": sticker.toJson(),
      "rarity_per_mille": rarityPerMille,
    };
  }
  
  UpgradedGiftSymbol copyWith({
    String? name,
    Sticker? sticker,
    int? rarityPerMille,
  }) => UpgradedGiftSymbol(
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
    rarityPerMille: rarityPerMille ?? this.rarityPerMille,
  );

  static const CONSTRUCTOR = 'upgradedGiftSymbol';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
