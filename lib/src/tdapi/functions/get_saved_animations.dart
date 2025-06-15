import '../tdapi.dart';

class GetSavedAnimations extends TdFunction {
  /// Returns saved animations
  const GetSavedAnimations();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetSavedAnimations copyWith() {
    return const GetSavedAnimations();
  }

  static const CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
