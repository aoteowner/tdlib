part of '../tdapi.dart';

class ConnectAffiliateProgram extends TdFunction {

  /// Connects an affiliate program to the given affiliate. Returns information about the connected affiliate program
  const ConnectAffiliateProgram({
    required this.affiliate,
    required this.botUserId,
  });
  
  /// [affiliate] The affiliate to which the affiliate program will be connected
  final AffiliateType affiliate;

  /// [botUserId] Identifier of the bot, which affiliate program is connected
  final int botUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "affiliate": affiliate.toJson(),
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }
  
  ConnectAffiliateProgram copyWith({
    AffiliateType? affiliate,
    int? botUserId,
  }) => ConnectAffiliateProgram(
    affiliate: affiliate ?? this.affiliate,
    botUserId: botUserId ?? this.botUserId,
  );

  static const CONSTRUCTOR = 'connectAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
