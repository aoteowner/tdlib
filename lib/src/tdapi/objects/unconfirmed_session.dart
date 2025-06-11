import '../tdapi.dart';

class UnconfirmedSession extends TdObject {

  /// Contains information about an unconfirmed session
  const UnconfirmedSession({
    required this.id,
    required this.logInDate,
    required this.deviceModel,
    required this.location,
  });
  
  /// [id] Session identifier
  final int id;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// [deviceModel] Model of the device that was used for the session creation, as provided by the application
  final String deviceModel;

  /// [location] A human-readable description of the location from which the session was created, based on the IP address
  final String location;
  
  /// Parse from a json
  factory UnconfirmedSession.fromJson(Map<String, dynamic> json) => UnconfirmedSession(
    id: int.parse(json['id']),
    logInDate: json['log_in_date'],
    deviceModel: json['device_model'],
    location: json['location'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "log_in_date": logInDate,
      "device_model": deviceModel,
      "location": location,
    };
  }
  
  UnconfirmedSession copyWith({
    int? id,
    int? logInDate,
    String? deviceModel,
    String? location,
  }) => UnconfirmedSession(
    id: id ?? this.id,
    logInDate: logInDate ?? this.logInDate,
    deviceModel: deviceModel ?? this.deviceModel,
    location: location ?? this.location,
  );

  static const CONSTRUCTOR = 'unconfirmedSession';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
