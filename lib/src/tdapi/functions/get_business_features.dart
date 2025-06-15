import '../tdapi.dart';

class GetBusinessFeatures extends TdFunction {
  /// Returns information about features, available to Business users
  const GetBusinessFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from settings or some non-standard source
  final BusinessFeature? source;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "source": source?.toJson(),
      "@extra": extra,
    };
  }

  GetBusinessFeatures copyWith({
    BusinessFeature? source,
  }) {
    return GetBusinessFeatures(
      source: source ?? this.source,
    );
  }

  static const CONSTRUCTOR = 'getBusinessFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
