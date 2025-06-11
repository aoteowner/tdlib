import '../tdapi.dart';

class GetConnectedAffiliatePrograms extends TdFunction {

  /// Returns affiliate programs that were connected to the given affiliate
  const GetConnectedAffiliatePrograms({
    required this.affiliate,
    required this.offset,
    required this.limit,
  });
  
  /// [affiliate] The affiliate to which the affiliate program were connected
  final AffiliateType affiliate;

  /// [offset] Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of affiliate programs to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "affiliate": affiliate.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetConnectedAffiliatePrograms copyWith({
    AffiliateType? affiliate,
    String? offset,
    int? limit,
  }) => GetConnectedAffiliatePrograms(
    affiliate: affiliate ?? this.affiliate,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getConnectedAffiliatePrograms';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
