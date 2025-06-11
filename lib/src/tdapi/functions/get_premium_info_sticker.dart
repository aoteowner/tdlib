import '../tdapi.dart';

class GetPremiumInfoSticker extends TdFunction {

  /// Returns the sticker to be used as representation of the Telegram Premium subscription
  const GetPremiumInfoSticker({
    required this.monthCount,
  });
  
  /// [monthCount] Number of months the Telegram Premium subscription will be active
  final int monthCount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "month_count": monthCount,
      "@extra": extra,
    };
  }
  
  GetPremiumInfoSticker copyWith({
    int? monthCount,
  }) => GetPremiumInfoSticker(
    monthCount: monthCount ?? this.monthCount,
  );

  static const CONSTRUCTOR = 'getPremiumInfoSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
