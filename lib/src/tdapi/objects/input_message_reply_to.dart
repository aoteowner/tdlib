import '../tdapi.dart';

class InputMessageReplyTo extends TdObject {

  /// Contains information about the message or the story to be replied
  const InputMessageReplyTo();
  
  /// a InputMessageReplyTo return type can be :
  /// * [InputMessageReplyToMessage]
  /// * [InputMessageReplyToExternalMessage]
  /// * [InputMessageReplyToStory]
  factory InputMessageReplyTo.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }
  
  InputMessageReplyTo copyWith() => const InputMessageReplyTo();

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
  
  /// Parse from a json
  factory InputMessageReplyToMessage.fromJson(Map<String, dynamic> json) => InputMessageReplyToMessage(
    messageId: json['message_id'],
    quote: json['quote'] == null ? null : InputTextQuote.fromJson(json['quote']),
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
  }) => InputMessageReplyToMessage(
    messageId: messageId ?? this.messageId,
    quote: quote ?? this.quote,
  );

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
  
  /// Parse from a json
  factory InputMessageReplyToExternalMessage.fromJson(Map<String, dynamic> json) => InputMessageReplyToExternalMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    quote: json['quote'] == null ? null : InputTextQuote.fromJson(json['quote']),
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
  }) => InputMessageReplyToExternalMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    quote: quote ?? this.quote,
  );

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
  
  /// Parse from a json
  factory InputMessageReplyToStory.fromJson(Map<String, dynamic> json) => InputMessageReplyToStory(
    storyPosterChatId: json['story_poster_chat_id'],
    storyId: json['story_id'],
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
  }) => InputMessageReplyToStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'inputMessageReplyToStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
