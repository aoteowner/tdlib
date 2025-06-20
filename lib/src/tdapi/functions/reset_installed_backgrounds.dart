import '../tdapi.dart';

class ResetInstalledBackgrounds extends TdFunction {
  /// Resets list of installed backgrounds to its default value
  const ResetInstalledBackgrounds();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResetInstalledBackgrounds copyWith() {
    return const ResetInstalledBackgrounds();
  }

  static const CONSTRUCTOR = 'resetInstalledBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
