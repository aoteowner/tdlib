import '../tdapi.dart';

class GetApplicationConfig extends TdFunction {
  /// Returns application config, provided by the server. Can be called before authorization
  const GetApplicationConfig();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetApplicationConfig copyWith() {
    return const GetApplicationConfig();
  }

  static const CONSTRUCTOR = 'getApplicationConfig';

  @override
  String getConstructor() => CONSTRUCTOR;
}
