import '../tdapi.dart';

class GetAuthorizationState extends TdFunction {
  /// Returns the current authorization state. This is an offline method. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization
  const GetAuthorizationState();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetAuthorizationState copyWith() {
    return const GetAuthorizationState();
  }

  static const CONSTRUCTOR = 'getAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
