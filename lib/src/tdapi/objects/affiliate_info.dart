import '../tdapi.dart';

class AffiliateInfo extends TdObject {

  /// Contains information about an affiliate that received commission from a Telegram Star transaction
  const AffiliateInfo({
    required this.commissionPerMille,
    required this.affiliateChatId,
    required this.starAmount,
  });
  
  /// [commissionPerMille] The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  /// [affiliateChatId] Identifier of the chat which received the commission
  final int affiliateChatId;

  /// [starAmount] The amount of Telegram Stars that were received by the affiliate; can be negative for refunds
  final StarAmount starAmount;
  
  /// Parse from a json
  factory AffiliateInfo.fromJson(Map<String, dynamic> json) => AffiliateInfo(
    commissionPerMille: json['commission_per_mille'],
    affiliateChatId: json['affiliate_chat_id'],
    starAmount: StarAmount.fromJson(json['star_amount']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "commission_per_mille": commissionPerMille,
      "affiliate_chat_id": affiliateChatId,
      "star_amount": starAmount.toJson(),
    };
  }
  
  AffiliateInfo copyWith({
    int? commissionPerMille,
    int? affiliateChatId,
    StarAmount? starAmount,
  }) => AffiliateInfo(
    commissionPerMille: commissionPerMille ?? this.commissionPerMille,
    affiliateChatId: affiliateChatId ?? this.affiliateChatId,
    starAmount: starAmount ?? this.starAmount,
  );

  static const CONSTRUCTOR = 'affiliateInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
