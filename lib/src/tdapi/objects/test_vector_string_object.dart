import '../tdapi.dart';

class TestVectorStringObject extends TdObject {
  /// A simple object containing a vector of objects that hold a string; for testing only
  const TestVectorStringObject({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] Vector of objects
  final List<TestString> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TestVectorStringObject.fromJson(Map<String, dynamic> json) =>
      TestVectorStringObject(
        value: json['value'] == null
            ? <TestString>[]
            : (json['value'] as List)
                .map((e) => TestString.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value.map((e) => e.toJson()).toList(),
    };
  }

  TestVectorStringObject copyWith({
    List<TestString>? value,
    dynamic extra,
    int? clientId,
  }) {
    return TestVectorStringObject(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'testVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
