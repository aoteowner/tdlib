import '../tdapi.dart';

class SentGift extends TdObject {

  /// Represents content of a gift received by a user or a channel chat
  const SentGift();
  
  /// a SentGift return type can be :
  /// * [SentGiftRegular]
  /// * [SentGiftUpgraded]
  factory SentGift.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SentGiftRegular.CONSTRUCTOR:
        return SentGiftRegular.fromJson(json);
      case SentGiftUpgraded.CONSTRUCTOR:
        return SentGiftUpgraded.fromJson(json);
      default:
        return const SentGift();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SentGift copyWith() => const SentGift();

  static const CONSTRUCTOR = 'sentGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SentGiftRegular extends SentGift {

  /// Regular gift
  const SentGiftRegular({
    required this.gift,
  });
  
  /// [gift] The gift
  final Gift gift;
  
  /// Parse from a json
  factory SentGiftRegular.fromJson(Map<String, dynamic> json) => SentGiftRegular(
    gift: Gift.fromJson(json['gift']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
    };
  }
  
  @override
  SentGiftRegular copyWith({
    Gift? gift,
  }) => SentGiftRegular(
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'sentGiftRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SentGiftUpgraded extends SentGift {

  /// Upgraded gift
  const SentGiftUpgraded({
    required this.gift,
  });
  
  /// [gift] The gift
  final UpgradedGift gift;
  
  /// Parse from a json
  factory SentGiftUpgraded.fromJson(Map<String, dynamic> json) => SentGiftUpgraded(
    gift: UpgradedGift.fromJson(json['gift']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
    };
  }
  
  @override
  SentGiftUpgraded copyWith({
    UpgradedGift? gift,
  }) => SentGiftUpgraded(
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'sentGiftUpgraded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
