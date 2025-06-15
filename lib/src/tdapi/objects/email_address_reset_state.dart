import '../tdapi.dart';

class EmailAddressResetState extends TdObject {
  /// Describes reset state of an email address
  const EmailAddressResetState();

  factory EmailAddressResetState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case EmailAddressResetStateAvailable.CONSTRUCTOR:
        return EmailAddressResetStateAvailable.fromJson(json);
      case EmailAddressResetStatePending.CONSTRUCTOR:
        return EmailAddressResetStatePending.fromJson(json);
      default:
        return const EmailAddressResetState();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  EmailAddressResetState copyWith() {
    return const EmailAddressResetState();
  }

  static const CONSTRUCTOR = 'emailAddressResetState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class EmailAddressResetStateAvailable extends EmailAddressResetState {
  /// Email address can be reset after the given period. Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's phone number
  const EmailAddressResetStateAvailable({
    required this.waitPeriod,
  });

  /// [waitPeriod] Time required to wait before the email address can be reset; 0 if the user is subscribed to Telegram Premium
  final int waitPeriod;

  factory EmailAddressResetStateAvailable.fromJson(Map<String, dynamic> json) =>
      EmailAddressResetStateAvailable(
        waitPeriod: json['wait_period'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "wait_period": waitPeriod,
    };
  }

  @override
  EmailAddressResetStateAvailable copyWith({
    int? waitPeriod,
  }) {
    return EmailAddressResetStateAvailable(
      waitPeriod: waitPeriod ?? this.waitPeriod,
    );
  }

  static const CONSTRUCTOR = 'emailAddressResetStateAvailable';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class EmailAddressResetStatePending extends EmailAddressResetState {
  /// Email address reset has already been requested. Call resetAuthenticationEmailAddress to check whether immediate reset is possible
  const EmailAddressResetStatePending({
    required this.resetIn,
  });

  /// [resetIn] Left time before the email address will be reset, in seconds. updateAuthorizationState is not sent when this field changes
  final int resetIn;

  factory EmailAddressResetStatePending.fromJson(Map<String, dynamic> json) =>
      EmailAddressResetStatePending(
        resetIn: json['reset_in'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reset_in": resetIn,
    };
  }

  @override
  EmailAddressResetStatePending copyWith({
    int? resetIn,
  }) {
    return EmailAddressResetStatePending(
      resetIn: resetIn ?? this.resetIn,
    );
  }

  static const CONSTRUCTOR = 'emailAddressResetStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}
