import '../tdapi.dart';

class ChatMessageSender extends TdObject {
  /// Represents a message sender, which can be used to send messages in a chat
  const ChatMessageSender({
    required this.sender,
    required this.needsPremium,
  });

  /// [sender] The message sender
  final MessageSender sender;

  /// [needsPremium] True, if Telegram Premium is needed to use the message sender
  final bool needsPremium;

  factory ChatMessageSender.fromJson(Map<String, dynamic> json) =>
      ChatMessageSender(
        sender: MessageSender.fromJson(json['sender'] ?? {}),
        needsPremium: json['needs_premium'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender": sender.toJson(),
      "needs_premium": needsPremium,
    };
  }

  ChatMessageSender copyWith({
    MessageSender? sender,
    bool? needsPremium,
  }) {
    return ChatMessageSender(
      sender: sender ?? this.sender,
      needsPremium: needsPremium ?? this.needsPremium,
    );
  }

  static const CONSTRUCTOR = 'chatMessageSender';

  @override
  String getConstructor() => CONSTRUCTOR;
}
