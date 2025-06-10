part of '../tdapi.dart';

class GetBusinessConnection extends TdFunction {

  /// Returns information about a business connection by its identifier; for bots only
  const GetBusinessConnection({
    required this.connectionId,
  });
  
  /// [connectionId] Identifier of the business connection to return
  final String connectionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "connection_id": connectionId,
      "@extra": extra,
    };
  }
  
  GetBusinessConnection copyWith({
    String? connectionId,
  }) => GetBusinessConnection(
    connectionId: connectionId ?? this.connectionId,
  );

  static const CONSTRUCTOR = 'getBusinessConnection';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
