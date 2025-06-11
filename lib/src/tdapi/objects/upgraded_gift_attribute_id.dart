import '../tdapi.dart';

class UpgradedGiftAttributeId extends TdObject {

  /// Contains identifier of an upgraded gift attribute to search for
  const UpgradedGiftAttributeId();
  
  /// a UpgradedGiftAttributeId return type can be :
  /// * [UpgradedGiftAttributeIdModel]
  /// * [UpgradedGiftAttributeIdSymbol]
  /// * [UpgradedGiftAttributeIdBackdrop]
  factory UpgradedGiftAttributeId.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }
  
  UpgradedGiftAttributeId copyWith() => const UpgradedGiftAttributeId();

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
  
  /// Parse from a json
  factory UpgradedGiftAttributeIdModel.fromJson(Map<String, dynamic> json) => UpgradedGiftAttributeIdModel(
    stickerId: int.parse(json['sticker_id']),
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
  }) => UpgradedGiftAttributeIdModel(
    stickerId: stickerId ?? this.stickerId,
  );

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
  
  /// Parse from a json
  factory UpgradedGiftAttributeIdSymbol.fromJson(Map<String, dynamic> json) => UpgradedGiftAttributeIdSymbol(
    stickerId: int.parse(json['sticker_id']),
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
  }) => UpgradedGiftAttributeIdSymbol(
    stickerId: stickerId ?? this.stickerId,
  );

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
  
  /// Parse from a json
  factory UpgradedGiftAttributeIdBackdrop.fromJson(Map<String, dynamic> json) => UpgradedGiftAttributeIdBackdrop(
    backdropId: json['backdrop_id'],
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
  }) => UpgradedGiftAttributeIdBackdrop(
    backdropId: backdropId ?? this.backdropId,
  );

  static const CONSTRUCTOR = 'upgradedGiftAttributeIdBackdrop';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
