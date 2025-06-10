part of '../tdapi.dart';

class CheckPhoneNumberCode extends TdFunction {

  /// Check the authentication code and completes the request for which the code was sent if appropriate
  const CheckPhoneNumberCode({
    required this.code,
  });
  
  /// [code] Authentication code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckPhoneNumberCode copyWith({
    String? code,
  }) => CheckPhoneNumberCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkPhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
