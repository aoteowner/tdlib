import '../tdapi.dart';

class LocationAddress extends TdObject {
  /// Describes an address of a location
  const LocationAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.street,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [state] State, if applicable; empty if unknown
  final String state;

  /// [city] City; empty if unknown
  final String city;

  /// [street] The address; empty if unknown
  final String street;

  factory LocationAddress.fromJson(Map<String, dynamic> json) =>
      LocationAddress(
        countryCode: json['country_code'] ?? '',
        state: json['state'] ?? '',
        city: json['city'] ?? '',
        street: json['street'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country_code": countryCode,
      "state": state,
      "city": city,
      "street": street,
    };
  }

  LocationAddress copyWith({
    String? countryCode,
    String? state,
    String? city,
    String? street,
  }) {
    return LocationAddress(
      countryCode: countryCode ?? this.countryCode,
      state: state ?? this.state,
      city: city ?? this.city,
      street: street ?? this.street,
    );
  }

  static const CONSTRUCTOR = 'locationAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
