import '../tdapi.dart';

class InputGroupCall extends TdObject {
  /// Describes a non-joined group call that isn't bound to a chat
  const InputGroupCall();

  factory InputGroupCall.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputGroupCallLink.CONSTRUCTOR:
        return InputGroupCallLink.fromJson(json);
      case InputGroupCallMessage.CONSTRUCTOR:
        return InputGroupCallMessage.fromJson(json);
      default:
        return const InputGroupCall();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputGroupCall copyWith() {
    return const InputGroupCall();
  }

  static const CONSTRUCTOR = 'inputGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputGroupCallLink extends InputGroupCall {
  /// The group call is accessible through a link
  const InputGroupCallLink({
    required this.link,
  });

  /// [link] The link for the group call
  final String link;

  factory InputGroupCallLink.fromJson(Map<String, dynamic> json) =>
      InputGroupCallLink(
        link: json['link'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
    };
  }

  @override
  InputGroupCallLink copyWith({
    String? link,
  }) {
    return InputGroupCallLink(
      link: link ?? this.link,
    );
  }

  static const CONSTRUCTOR = 'inputGroupCallLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputGroupCallMessage extends InputGroupCall {
  /// The group call is accessible through a message of the type messageGroupCall
  const InputGroupCallMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message of the type messageGroupCall
  final int messageId;

  factory InputGroupCallMessage.fromJson(Map<String, dynamic> json) =>
      InputGroupCallMessage(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  InputGroupCallMessage copyWith({
    int? chatId,
    int? messageId,
  }) {
    return InputGroupCallMessage(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'inputGroupCallMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
