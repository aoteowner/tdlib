import '../tdapi.dart';

class GiftPremiumWithStars extends TdFunction {

  /// Allows to buy a Telegram Premium subscription for another user with payment in Telegram Stars; for bots only
  const GiftPremiumWithStars({
    required this.userId,
    required this.starCount,
    required this.monthCount,
    required this.text,
  });
  
  /// [userId] Identifier of the user which will receive Telegram Premium
  final int userId;

  /// [starCount] The number of Telegram Stars to pay for subscription
  final int starCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be active for the user
  final int monthCount;

  /// [text] Text to show to the user receiving Telegram Premium; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "star_count": starCount,
      "month_count": monthCount,
      "text": text.toJson(),
      "@extra": extra,
    };
  }
  
  GiftPremiumWithStars copyWith({
    int? userId,
    int? starCount,
    int? monthCount,
    FormattedText? text,
  }) => GiftPremiumWithStars(
    userId: userId ?? this.userId,
    starCount: starCount ?? this.starCount,
    monthCount: monthCount ?? this.monthCount,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'giftPremiumWithStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
