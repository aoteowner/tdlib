import '../tdapi.dart';

class GetProxies extends TdFunction {

  /// Returns the list of proxies that are currently set up. Can be called before authorization
  const GetProxies();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetProxies copyWith() => const GetProxies();

  static const CONSTRUCTOR = 'getProxies';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
