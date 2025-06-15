import '../tdapi.dart';

class UpgradedGiftModel extends TdObject {
  /// Describes a model of an upgraded gift
  const UpgradedGiftModel({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });

  /// [name] Name of the model
  final String name;

  /// [sticker] The sticker representing the upgraded gift
  final Sticker sticker;

  /// [rarityPerMille] The number of upgraded gifts that receive this model for each 1000 gifts upgraded
  final int rarityPerMille;

  factory UpgradedGiftModel.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftModel(
        name: json['name'] ?? '',
        sticker: Sticker.fromJson(json['sticker'] ?? {}),
        rarityPerMille: json['rarity_per_mille'] ?? 0,
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

  UpgradedGiftModel copyWith({
    String? name,
    Sticker? sticker,
    int? rarityPerMille,
  }) {
    return UpgradedGiftModel(
      name: name ?? this.name,
      sticker: sticker ?? this.sticker,
      rarityPerMille: rarityPerMille ?? this.rarityPerMille,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftModel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
