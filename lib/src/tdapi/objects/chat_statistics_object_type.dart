import '../tdapi.dart';

class ChatStatisticsObjectType extends TdObject {
  /// Describes type of object, for which statistics are provided
  const ChatStatisticsObjectType();

  factory ChatStatisticsObjectType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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
    return {};
  }

  ChatStatisticsObjectType copyWith() {
    return const ChatStatisticsObjectType();
  }

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

  factory ChatStatisticsObjectTypeMessage.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsObjectTypeMessage(
        messageId: json['message_id'] ?? 0,
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
  }) {
    return ChatStatisticsObjectTypeMessage(
      messageId: messageId ?? this.messageId,
    );
  }

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

  factory ChatStatisticsObjectTypeStory.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsObjectTypeStory(
        storyId: json['story_id'] ?? 0,
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
  }) {
    return ChatStatisticsObjectTypeStory(
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsObjectTypeStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
