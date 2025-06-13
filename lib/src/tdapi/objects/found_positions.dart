import '../tdapi.dart';

class FoundPositions extends TdObject {

  /// Contains 0-based positions of matched objects
  const FoundPositions({
    required this.totalCount,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Total number of matched objects 
  final int totalCount;

  /// [positions] The positions of the matched objects
  final List<int> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundPositions.fromJson(Map<String, dynamic> json) => FoundPositions(
    totalCount: json['total_count'] ?? 0,
    positions: json['positions']?.cast<int>() ?? [],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "positions": positions,
    };
  }
  
  FoundPositions copyWith({
    int? totalCount,
    List<int>? positions,
    dynamic extra,
    int? clientId,
  }) => FoundPositions(
    totalCount: totalCount ?? this.totalCount,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'foundPositions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
