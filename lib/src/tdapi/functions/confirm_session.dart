part of '../tdapi.dart';

class ConfirmSession extends TdFunction {

  /// Confirms an unconfirmed session of the current user from another device
  const ConfirmSession({
    required this.sessionId,
  });
  
  /// [sessionId] Session identifier
  final int sessionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "session_id": sessionId,
      "@extra": extra,
    };
  }
  
  ConfirmSession copyWith({
    int? sessionId,
  }) => ConfirmSession(
    sessionId: sessionId ?? this.sessionId,
  );

  static const CONSTRUCTOR = 'confirmSession';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
