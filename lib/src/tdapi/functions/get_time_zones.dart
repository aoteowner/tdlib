import '../tdapi.dart';

class GetTimeZones extends TdFunction {
  /// Returns the list of supported time zones
  const GetTimeZones();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetTimeZones copyWith() {
    return const GetTimeZones();
  }

  static const CONSTRUCTOR = 'getTimeZones';

  @override
  String getConstructor() => CONSTRUCTOR;
}
