import '../tdapi.dart';

class GetOwnedBots extends TdFunction {

  /// Returns the list of bots owned by the current user
  const GetOwnedBots();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetOwnedBots copyWith() => const GetOwnedBots();

  static const CONSTRUCTOR = 'getOwnedBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
