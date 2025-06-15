import '../tdapi.dart';

class InputMessageReplyTo extends TdObject {
  /// Contains information about the message or the story to be replied
  const InputMessageReplyTo();

  factory InputMessageReplyTo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageReplyToMessage.CONSTRUCTOR:
        return InputMessageReplyToMessage.fromJson(json);
      case InputMessageReplyToExternalMessage.CONSTRUCTOR:
        return InputMessageReplyToExternalMessage.fromJson(json);
      case InputMessageReplyToStory.CONSTRUCTOR:
        return InputMessageReplyToStory.fromJson(json);
      default:
        return const InputMessageReplyTo();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputMessageReplyTo copyWith() {
    return const InputMessageReplyTo();
  }

  static const CONSTRUCTOR = 'inputMessageReplyTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageReplyToMessage extends InputMessageReplyTo {
  /// Describes a message to be replied in the same chat and forum topic
  const InputMessageReplyToMessage({
    required this.messageId,
    this.quote,
  });

  /// [messageId] The identifier of the message to be replied in the same chat and forum topic. A message can be replied in the same chat and forum topic only if messageProperties.can_be_replied
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats
  final InputTextQuote? quote;

  factory InputMessageReplyToMessage.fromJson(Map<String, dynamic> json) =>
      InputMessageReplyToMessage(
        messageId: json['message_id'] ?? 0,
        quote: InputTextQuote.fromJson(json['quote'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "quote": quote?.toJson(),
    };
  }

  @override
  InputMessageReplyToMessage copyWith({
    int? messageId,
    InputTextQuote? quote,
  }) {
    return InputMessageReplyToMessage(
      messageId: messageId ?? this.messageId,
      quote: quote ?? this.quote,
    );
  }

  static const CONSTRUCTOR = 'inputMessageReplyToMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageReplyToExternalMessage extends InputMessageReplyTo {
  /// Describes a message to be replied that is from a different chat or a forum topic; not supported in secret chats
  const InputMessageReplyToExternalMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
  });

  /// [chatId] The identifier of the chat to which the message to be replied belongs
  final int chatId;

  /// [messageId] The identifier of the message to be replied in the specified chat. A message can be replied in another chat or forum topic only if messageProperties.can_be_replied_in_another_chat
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none
  final InputTextQuote? quote;

  factory InputMessageReplyToExternalMessage.fromJson(
          Map<String, dynamic> json) =>
      InputMessageReplyToExternalMessage(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        quote: InputTextQuote.fromJson(json['quote'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "quote": quote?.toJson(),
    };
  }

  @override
  InputMessageReplyToExternalMessage copyWith({
    int? chatId,
    int? messageId,
    InputTextQuote? quote,
  }) {
    return InputMessageReplyToExternalMessage(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      quote: quote ?? this.quote,
    );
  }

  static const CONSTRUCTOR = 'inputMessageReplyToExternalMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageReplyToStory extends InputMessageReplyTo {
  /// Describes a story to be replied
  const InputMessageReplyToStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the poster of the story. Currently, stories can be replied only in the chat that posted the story; channel stories can't be replied
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  factory InputMessageReplyToStory.fromJson(Map<String, dynamic> json) =>
      InputMessageReplyToStory(
        storyPosterChatId: json['story_poster_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
    };
  }

  @override
  InputMessageReplyToStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) {
    return InputMessageReplyToStory(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'inputMessageReplyToStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
