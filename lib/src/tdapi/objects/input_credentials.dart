import '../tdapi.dart';

class InputCredentials extends TdObject {
  /// Contains information about the payment method chosen by the user
  const InputCredentials();

  factory InputCredentials.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputCredentialsSaved.CONSTRUCTOR:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.CONSTRUCTOR:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsApplePay.CONSTRUCTOR:
        return InputCredentialsApplePay.fromJson(json);
      case InputCredentialsGooglePay.CONSTRUCTOR:
        return InputCredentialsGooglePay.fromJson(json);
      default:
        return const InputCredentials();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputCredentials copyWith() {
    return const InputCredentials();
  }

  static const CONSTRUCTOR = 'inputCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsSaved extends InputCredentials {
  /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
  const InputCredentialsSaved({
    required this.savedCredentialsId,
  });

  /// [savedCredentialsId] Identifier of the saved credentials
  final String savedCredentialsId;

  factory InputCredentialsSaved.fromJson(Map<String, dynamic> json) =>
      InputCredentialsSaved(
        savedCredentialsId: json['saved_credentials_id'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "saved_credentials_id": savedCredentialsId,
    };
  }

  @override
  InputCredentialsSaved copyWith({
    String? savedCredentialsId,
  }) {
    return InputCredentialsSaved(
      savedCredentialsId: savedCredentialsId ?? this.savedCredentialsId,
    );
  }

  static const CONSTRUCTOR = 'inputCredentialsSaved';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsNew extends InputCredentials {
  /// Applies if a user enters new credentials on a payment provider website
  const InputCredentialsNew({
    required this.data,
    required this.allowSave,
  });

  /// [data] JSON-encoded data with the credential identifier from the payment provider
  final String data;

  /// [allowSave] True, if the credential identifier can be saved on the server side
  final bool allowSave;

  factory InputCredentialsNew.fromJson(Map<String, dynamic> json) =>
      InputCredentialsNew(
        data: json['data'] ?? '',
        allowSave: json['allow_save'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
      "allow_save": allowSave,
    };
  }

  @override
  InputCredentialsNew copyWith({
    String? data,
    bool? allowSave,
  }) {
    return InputCredentialsNew(
      data: data ?? this.data,
      allowSave: allowSave ?? this.allowSave,
    );
  }

  static const CONSTRUCTOR = 'inputCredentialsNew';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsApplePay extends InputCredentials {
  /// Applies if a user enters new credentials using Apple Pay
  const InputCredentialsApplePay({
    required this.data,
  });

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  factory InputCredentialsApplePay.fromJson(Map<String, dynamic> json) =>
      InputCredentialsApplePay(
        data: json['data'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }

  @override
  InputCredentialsApplePay copyWith({
    String? data,
  }) {
    return InputCredentialsApplePay(
      data: data ?? this.data,
    );
  }

  static const CONSTRUCTOR = 'inputCredentialsApplePay';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputCredentialsGooglePay extends InputCredentials {
  /// Applies if a user enters new credentials using Google Pay
  const InputCredentialsGooglePay({
    required this.data,
  });

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  factory InputCredentialsGooglePay.fromJson(Map<String, dynamic> json) =>
      InputCredentialsGooglePay(
        data: json['data'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }

  @override
  InputCredentialsGooglePay copyWith({
    String? data,
  }) {
    return InputCredentialsGooglePay(
      data: data ?? this.data,
    );
  }

  static const CONSTRUCTOR = 'inputCredentialsGooglePay';

  @override
  String getConstructor() => CONSTRUCTOR;
}
