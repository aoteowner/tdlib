import '../tdapi.dart';

class GetLogTags extends TdFunction {
  /// Returns the list of available TDLib internal log tags, for example,
  const GetLogTags();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetLogTags copyWith() {
    return const GetLogTags();
  }

  static const CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
