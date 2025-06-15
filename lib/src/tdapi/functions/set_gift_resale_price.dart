import '../tdapi.dart';

class SetGiftResalePrice extends TdFunction {
  /// Changes resale price of a unique gift owned by the current user
  const SetGiftResalePrice({
    required this.receivedGiftId,
    required this.resaleStarCount,
  });

  /// [receivedGiftId] Identifier of the unique gift
  final String receivedGiftId;

  /// [resaleStarCount] The new price for the unique gift; 0 or getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max"). Pass 0 to disallow gift resale.. The current user will receive getOption("gift_resale_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for the gift
  final int resaleStarCount;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "received_gift_id": receivedGiftId,
      "resale_star_count": resaleStarCount,
      "@extra": extra,
    };
  }

  SetGiftResalePrice copyWith({
    String? receivedGiftId,
    int? resaleStarCount,
  }) {
    return SetGiftResalePrice(
      receivedGiftId: receivedGiftId ?? this.receivedGiftId,
      resaleStarCount: resaleStarCount ?? this.resaleStarCount,
    );
  }

  static const CONSTRUCTOR = 'setGiftResalePrice';

  @override
  String getConstructor() => CONSTRUCTOR;
}
