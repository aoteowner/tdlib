import '../tdapi.dart';

class ForwardSource extends TdObject {

  /// Contains information about the last message from which a new message was forwarded last time
  const ForwardSource({
    required this.chatId,
    required this.messageId,
    this.senderId,
    required this.senderName,
    required this.date,
    required this.isOutgoing,
  });
  
  /// [chatId] Identifier of the chat to which the message that was forwarded belonged; may be 0 if unknown
  final int chatId;

  /// [messageId] Identifier of the message; may be 0 if unknown
  final int messageId;

  /// [senderId] Identifier of the sender of the message; may be null if unknown or the new message was forwarded not to Saved Messages
  final MessageSender? senderId;

  /// [senderName] Name of the sender of the message if the sender is hidden by their privacy settings
  final String senderName;

  /// [date] Point in time (Unix timestamp) when the message is sent; 0 if unknown
  final int date;

  /// [isOutgoing] True, if the message that was forwarded is outgoing; always false if sender is unknown
  final bool isOutgoing;
  
  /// Parse from a json
  factory ForwardSource.fromJson(Map<String, dynamic> json) => ForwardSource(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    senderId: json['sender_id'] == null ? null : MessageSender.fromJson(json['sender_id']),
    senderName: json['sender_name'],
    date: json['date'],
    isOutgoing: json['is_outgoing'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "sender_id": senderId?.toJson(),
      "sender_name": senderName,
      "date": date,
      "is_outgoing": isOutgoing,
    };
  }
  
  ForwardSource copyWith({
    int? chatId,
    int? messageId,
    MessageSender? senderId,
    String? senderName,
    int? date,
    bool? isOutgoing,
  }) => ForwardSource(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    senderId: senderId ?? this.senderId,
    senderName: senderName ?? this.senderName,
    date: date ?? this.date,
    isOutgoing: isOutgoing ?? this.isOutgoing,
  );

  static const CONSTRUCTOR = 'forwardSource';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
