import '../tdapi.dart';

class SearchAffiliatePrograms extends TdFunction {

  /// Searches affiliate programs that can be connected to the given affiliate
  const SearchAffiliatePrograms({
    required this.affiliate,
    required this.sortOrder,
    required this.offset,
    required this.limit,
  });
  
  /// [affiliate] The affiliate for which affiliate programs are searched for
  final AffiliateType affiliate;

  /// [sortOrder] Sort order for the results
  final AffiliateProgramSortOrder sortOrder;

  /// [offset] Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of affiliate programs to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "affiliate": affiliate.toJson(),
      "sort_order": sortOrder.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchAffiliatePrograms copyWith({
    AffiliateType? affiliate,
    AffiliateProgramSortOrder? sortOrder,
    String? offset,
    int? limit,
  }) => SearchAffiliatePrograms(
    affiliate: affiliate ?? this.affiliate,
    sortOrder: sortOrder ?? this.sortOrder,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchAffiliatePrograms';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
