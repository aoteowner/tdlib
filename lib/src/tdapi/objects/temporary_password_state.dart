import '../tdapi.dart';

class TemporaryPasswordState extends TdObject {
  /// Returns information about the availability of a temporary password, which can be used for payments
  const TemporaryPasswordState({
    required this.hasPassword,
    required this.validFor,
    this.extra,
    this.clientId,
  });

  /// [hasPassword] True, if a temporary password is available
  final bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  final int validFor;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TemporaryPasswordState.fromJson(Map<String, dynamic> json) =>
      TemporaryPasswordState(
        hasPassword: json['has_password'] ?? false,
        validFor: json['valid_for'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_password": hasPassword,
      "valid_for": validFor,
    };
  }

  TemporaryPasswordState copyWith({
    bool? hasPassword,
    int? validFor,
    dynamic extra,
    int? clientId,
  }) {
    return TemporaryPasswordState(
      hasPassword: hasPassword ?? this.hasPassword,
      validFor: validFor ?? this.validFor,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'temporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
