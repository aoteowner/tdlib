import '../tdapi.dart';

class GetTemporaryPasswordState extends TdFunction {
  /// Returns information about the current temporary password
  const GetTemporaryPasswordState();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetTemporaryPasswordState copyWith() {
    return const GetTemporaryPasswordState();
  }

  static const CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
