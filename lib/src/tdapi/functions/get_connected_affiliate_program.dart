part of '../tdapi.dart';

class GetConnectedAffiliateProgram extends TdFunction {

  /// Returns an affiliate program that were connected to the given affiliate by identifier of the bot that created the program
  const GetConnectedAffiliateProgram({
    required this.affiliate,
    required this.botUserId,
  });
  
  /// [affiliate] The affiliate to which the affiliate program will be connected
  final AffiliateType affiliate;

  /// [botUserId] Identifier of the bot that created the program
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
  
  GetConnectedAffiliateProgram copyWith({
    AffiliateType? affiliate,
    int? botUserId,
  }) => GetConnectedAffiliateProgram(
    affiliate: affiliate ?? this.affiliate,
    botUserId: botUserId ?? this.botUserId,
  );

  static const CONSTRUCTOR = 'getConnectedAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
