part of '../tdapi.dart';

class SetBusinessAccountUsername extends TdFunction {

  /// Changes the editable username of a business account; for bots only
  const SetBusinessAccountUsername({
    required this.businessConnectionId,
    required this.username,
  });
  
  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [username] The new value of the username
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "username": username,
      "@extra": extra,
    };
  }
  
  SetBusinessAccountUsername copyWith({
    String? businessConnectionId,
    String? username,
  }) => SetBusinessAccountUsername(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    username: username ?? this.username,
  );

  static const CONSTRUCTOR = 'setBusinessAccountUsername';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
