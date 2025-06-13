import '../tdapi.dart';

class QuickReplyMessages extends TdObject {

  /// Contains a list of quick reply messages
  const QuickReplyMessages({
    required this.messages,
    this.extra,
    this.clientId,
  });
  
  /// [messages] List of quick reply messages; messages may be null
  final List<QuickReplyMessage> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory QuickReplyMessages.fromJson(Map<String, dynamic> json) => QuickReplyMessages(
    messages: json['messages'] == null ? <QuickReplyMessage>[] :(json['messages'] as List).map((e) => QuickReplyMessage.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "messages": messages.map((e) => e.toJson()).toList(),
    };
  }
  
  QuickReplyMessages copyWith({
    List<QuickReplyMessage>? messages,
    dynamic extra,
    int? clientId,
  }) => QuickReplyMessages(
    messages: messages ?? this.messages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'quickReplyMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
