import '../tdapi.dart';

class CurrentWeather extends TdObject {

  /// Describes the current weather
  const CurrentWeather({
    required this.temperature,
    required this.emoji,
    this.extra,
    this.clientId,
  });
  
  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
    temperature: json['temperature'] ?? 0,
    emoji: json['emoji'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "temperature": temperature,
      "emoji": emoji,
    };
  }
  
  CurrentWeather copyWith({
    double? temperature,
    String? emoji,
    dynamic extra,
    int? clientId,
  }) => CurrentWeather(
    temperature: temperature ?? this.temperature,
    emoji: emoji ?? this.emoji,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'currentWeather';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
