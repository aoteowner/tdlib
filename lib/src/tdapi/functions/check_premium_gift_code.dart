import '../tdapi.dart';

class CheckPremiumGiftCode extends TdFunction {

  /// Return information about a Telegram Premium gift code
  const CheckPremiumGiftCode({
    required this.code,
  });
  
  /// [code] The code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckPremiumGiftCode copyWith({
    String? code,
  }) => CheckPremiumGiftCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkPremiumGiftCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
