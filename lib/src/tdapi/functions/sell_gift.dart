import '../tdapi.dart';

class SellGift extends TdFunction {

  /// Sells a gift for Telegram Stars
  const SellGift({
    required this.businessConnectionId,
    required this.receivedGiftId,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "received_gift_id": receivedGiftId,
      "@extra": extra,
    };
  }
  
  SellGift copyWith({
    String? businessConnectionId,
    String? receivedGiftId,
  }) => SellGift(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
  );

  static const CONSTRUCTOR = 'sellGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
