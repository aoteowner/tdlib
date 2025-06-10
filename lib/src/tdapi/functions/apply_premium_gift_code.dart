part of '../tdapi.dart';

class ApplyPremiumGiftCode extends TdFunction {

  /// Applies a Telegram Premium gift code
  const ApplyPremiumGiftCode({
    required this.code,
  });
  
  /// [code] The code to apply
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  ApplyPremiumGiftCode copyWith({
    String? code,
  }) => ApplyPremiumGiftCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'applyPremiumGiftCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
