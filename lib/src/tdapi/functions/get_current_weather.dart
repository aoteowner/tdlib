import '../tdapi.dart';

class GetCurrentWeather extends TdFunction {
  /// Returns the current weather in the given location
  const GetCurrentWeather({
    required this.location,
  });

  /// [location] The location
  final Location location;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "@extra": extra,
    };
  }

  GetCurrentWeather copyWith({
    Location? location,
  }) {
    return GetCurrentWeather(
      location: location ?? this.location,
    );
  }

  static const CONSTRUCTOR = 'getCurrentWeather';

  @override
  String getConstructor() => CONSTRUCTOR;
}
