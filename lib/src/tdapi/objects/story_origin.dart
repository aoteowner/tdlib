import '../tdapi.dart';

class StoryOrigin extends TdObject {
  /// Contains information about the origin of a story that was reposted
  const StoryOrigin();

  factory StoryOrigin.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryOriginPublicStory.CONSTRUCTOR:
        return StoryOriginPublicStory.fromJson(json);
      case StoryOriginHiddenUser.CONSTRUCTOR:
        return StoryOriginHiddenUser.fromJson(json);
      default:
        return const StoryOrigin();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryOrigin copyWith() {
    return const StoryOrigin();
  }

  static const CONSTRUCTOR = 'storyOrigin';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryOriginPublicStory extends StoryOrigin {
  /// The original story was a public story that was posted by a known chat
  const StoryOriginPublicStory({
    required this.chatId,
    required this.storyId,
  });

  /// [chatId] Identifier of the chat that posted original story
  final int chatId;

  /// [storyId] Story identifier of the original story
  final int storyId;

  factory StoryOriginPublicStory.fromJson(Map<String, dynamic> json) =>
      StoryOriginPublicStory(
        chatId: json['chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "story_id": storyId,
    };
  }

  @override
  StoryOriginPublicStory copyWith({
    int? chatId,
    int? storyId,
  }) {
    return StoryOriginPublicStory(
      chatId: chatId ?? this.chatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'storyOriginPublicStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryOriginHiddenUser extends StoryOrigin {
  /// The original story was posted by an unknown user
  const StoryOriginHiddenUser({
    required this.posterName,
  });

  /// [posterName] Name of the user or the chat that posted the story
  final String posterName;

  factory StoryOriginHiddenUser.fromJson(Map<String, dynamic> json) =>
      StoryOriginHiddenUser(
        posterName: json['poster_name'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poster_name": posterName,
    };
  }

  @override
  StoryOriginHiddenUser copyWith({
    String? posterName,
  }) {
    return StoryOriginHiddenUser(
      posterName: posterName ?? this.posterName,
    );
  }

  static const CONSTRUCTOR = 'storyOriginHiddenUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
