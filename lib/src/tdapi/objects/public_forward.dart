import '../tdapi.dart';

class PublicForward extends TdObject {

  /// Describes a public forward or repost of a story
  const PublicForward();
  
  /// a PublicForward return type can be :
  /// * [PublicForwardMessage]
  /// * [PublicForwardStory]
  factory PublicForward.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PublicForwardMessage.CONSTRUCTOR:
        return PublicForwardMessage.fromJson(json);
      case PublicForwardStory.CONSTRUCTOR:
        return PublicForwardStory.fromJson(json);
      default:
        return const PublicForward();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PublicForward copyWith() => const PublicForward();

  static const CONSTRUCTOR = 'publicForward';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PublicForwardMessage extends PublicForward {

  /// Contains a public forward as a message
  const PublicForwardMessage({
    required this.message,
  });
  
  /// [message] Information about the message
  final Message message;
  
  /// Parse from a json
  factory PublicForwardMessage.fromJson(Map<String, dynamic> json) => PublicForwardMessage(
    message: Message.fromJson(json['message'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }
  
  @override
  PublicForwardMessage copyWith({
    Message? message,
  }) => PublicForwardMessage(
    message: message ?? this.message,
  );

  static const CONSTRUCTOR = 'publicForwardMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PublicForwardStory extends PublicForward {

  /// Contains a public repost to a story
  const PublicForwardStory({
    required this.story,
  });
  
  /// [story] Information about the story
  final Story story;
  
  /// Parse from a json
  factory PublicForwardStory.fromJson(Map<String, dynamic> json) => PublicForwardStory(
    story: Story.fromJson(json['story'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story": story.toJson(),
    };
  }
  
  @override
  PublicForwardStory copyWith({
    Story? story,
  }) => PublicForwardStory(
    story: story ?? this.story,
  );

  static const CONSTRUCTOR = 'publicForwardStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
