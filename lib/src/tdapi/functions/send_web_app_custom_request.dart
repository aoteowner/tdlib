part of '../tdapi.dart';

class SendWebAppCustomRequest extends TdFunction {

  /// Sends a custom request from a Web App
  const SendWebAppCustomRequest({
    required this.botUserId,
    required this.method,
    required this.parameters,
  });
  
  /// [botUserId] Identifier of the bot
  final int botUserId;

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "method": method,
      "parameters": parameters,
      "@extra": extra,
    };
  }
  
  SendWebAppCustomRequest copyWith({
    int? botUserId,
    String? method,
    String? parameters,
  }) => SendWebAppCustomRequest(
    botUserId: botUserId ?? this.botUserId,
    method: method ?? this.method,
    parameters: parameters ?? this.parameters,
  );

  static const CONSTRUCTOR = 'sendWebAppCustomRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
