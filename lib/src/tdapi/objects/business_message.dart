import '../tdapi.dart';

class BusinessMessage extends TdObject {

  /// Describes a message from a business account as received by a bot
  const BusinessMessage({
    required this.message,
    this.replyToMessage,
    this.extra,
    this.clientId,
  });
  
  /// [message] The message 
  final Message message;

  /// [replyToMessage] Message that is replied by the message in the same chat; may be null if none
  final Message? replyToMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessMessage.fromJson(Map<String, dynamic> json) => BusinessMessage(
    message: Message.fromJson(json['message'] ?? {}),
    replyToMessage: Message.fromJson(json['reply_to_message'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "reply_to_message": replyToMessage?.toJson(),
    };
  }
  
  BusinessMessage copyWith({
    Message? message,
    Message? replyToMessage,
    dynamic extra,
    int? clientId,
  }) => BusinessMessage(
    message: message ?? this.message,
    replyToMessage: replyToMessage ?? this.replyToMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
