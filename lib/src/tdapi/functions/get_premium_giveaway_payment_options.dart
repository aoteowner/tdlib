import '../tdapi.dart';

class GetPremiumGiveawayPaymentOptions extends TdFunction {
  /// Returns available options for creating of Telegram Premium giveaway or manual distribution of Telegram Premium among chat members
  const GetPremiumGiveawayPaymentOptions({
    required this.boostedChatId,
  });

  /// [boostedChatId] Identifier of the supergroup or channel chat, which will be automatically boosted by receivers of the gift codes and which is administered by the user
  final int boostedChatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boosted_chat_id": boostedChatId,
      "@extra": extra,
    };
  }

  GetPremiumGiveawayPaymentOptions copyWith({
    int? boostedChatId,
  }) {
    return GetPremiumGiveawayPaymentOptions(
      boostedChatId: boostedChatId ?? this.boostedChatId,
    );
  }

  static const CONSTRUCTOR = 'getPremiumGiveawayPaymentOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
