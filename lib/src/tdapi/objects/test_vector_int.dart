import '../tdapi.dart';

class TestVectorInt extends TdObject {
  /// A simple object containing a vector of numbers; for testing only
  const TestVectorInt({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] Vector of numbers
  final List<int> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TestVectorInt.fromJson(Map<String, dynamic> json) => TestVectorInt(
        value: json['value'] == null
            ? <int>[]
            : (json['value'] as List).map((e) => (e ?? 0) as int).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }

  TestVectorInt copyWith({
    List<int>? value,
    dynamic extra,
    int? clientId,
  }) {
    return TestVectorInt(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'testVectorInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
