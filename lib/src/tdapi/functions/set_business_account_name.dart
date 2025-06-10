part of '../tdapi.dart';

class SetBusinessAccountName extends TdFunction {

  /// Changes the first and last name of a business account; for bots only
  const SetBusinessAccountName({
    required this.businessConnectionId,
    required this.firstName,
    required this.lastName,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [firstName] The new value of the first name for the business account; 1-64 characters
  final String firstName;

  /// [lastName] The new value of the optional last name for the business account; 0-64 characters
  final String lastName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "first_name": firstName,
      "last_name": lastName,
      "@extra": extra,
    };
  }
  
  SetBusinessAccountName copyWith({
    String? businessConnectionId,
    String? firstName,
    String? lastName,
  }) => SetBusinessAccountName(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  static const CONSTRUCTOR = 'setBusinessAccountName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
