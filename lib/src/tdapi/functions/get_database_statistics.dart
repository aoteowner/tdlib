import '../tdapi.dart';

class GetDatabaseStatistics extends TdFunction {
  /// Returns database statistics
  const GetDatabaseStatistics();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDatabaseStatistics copyWith() {
    return const GetDatabaseStatistics();
  }

  static const CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
