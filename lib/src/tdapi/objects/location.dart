import '../tdapi.dart';

class Location extends TdObject {
  /// Describes a location on planet Earth
  const Location({
    required this.latitude,
    required this.longitude,
    required this.horizontalAccuracy,
  });

  /// [latitude] Latitude of the location in degrees; as defined by the sender
  final double latitude;

  /// [longitude] Longitude of the location, in degrees; as defined by the sender
  final double longitude;

  /// [horizontalAccuracy] The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  final double horizontalAccuracy;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json['latitude'] ?? 0,
        longitude: json['longitude'] ?? 0,
        horizontalAccuracy: json['horizontal_accuracy'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "latitude": latitude,
      "longitude": longitude,
      "horizontal_accuracy": horizontalAccuracy,
    };
  }

  Location copyWith({
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      horizontalAccuracy: horizontalAccuracy ?? this.horizontalAccuracy,
    );
  }

  static const CONSTRUCTOR = 'location';

  @override
  String getConstructor() => CONSTRUCTOR;
}
