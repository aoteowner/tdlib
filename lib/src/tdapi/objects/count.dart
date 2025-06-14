import '../tdapi.dart';

class Count extends TdObject {
  /// Contains a counter
  const Count({
    required this.count,
    this.extra,
    this.clientId,
  });

  /// [count] Count
  final int count;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Count.fromJson(Map<String, dynamic> json) => Count(
        count: json['count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "count": count,
    };
  }

  Count copyWith({
    int? count,
    dynamic extra,
    int? clientId,
  }) {
    return Count(
      count: count ?? this.count,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'count';

  @override
  String getConstructor() => CONSTRUCTOR;
}
