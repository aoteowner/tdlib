import '../tdapi.dart';

class CountryInfo extends TdObject {
  /// Contains information about a country
  const CountryInfo({
    required this.countryCode,
    required this.name,
    required this.englishName,
    required this.isHidden,
    required this.callingCodes,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [name] Native name of the country
  final String name;

  /// [englishName] English name of the country
  final String englishName;

  /// [isHidden] True, if the country must be hidden from the list of all countries
  final bool isHidden;

  /// [callingCodes] List of country calling codes
  final List<String> callingCodes;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
        countryCode: json['country_code'] ?? '',
        name: json['name'] ?? '',
        englishName: json['english_name'] ?? '',
        isHidden: json['is_hidden'] ?? false,
        callingCodes: json['calling_codes'] == null
            ? <String>[]
            : (json['calling_codes'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country_code": countryCode,
      "name": name,
      "english_name": englishName,
      "is_hidden": isHidden,
      "calling_codes": callingCodes,
    };
  }

  CountryInfo copyWith({
    String? countryCode,
    String? name,
    String? englishName,
    bool? isHidden,
    List<String>? callingCodes,
  }) {
    return CountryInfo(
      countryCode: countryCode ?? this.countryCode,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      isHidden: isHidden ?? this.isHidden,
      callingCodes: callingCodes ?? this.callingCodes,
    );
  }

  static const CONSTRUCTOR = 'countryInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
