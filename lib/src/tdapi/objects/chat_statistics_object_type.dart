part of '../tdapi.dart';

class ChatStatisticsObjectType extends TdObject {

  /// Describes type of object, for which statistics are provided
  const ChatStatisticsObjectType();
  
  /// a ChatStatisticsObjectType return type can be :
  /// * [ChatStatisticsObjectTypeMessage]
  /// * [ChatStatisticsObjectTypeStory]
  factory ChatStatisticsObjectType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatStatisticsObjectTypeMessage.CONSTRUCTOR:
        return ChatStatisticsObjectTypeMessage.fromJson(json);
      case ChatStatisticsObjectTypeStory.CONSTRUCTOR:
        return ChatStatisticsObjectTypeStory.fromJson(json);
      default:
        return const ChatStatisticsObjectType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatStatisticsObjectType copyWith() => const ChatStatisticsObjectType();

  static const CONSTRUCTOR = 'chatStatisticsObjectType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatStatisticsObjectTypeMessage extends ChatStatisticsObjectType {

  /// Describes a message sent in the chat
  const ChatStatisticsObjectTypeMessage({
    required this.messageId,
  });
  
  /// [messageId] Message identifier
  final int messageId;
  
  /// Parse from a json
  factory ChatStatisticsObjectTypeMessage.fromJson(Map<String, dynamic> json) => ChatStatisticsObjectTypeMessage(
    messageId: json['message_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
    };
  }
  
  @override
  ChatStatisticsObjectTypeMessage copyWith({
    int? messageId,
  }) => ChatStatisticsObjectTypeMessage(
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'chatStatisticsObjectTypeMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatStatisticsObjectTypeStory extends ChatStatisticsObjectType {

  /// Describes a story posted on behalf of the chat
  const ChatStatisticsObjectTypeStory({
    required this.storyId,
  });
  
  /// [storyId] Story identifier
  final int storyId;
  
  /// Parse from a json
  factory ChatStatisticsObjectTypeStory.fromJson(Map<String, dynamic> json) => ChatStatisticsObjectTypeStory(
    storyId: json['story_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
    };
  }
  
  @override
  ChatStatisticsObjectTypeStory copyWith({
    int? storyId,
  }) => ChatStatisticsObjectTypeStory(
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'chatStatisticsObjectTypeStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
