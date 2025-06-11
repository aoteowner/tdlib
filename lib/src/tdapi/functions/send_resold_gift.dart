import '../tdapi.dart';

class SendResoldGift extends TdFunction {

  /// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user. must be transferred using transferGift and can't be passed to the method
  const SendResoldGift({
    required this.giftName,
    required this.ownerId,
    required this.starCount,
  });
  
  /// [giftName] Name of the upgraded gift to send
  final String giftName;

  /// [ownerId] Identifier of the user or the channel chat that will receive the gift
  final MessageSender ownerId;

  /// [starCount] The amount of Telegram Stars required to pay for the gift
  final int starCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift_name": giftName,
      "owner_id": ownerId.toJson(),
      "star_count": starCount,
      "@extra": extra,
    };
  }
  
  SendResoldGift copyWith({
    String? giftName,
    MessageSender? ownerId,
    int? starCount,
  }) => SendResoldGift(
    giftName: giftName ?? this.giftName,
    ownerId: ownerId ?? this.ownerId,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'sendResoldGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
