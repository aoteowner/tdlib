part of '../tdapi.dart';

class UpgradeGift extends TdFunction {

  /// Upgrades a regular gift
  const UpgradeGift({
    required this.businessConnectionId,
    required this.receivedGiftId,
    required this.keepOriginalDetails,
    required this.starCount,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [keepOriginalDetails] Pass true to keep the original gift text, sender and receiver in the upgraded gift
  final bool keepOriginalDetails;

  /// [starCount] The amount of Telegram Stars required to pay for the upgrade. It the gift has prepaid_upgrade_star_count
  final int starCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "received_gift_id": receivedGiftId,
      "keep_original_details": keepOriginalDetails,
      "star_count": starCount,
      "@extra": extra,
    };
  }
  
  UpgradeGift copyWith({
    String? businessConnectionId,
    String? receivedGiftId,
    bool? keepOriginalDetails,
    int? starCount,
  }) => UpgradeGift(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
    keepOriginalDetails: keepOriginalDetails ?? this.keepOriginalDetails,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'upgradeGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
