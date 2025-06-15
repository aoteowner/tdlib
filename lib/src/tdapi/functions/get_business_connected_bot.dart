import '../tdapi.dart';

class GetBusinessConnectedBot extends TdFunction {
  /// Returns the business bot that is connected to the current user account. Returns a 404 error if there is no connected bot
  const GetBusinessConnectedBot();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetBusinessConnectedBot copyWith() {
    return const GetBusinessConnectedBot();
  }

  static const CONSTRUCTOR = 'getBusinessConnectedBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
