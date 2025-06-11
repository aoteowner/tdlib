import '../tdapi.dart';

class GetStarGiftPaymentOptions extends TdFunction {

  /// Returns available options for Telegram Stars gifting
  const GetStarGiftPaymentOptions({
    required this.userId,
  });
  
  /// [userId] Identifier of the user that will receive Telegram Stars; pass 0 to get options for an unspecified user
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "@extra": extra,
    };
  }
  
  GetStarGiftPaymentOptions copyWith({
    int? userId,
  }) => GetStarGiftPaymentOptions(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'getStarGiftPaymentOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
