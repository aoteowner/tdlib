part of '../tdapi.dart';

class GiftForResale extends TdObject {

  /// Describes a gift available for resale
  const GiftForResale({
    required this.gift,
    required this.receivedGiftId,
  });
  
  /// [gift] The gift
  final UpgradedGift gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current user; only for the gifts owned by the current user
  final String receivedGiftId;
  
  /// Parse from a json
  factory GiftForResale.fromJson(Map<String, dynamic> json) => GiftForResale(
    gift: UpgradedGift.fromJson(json['gift']),
    receivedGiftId: json['received_gift_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "received_gift_id": receivedGiftId,
    };
  }
  
  GiftForResale copyWith({
    UpgradedGift? gift,
    String? receivedGiftId,
  }) => GiftForResale(
    gift: gift ?? this.gift,
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
  );

  static const CONSTRUCTOR = 'giftForResale';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
