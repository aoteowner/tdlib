import '../tdapi.dart';

class FirebaseDeviceVerificationParameters extends TdObject {

  /// Describes parameters to be used for device verification
  const FirebaseDeviceVerificationParameters();
  
  /// a FirebaseDeviceVerificationParameters return type can be :
  /// * [FirebaseDeviceVerificationParametersSafetyNet]
  /// * [FirebaseDeviceVerificationParametersPlayIntegrity]
  factory FirebaseDeviceVerificationParameters.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case FirebaseDeviceVerificationParametersSafetyNet.CONSTRUCTOR:
        return FirebaseDeviceVerificationParametersSafetyNet.fromJson(json);
      case FirebaseDeviceVerificationParametersPlayIntegrity.CONSTRUCTOR:
        return FirebaseDeviceVerificationParametersPlayIntegrity.fromJson(json);
      default:
        return const FirebaseDeviceVerificationParameters();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  FirebaseDeviceVerificationParameters copyWith() => const FirebaseDeviceVerificationParameters();

  static const CONSTRUCTOR = 'firebaseDeviceVerificationParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FirebaseDeviceVerificationParametersSafetyNet extends FirebaseDeviceVerificationParameters {

  /// Device verification must be performed with the SafetyNet Attestation API
  const FirebaseDeviceVerificationParametersSafetyNet({
    required this.nonce,
  });
  
  /// [nonce] Nonce to pass to the SafetyNet Attestation API
  final String nonce;
  
  /// Parse from a json
  factory FirebaseDeviceVerificationParametersSafetyNet.fromJson(Map<String, dynamic> json) => FirebaseDeviceVerificationParametersSafetyNet(
    nonce: json['nonce'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "nonce": nonce,
    };
  }
  
  @override
  FirebaseDeviceVerificationParametersSafetyNet copyWith({
    String? nonce,
  }) => FirebaseDeviceVerificationParametersSafetyNet(
    nonce: nonce ?? this.nonce,
  );

  static const CONSTRUCTOR = 'firebaseDeviceVerificationParametersSafetyNet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FirebaseDeviceVerificationParametersPlayIntegrity extends FirebaseDeviceVerificationParameters {

  /// Device verification must be performed with the classic Play Integrity verification (https://developer.android.com/google/play/integrity/classic)
  const FirebaseDeviceVerificationParametersPlayIntegrity({
    required this.nonce,
    required this.cloudProjectNumber,
  });
  
  /// [nonce] Base64url-encoded nonce to pass to the Play Integrity API
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity API
  final int cloudProjectNumber;
  
  /// Parse from a json
  factory FirebaseDeviceVerificationParametersPlayIntegrity.fromJson(Map<String, dynamic> json) => FirebaseDeviceVerificationParametersPlayIntegrity(
    nonce: json['nonce'] ?? '',
    cloudProjectNumber: int.tryParse(json['cloud_project_number'] ?? '') ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "nonce": nonce,
      "cloud_project_number": cloudProjectNumber,
    };
  }
  
  @override
  FirebaseDeviceVerificationParametersPlayIntegrity copyWith({
    String? nonce,
    int? cloudProjectNumber,
  }) => FirebaseDeviceVerificationParametersPlayIntegrity(
    nonce: nonce ?? this.nonce,
    cloudProjectNumber: cloudProjectNumber ?? this.cloudProjectNumber,
  );

  static const CONSTRUCTOR = 'firebaseDeviceVerificationParametersPlayIntegrity';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
