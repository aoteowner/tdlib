part of '../tdapi.dart';

class PreparedInlineMessageId extends TdObject {

  /// Represents an inline message that can be sent via the bot
  const PreparedInlineMessageId({
    required this.id,
    required this.expirationDate,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique identifier for the message
  final String id;

  /// [expirationDate] Point in time (Unix timestamp) when the message can't be used anymore
  final int expirationDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PreparedInlineMessageId.fromJson(Map<String, dynamic> json) => PreparedInlineMessageId(
    id: json['id'],
    expirationDate: json['expiration_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "expiration_date": expirationDate,
    };
  }
  
  PreparedInlineMessageId copyWith({
    String? id,
    int? expirationDate,
    dynamic extra,
    int? clientId,
  }) => PreparedInlineMessageId(
    id: id ?? this.id,
    expirationDate: expirationDate ?? this.expirationDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'preparedInlineMessageId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
