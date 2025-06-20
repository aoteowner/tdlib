import '../tdapi.dart';

class NotificationType extends TdObject {
  /// Contains detailed information about a notification
  const NotificationType();

  factory NotificationType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NotificationTypeNewMessage.CONSTRUCTOR:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewSecretChat.CONSTRUCTOR:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewCall.CONSTRUCTOR:
        return NotificationTypeNewCall.fromJson(json);
      case NotificationTypeNewPushMessage.CONSTRUCTOR:
        return NotificationTypeNewPushMessage.fromJson(json);
      default:
        return const NotificationType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  NotificationType copyWith() {
    return const NotificationType();
  }

  static const CONSTRUCTOR = 'notificationType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewMessage extends NotificationType {
  /// New message was received
  const NotificationTypeNewMessage({
    required this.message,
    required this.showPreview,
  });

  /// [message] The message
  final Message message;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  factory NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) =>
      NotificationTypeNewMessage(
        message: Message.fromJson(json['message'] ?? {}),
        showPreview: json['show_preview'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "show_preview": showPreview,
    };
  }

  @override
  NotificationTypeNewMessage copyWith({
    Message? message,
    bool? showPreview,
  }) {
    return NotificationTypeNewMessage(
      message: message ?? this.message,
      showPreview: showPreview ?? this.showPreview,
    );
  }

  static const CONSTRUCTOR = 'notificationTypeNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewSecretChat extends NotificationType {
  /// New secret chat was created
  const NotificationTypeNewSecretChat();

  factory NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json) =>
      const NotificationTypeNewSecretChat();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NotificationTypeNewSecretChat copyWith() {
    return const NotificationTypeNewSecretChat();
  }

  static const CONSTRUCTOR = 'notificationTypeNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewCall extends NotificationType {
  /// New call was received
  const NotificationTypeNewCall({
    required this.callId,
  });

  /// [callId] Call identifier
  final int callId;

  factory NotificationTypeNewCall.fromJson(Map<String, dynamic> json) =>
      NotificationTypeNewCall(
        callId: json['call_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
    };
  }

  @override
  NotificationTypeNewCall copyWith({
    int? callId,
  }) {
    return NotificationTypeNewCall(
      callId: callId ?? this.callId,
    );
  }

  static const CONSTRUCTOR = 'notificationTypeNewCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewPushMessage extends NotificationType {
  /// New message was received through a push notification
  const NotificationTypeNewPushMessage({
    required this.messageId,
    required this.senderId,
    required this.senderName,
    required this.isOutgoing,
    required this.content,
  });

  /// [messageId] The message identifier. The message will not be available in the chat history, but the identifier can be used in viewMessages, or as a message to be replied in the same chat
  final int messageId;

  /// [senderId] Identifier of the sender of the message. Corresponding user or chat may be inaccessible
  final MessageSender senderId;

  /// [senderName] Name of the sender
  final String senderName;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [content] Push message content
  final PushMessageContent content;

  factory NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) =>
      NotificationTypeNewPushMessage(
        messageId: json['message_id'] ?? 0,
        senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
        senderName: json['sender_name'] ?? '',
        isOutgoing: json['is_outgoing'] ?? false,
        content: PushMessageContent.fromJson(json['content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "sender_id": senderId.toJson(),
      "sender_name": senderName,
      "is_outgoing": isOutgoing,
      "content": content.toJson(),
    };
  }

  @override
  NotificationTypeNewPushMessage copyWith({
    int? messageId,
    MessageSender? senderId,
    String? senderName,
    bool? isOutgoing,
    PushMessageContent? content,
  }) {
    return NotificationTypeNewPushMessage(
      messageId: messageId ?? this.messageId,
      senderId: senderId ?? this.senderId,
      senderName: senderName ?? this.senderName,
      isOutgoing: isOutgoing ?? this.isOutgoing,
      content: content ?? this.content,
    );
  }

  static const CONSTRUCTOR = 'notificationTypeNewPushMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
