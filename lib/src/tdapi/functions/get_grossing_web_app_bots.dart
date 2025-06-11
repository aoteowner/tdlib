import '../tdapi.dart';

class GetGrossingWebAppBots extends TdFunction {

  /// Returns the most grossing Web App bots
  const GetGrossingWebAppBots({
    required this.offset,
    required this.limit,
  });
  
  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of bots to be returned; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetGrossingWebAppBots copyWith({
    String? offset,
    int? limit,
  }) => GetGrossingWebAppBots(
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getGrossingWebAppBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
