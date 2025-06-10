part of '../tdapi.dart';

class FoundPosition extends TdObject {

  /// Contains 0-based match position
  const FoundPosition({
    required this.position,
    this.extra,
    this.clientId,
  });
  
  /// [position] The position of the match
  final int position;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundPosition.fromJson(Map<String, dynamic> json) => FoundPosition(
    position: json['position'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "position": position,
    };
  }
  
  FoundPosition copyWith({
    int? position,
    dynamic extra,
    int? clientId,
  }) => FoundPosition(
    position: position ?? this.position,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'foundPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
