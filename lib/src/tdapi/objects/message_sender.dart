import '../tdapi.dart';

class MessageSender extends TdObject {
  /// Contains information about the sender of a message
  const MessageSender();

  factory MessageSender.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSenderUser.CONSTRUCTOR:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.CONSTRUCTOR:
        return MessageSenderChat.fromJson(json);
      default:
        return const MessageSender();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageSender copyWith() {
    return const MessageSender();
  }

  static const CONSTRUCTOR = 'messageSender';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSenderUser extends MessageSender {
  /// The message was sent by a known user
  const MessageSenderUser({
    required this.userId,
  });

  /// [userId] Identifier of the user that sent the message
  final int userId;

  factory MessageSenderUser.fromJson(Map<String, dynamic> json) =>
      MessageSenderUser(
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  MessageSenderUser copyWith({
    int? userId,
  }) {
    return MessageSenderUser(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'messageSenderUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSenderChat extends MessageSender {
  /// The message was sent on behalf of a chat
  const MessageSenderChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat that sent the message
  final int chatId;

  factory MessageSenderChat.fromJson(Map<String, dynamic> json) =>
      MessageSenderChat(
        chatId: json['chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  MessageSenderChat copyWith({
    int? chatId,
  }) {
    return MessageSenderChat(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'messageSenderChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
