import '../tdapi.dart';

class BusinessLocation extends TdObject {

  /// Represents a location of a business
  const BusinessLocation({
    this.location,
    required this.address,
  });
  
  /// [location] The location; may be null if not specified 
  final Location? location;

  /// [address] Location address; 1-96 characters
  final String address;
  
  /// Parse from a json
  factory BusinessLocation.fromJson(Map<String, dynamic> json) => BusinessLocation(
    location: json['location'] == null ? null : Location.fromJson(json['location']),
    address: json['address'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location?.toJson(),
      "address": address,
    };
  }
  
  BusinessLocation copyWith({
    Location? location,
    String? address,
  }) => BusinessLocation(
    location: location ?? this.location,
    address: address ?? this.address,
  );

  static const CONSTRUCTOR = 'businessLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
