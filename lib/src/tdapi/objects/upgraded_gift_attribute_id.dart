import '../tdapi.dart';

class UpgradedGiftAttributeId extends TdObject {
  /// Contains identifier of an upgraded gift attribute to search for
  const UpgradedGiftAttributeId();

  factory UpgradedGiftAttributeId.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UpgradedGiftAttributeIdModel.CONSTRUCTOR:
        return UpgradedGiftAttributeIdModel.fromJson(json);
      case UpgradedGiftAttributeIdSymbol.CONSTRUCTOR:
        return UpgradedGiftAttributeIdSymbol.fromJson(json);
      case UpgradedGiftAttributeIdBackdrop.CONSTRUCTOR:
        return UpgradedGiftAttributeIdBackdrop.fromJson(json);
      default:
        return const UpgradedGiftAttributeId();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  UpgradedGiftAttributeId copyWith() {
    return const UpgradedGiftAttributeId();
  }

  static const CONSTRUCTOR = 'upgradedGiftAttributeId';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpgradedGiftAttributeIdModel extends UpgradedGiftAttributeId {
  /// Identifier of a gift model
  const UpgradedGiftAttributeIdModel({
    required this.stickerId,
  });

  /// [stickerId] Identifier of the sticker representing the model
  final int stickerId;

  factory UpgradedGiftAttributeIdModel.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftAttributeIdModel(
        stickerId: int.tryParse(json['sticker_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_id": stickerId,
    };
  }

  @override
  UpgradedGiftAttributeIdModel copyWith({
    int? stickerId,
  }) {
    return UpgradedGiftAttributeIdModel(
      stickerId: stickerId ?? this.stickerId,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftAttributeIdModel';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpgradedGiftAttributeIdSymbol extends UpgradedGiftAttributeId {
  /// Identifier of a gift symbol
  const UpgradedGiftAttributeIdSymbol({
    required this.stickerId,
  });

  /// [stickerId] Identifier of the sticker representing the symbol
  final int stickerId;

  factory UpgradedGiftAttributeIdSymbol.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftAttributeIdSymbol(
        stickerId: int.tryParse(json['sticker_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_id": stickerId,
    };
  }

  @override
  UpgradedGiftAttributeIdSymbol copyWith({
    int? stickerId,
  }) {
    return UpgradedGiftAttributeIdSymbol(
      stickerId: stickerId ?? this.stickerId,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftAttributeIdSymbol';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpgradedGiftAttributeIdBackdrop extends UpgradedGiftAttributeId {
  /// Identifier of a gift backdrop
  const UpgradedGiftAttributeIdBackdrop({
    required this.backdropId,
  });

  /// [backdropId] Identifier of the backdrop
  final int backdropId;

  factory UpgradedGiftAttributeIdBackdrop.fromJson(Map<String, dynamic> json) =>
      UpgradedGiftAttributeIdBackdrop(
        backdropId: json['backdrop_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "backdrop_id": backdropId,
    };
  }

  @override
  UpgradedGiftAttributeIdBackdrop copyWith({
    int? backdropId,
  }) {
    return UpgradedGiftAttributeIdBackdrop(
      backdropId: backdropId ?? this.backdropId,
    );
  }

  static const CONSTRUCTOR = 'upgradedGiftAttributeIdBackdrop';

  @override
  String getConstructor() => CONSTRUCTOR;
}
