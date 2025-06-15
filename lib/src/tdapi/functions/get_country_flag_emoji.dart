import '../tdapi.dart';

class GetCountryFlagEmoji extends TdFunction {
  /// Returns an emoji for the given country. Returns an empty string on failure. Can be called synchronously
  const GetCountryFlagEmoji({
    required this.countryCode,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code as received from getCountries
  final String countryCode;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country_code": countryCode,
      "@extra": extra,
    };
  }

  GetCountryFlagEmoji copyWith({
    String? countryCode,
  }) {
    return GetCountryFlagEmoji(
      countryCode: countryCode ?? this.countryCode,
    );
  }

  static const CONSTRUCTOR = 'getCountryFlagEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
