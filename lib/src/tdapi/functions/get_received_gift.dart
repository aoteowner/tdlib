import '../tdapi.dart';

class GetReceivedGift extends TdFunction {

  /// Returns information about a received gift
  const GetReceivedGift({
    required this.receivedGiftId,
  });
  
  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "received_gift_id": receivedGiftId,
      "@extra": extra,
    };
  }
  
  GetReceivedGift copyWith({
    String? receivedGiftId,
  }) => GetReceivedGift(
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
  );

  static const CONSTRUCTOR = 'getReceivedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
