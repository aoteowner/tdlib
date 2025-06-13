import '../tdapi.dart';

class PreparedInlineMessage extends TdObject {

  /// Represents a ready to send inline message. Use sendInlineQueryResultMessage to send the message
  const PreparedInlineMessage({
    required this.inlineQueryId,
    required this.result,
    required this.chatTypes,
    this.extra,
    this.clientId,
  });
  
  /// [inlineQueryId] Unique identifier of the inline query to pass to sendInlineQueryResultMessage
  final int inlineQueryId;

  /// [result] Resulted inline message of the query
  final InlineQueryResult result;

  /// [chatTypes] Types of the chats to which the message can be sent
  final TargetChatTypes chatTypes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PreparedInlineMessage.fromJson(Map<String, dynamic> json) => PreparedInlineMessage(
    inlineQueryId: int.tryParse(json['inline_query_id'] ?? '') ?? 0,
    result: InlineQueryResult.fromJson(json['result'] ?? {}),
    chatTypes: TargetChatTypes.fromJson(json['chat_types'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "result": result.toJson(),
      "chat_types": chatTypes.toJson(),
    };
  }
  
  PreparedInlineMessage copyWith({
    int? inlineQueryId,
    InlineQueryResult? result,
    TargetChatTypes? chatTypes,
    dynamic extra,
    int? clientId,
  }) => PreparedInlineMessage(
    inlineQueryId: inlineQueryId ?? this.inlineQueryId,
    result: result ?? this.result,
    chatTypes: chatTypes ?? this.chatTypes,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'preparedInlineMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
