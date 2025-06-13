import '../tdapi.dart';

class StarCount extends TdObject {

  /// Contains a number of Telegram Stars
  const StarCount({
    required this.starCount,
    this.extra,
    this.clientId,
  });
  
  /// [starCount] Number of Telegram Stars
  final int starCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StarCount.fromJson(Map<String, dynamic> json) => StarCount(
    starCount: json['star_count'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
    };
  }
  
  StarCount copyWith({
    int? starCount,
    dynamic extra,
    int? clientId,
  }) => StarCount(
    starCount: starCount ?? this.starCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'starCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
