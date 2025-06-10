part of '../tdapi.dart';

class DisconnectAffiliateProgram extends TdFunction {

  /// Disconnects an affiliate program from the given affiliate and immediately deactivates its referral link. Returns updated information about the disconnected affiliate program
  const DisconnectAffiliateProgram({
    required this.affiliate,
    required this.url,
  });
  
  /// [affiliate] The affiliate to which the affiliate program is connected
  final AffiliateType affiliate;

  /// [url] The referral link of the affiliate program
  final String url;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "affiliate": affiliate.toJson(),
      "url": url,
      "@extra": extra,
    };
  }
  
  DisconnectAffiliateProgram copyWith({
    AffiliateType? affiliate,
    String? url,
  }) => DisconnectAffiliateProgram(
    affiliate: affiliate ?? this.affiliate,
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'disconnectAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
