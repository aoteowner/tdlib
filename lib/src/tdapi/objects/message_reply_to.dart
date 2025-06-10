part of '../tdapi.dart';

class MessageReplyTo extends TdObject {

  /// Contains information about the message or the story a message is replying to
  const MessageReplyTo();
  
  /// a MessageReplyTo return type can be :
  /// * [MessageReplyToMessage]
  /// * [MessageReplyToStory]
  factory MessageReplyTo.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageReplyToMessage.CONSTRUCTOR:
        return MessageReplyToMessage.fromJson(json);
      case MessageReplyToStory.CONSTRUCTOR:
        return MessageReplyToStory.fromJson(json);
      default:
        return const MessageReplyTo();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageReplyTo copyWith() => const MessageReplyTo();

  static const CONSTRUCTOR = 'messageReplyTo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReplyToMessage extends MessageReplyTo {

  /// Describes a message replied by a given message
  const MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
    this.origin,
    required this.originSendDate,
    this.content,
  });
  
  /// [chatId] The identifier of the chat to which the message belongs; may be 0 if the replied message is in unknown chat
  final int chatId;

  /// [messageId] The identifier of the message; may be 0 if the replied message is in unknown chat
  final int messageId;

  /// [quote] Chosen quote from the replied message; may be null if none
  final TextQuote? quote;

  /// [origin] Information about origin of the message if the message was from another chat or topic; may be null for messages from the same chat
  final MessageOrigin? origin;

  /// [originSendDate] Point in time (Unix timestamp) when the message was sent if the message was from another chat or topic; 0 for messages from the same chat
  final int originSendDate;

  /// [content] Media content of the message if the message was from another chat or topic; may be null for messages from the same chat and messages without media.. Can be only one of the following types: messageAnimation, messageAudio, messageContact, messageDice, messageDocument, messageGame, messageGiveaway, messageGiveawayWinners,. messageInvoice, messageLocation, messagePaidMedia, messagePhoto, messagePoll, messageSticker, messageStory, messageText (for link preview), messageVenue, messageVideo,. messageVideoNote, or messageVoiceNote
  final MessageContent? content;
  
  /// Parse from a json
  factory MessageReplyToMessage.fromJson(Map<String, dynamic> json) => MessageReplyToMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    quote: json['quote'] == null ? null : TextQuote.fromJson(json['quote']),
    origin: json['origin'] == null ? null : MessageOrigin.fromJson(json['origin']),
    originSendDate: json['origin_send_date'],
    content: json['content'] == null ? null : MessageContent.fromJson(json['content']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "quote": quote?.toJson(),
      "origin": origin?.toJson(),
      "origin_send_date": originSendDate,
      "content": content?.toJson(),
    };
  }
  
  @override
  MessageReplyToMessage copyWith({
    int? chatId,
    int? messageId,
    TextQuote? quote,
    MessageOrigin? origin,
    int? originSendDate,
    MessageContent? content,
  }) => MessageReplyToMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    quote: quote ?? this.quote,
    origin: origin ?? this.origin,
    originSendDate: originSendDate ?? this.originSendDate,
    content: content ?? this.content,
  );

  static const CONSTRUCTOR = 'messageReplyToMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReplyToStory extends MessageReplyTo {

  /// Describes a story replied by a given message
  const MessageReplyToStory({
    required this.storyPosterChatId,
    required this.storyId,
  });
  
  /// [storyPosterChatId] The identifier of the poster of the story 
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;
  
  /// Parse from a json
  factory MessageReplyToStory.fromJson(Map<String, dynamic> json) => MessageReplyToStory(
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
  MessageReplyToStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) => MessageReplyToStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'messageReplyToStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
