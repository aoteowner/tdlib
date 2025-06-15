import '../tdapi.dart';

class TestVectorString extends TdObject {
  /// A simple object containing a vector of strings; for testing only
  const TestVectorString({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] Vector of strings
  final List<String> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TestVectorString.fromJson(Map<String, dynamic> json) =>
      TestVectorString(
        value: json['value'] == null
            ? <String>[]
            : (json['value'] as List).map((e) => (e ?? '') as String).toList(),
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

  TestVectorString copyWith({
    List<String>? value,
    dynamic extra,
    int? clientId,
  }) {
    return TestVectorString(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'testVectorString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
