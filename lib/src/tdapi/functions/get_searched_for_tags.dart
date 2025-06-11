import '../tdapi.dart';

class GetSearchedForTags extends TdFunction {

  /// Returns recently searched for hashtags or cashtags by their prefix
  const GetSearchedForTags({
    required this.tagPrefix,
    required this.limit,
  });
  
  /// [tagPrefix] Prefix of hashtags or cashtags to return 
  final String tagPrefix;

  /// [limit] The maximum number of items to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag_prefix": tagPrefix,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetSearchedForTags copyWith({
    String? tagPrefix,
    int? limit,
  }) => GetSearchedForTags(
    tagPrefix: tagPrefix ?? this.tagPrefix,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getSearchedForTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
