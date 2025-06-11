import '../tdapi.dart';

class BusinessMessages extends TdObject {

  /// Contains a list of messages from a business account as received by a bot
  const BusinessMessages({
    required this.messages,
    this.extra,
    this.clientId,
  });
  
  /// [messages] List of business messages
  final List<BusinessMessage> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessMessages.fromJson(Map<String, dynamic> json) => BusinessMessages(
    messages: List<BusinessMessage>.from((json['messages'] ?? []).map((item) => BusinessMessage.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "messages": messages.map((i) => i.toJson()).toList(),
    };
  }
  
  BusinessMessages copyWith({
    List<BusinessMessage>? messages,
    dynamic extra,
    int? clientId,
  }) => BusinessMessages(
    messages: messages ?? this.messages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
