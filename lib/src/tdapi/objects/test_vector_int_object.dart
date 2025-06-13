import '../tdapi.dart';

class TestVectorIntObject extends TdObject {

  /// A simple object containing a vector of objects that hold a number; for testing only
  const TestVectorIntObject({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Vector of objects
  final List<TestInt> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorIntObject.fromJson(Map<String, dynamic> json) => TestVectorIntObject(
    value: json['value'] == null ? [] :(json['value'] as List).map((e) => TestInt.fromJson(e ?? {})).toList(),
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
  
  TestVectorIntObject copyWith({
    List<TestInt>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorIntObject(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testVectorIntObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
