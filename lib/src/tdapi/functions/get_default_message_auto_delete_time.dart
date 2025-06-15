import '../tdapi.dart';

class GetDefaultMessageAutoDeleteTime extends TdFunction {
  /// Returns default message auto-delete time setting for new chats
  const GetDefaultMessageAutoDeleteTime();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDefaultMessageAutoDeleteTime copyWith() {
    return const GetDefaultMessageAutoDeleteTime();
  }

  static const CONSTRUCTOR = 'getDefaultMessageAutoDeleteTime';

  @override
  String getConstructor() => CONSTRUCTOR;
}
