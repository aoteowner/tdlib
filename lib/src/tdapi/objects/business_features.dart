import '../tdapi.dart';

class BusinessFeatures extends TdObject {

  /// Contains information about features, available to Business user accounts
  const BusinessFeatures({
    required this.features,
    this.extra,
    this.clientId,
  });
  
  /// [features] The list of available business features
  final List<BusinessFeature> features;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessFeatures.fromJson(Map<String, dynamic> json) => BusinessFeatures(
    features: json['features'] == null ? [] :(json['features'] as List).map((e) => BusinessFeature.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "features": features.map((e) => e.toJson()).toList(),
    };
  }
  
  BusinessFeatures copyWith({
    List<BusinessFeature>? features,
    dynamic extra,
    int? clientId,
  }) => BusinessFeatures(
    features: features ?? this.features,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessFeatures';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
