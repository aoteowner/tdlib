import '../tdapi.dart';

class TransferGift extends TdFunction {
  /// Sends an upgraded gift to another user or a channel chat
  const TransferGift({
    required this.businessConnectionId,
    required this.receivedGiftId,
    required this.newOwnerId,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request; for bots only
  final String businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [newOwnerId] Identifier of the user or the channel chat that will receive the gift
  final MessageSender newOwnerId;

  /// [starCount] The amount of Telegram Stars required to pay for the transfer
  final int starCount;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "received_gift_id": receivedGiftId,
      "new_owner_id": newOwnerId.toJson(),
      "star_count": starCount,
      "@extra": extra,
    };
  }

  TransferGift copyWith({
    String? businessConnectionId,
    String? receivedGiftId,
    MessageSender? newOwnerId,
    int? starCount,
  }) {
    return TransferGift(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      receivedGiftId: receivedGiftId ?? this.receivedGiftId,
      newOwnerId: newOwnerId ?? this.newOwnerId,
      starCount: starCount ?? this.starCount,
    );
  }

  static const CONSTRUCTOR = 'transferGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}
