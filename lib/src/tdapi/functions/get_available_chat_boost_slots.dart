import '../tdapi.dart';

class GetAvailableChatBoostSlots extends TdFunction {

  /// Returns the list of available chat boost slots for the current user
  const GetAvailableChatBoostSlots();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetAvailableChatBoostSlots copyWith() => const GetAvailableChatBoostSlots();

  static const CONSTRUCTOR = 'getAvailableChatBoostSlots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
