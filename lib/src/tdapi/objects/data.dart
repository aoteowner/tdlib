import '../tdapi.dart';

class Data extends TdObject {

  /// Contains some binary data
  const Data({
    required this.data,
    this.extra,
    this.clientId,
  });
  
  /// [data] Data
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: json['data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
  
  Data copyWith({
    String? data,
    dynamic extra,
    int? clientId,
  }) => Data(
    data: data ?? this.data,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'data';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
