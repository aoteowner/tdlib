part of '../tdapi.dart';

class ResendCodeReason extends TdObject {

  /// Describes the reason why a code needs to be re-sent
  const ResendCodeReason();
  
  /// a ResendCodeReason return type can be :
  /// * [ResendCodeReasonUserRequest]
  /// * [ResendCodeReasonVerificationFailed]
  factory ResendCodeReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ResendCodeReasonUserRequest.CONSTRUCTOR:
        return ResendCodeReasonUserRequest.fromJson(json);
      case ResendCodeReasonVerificationFailed.CONSTRUCTOR:
        return ResendCodeReasonVerificationFailed.fromJson(json);
      default:
        return const ResendCodeReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ResendCodeReason copyWith() => const ResendCodeReason();

  static const CONSTRUCTOR = 'resendCodeReason';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ResendCodeReasonUserRequest extends ResendCodeReason {

  /// The user requested to resend the code
  const ResendCodeReasonUserRequest();
  
  /// Parse from a json
  factory ResendCodeReasonUserRequest.fromJson(Map<String, dynamic> json) => const ResendCodeReasonUserRequest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ResendCodeReasonUserRequest copyWith() => const ResendCodeReasonUserRequest();

  static const CONSTRUCTOR = 'resendCodeReasonUserRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ResendCodeReasonVerificationFailed extends ResendCodeReason {

  /// The code is re-sent, because device verification has failed
  const ResendCodeReasonVerificationFailed({
    required this.errorMessage,
  });
  
  /// [errorMessage] Cause of the verification failure, for example, PLAY_SERVICES_NOT_AVAILABLE, APNS_RECEIVE_TIMEOUT, or APNS_INIT_FAILED
  final String errorMessage;
  
  /// Parse from a json
  factory ResendCodeReasonVerificationFailed.fromJson(Map<String, dynamic> json) => ResendCodeReasonVerificationFailed(
    errorMessage: json['error_message'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error_message": errorMessage,
    };
  }
  
  @override
  ResendCodeReasonVerificationFailed copyWith({
    String? errorMessage,
  }) => ResendCodeReasonVerificationFailed(
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const CONSTRUCTOR = 'resendCodeReasonVerificationFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
