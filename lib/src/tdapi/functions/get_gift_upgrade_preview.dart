import '../tdapi.dart';

class GetGiftUpgradePreview extends TdFunction {

  /// Returns examples of possible upgraded gifts for a regular gift
  const GetGiftUpgradePreview({
    required this.giftId,
  });
  
  /// [giftId] Identifier of the gift
  final int giftId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift_id": giftId,
      "@extra": extra,
    };
  }
  
  GetGiftUpgradePreview copyWith({
    int? giftId,
  }) => GetGiftUpgradePreview(
    giftId: giftId ?? this.giftId,
  );

  static const CONSTRUCTOR = 'getGiftUpgradePreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
