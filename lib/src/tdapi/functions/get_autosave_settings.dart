import '../tdapi.dart';

class GetAutosaveSettings extends TdFunction {
  /// Returns autosave settings for the current user
  const GetAutosaveSettings();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetAutosaveSettings copyWith() {
    return const GetAutosaveSettings();
  }

  static const CONSTRUCTOR = 'getAutosaveSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
