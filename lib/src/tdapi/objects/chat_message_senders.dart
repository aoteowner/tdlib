import '../tdapi.dart';

class ChatMessageSenders extends TdObject {
  /// Represents a list of message senders, which can be used to send messages in a chat
  const ChatMessageSenders({
    required this.senders,
    this.extra,
    this.clientId,
  });

  /// [senders] List of available message senders
  final List<ChatMessageSender> senders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatMessageSenders.fromJson(Map<String, dynamic> json) =>
      ChatMessageSenders(
        senders: json['senders'] == null
            ? <ChatMessageSender>[]
            : (json['senders'] as List)
                .map((e) => ChatMessageSender.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "senders": senders.map((e) => e.toJson()).toList(),
    };
  }

  ChatMessageSenders copyWith({
    List<ChatMessageSender>? senders,
    dynamic extra,
    int? clientId,
  }) {
    return ChatMessageSenders(
      senders: senders ?? this.senders,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
