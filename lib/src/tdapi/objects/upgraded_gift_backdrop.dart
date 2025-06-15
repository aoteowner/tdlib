import '../tdapi.dart';

class UpgradedGiftBackdrop extends TdObject {
  /// Describes a backdrop of an upgraded gift
  const UpgradedGiftBackdrop({
    required this.id,
    required this.name,
    required this.colors,
    required this.rarityPerMille,
  });

  /// [id] Unique identifier of the backdrop
  final int id;

  /// [name] Name of the backdrop
  final String name;

  /// [colors] Colors of the backdrop
  final UpgradedGiftBackdropColors colors;

  /// [rarityPerMille] The number of upgraded gifts that receive this backdrop for each 1000 gifts upgraded
  final int rarityPerMille;

  factory UpgradedGiftBackdrop.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftBackdrop(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        colors: UpgradedGiftBackdropColors.fromJson(json['colors'] ?? {}),
        rarityPerMille: json['rarity_per_mille'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "name": name,
      "colors": colors.toJson(),
      "rarity_per_mille": rarityPerMille,
    };
  }

  UpgradedGiftBackdrop copyWith({
    int? id,
    String? name,
    UpgradedGiftBackdropColors? colors,
    int? rarityPerMille,
  }) {
    return UpgradedGiftBackdrop(
      id: id ?? this.id,
      name: name ?? this.name,
      colors: colors ?? this.colors,
      rarityPerMille: rarityPerMille ?? this.rarityPerMille,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftBackdrop';

  @override
  String getConstructor() => CONSTRUCTOR;
}
