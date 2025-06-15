import '../tdapi.dart';

class StoryInteractionType extends TdObject {
  /// Describes type of interaction with a story
  const StoryInteractionType();

  factory StoryInteractionType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryInteractionTypeView.CONSTRUCTOR:
        return StoryInteractionTypeView.fromJson(json);
      case StoryInteractionTypeForward.CONSTRUCTOR:
        return StoryInteractionTypeForward.fromJson(json);
      case StoryInteractionTypeRepost.CONSTRUCTOR:
        return StoryInteractionTypeRepost.fromJson(json);
      default:
        return const StoryInteractionType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryInteractionType copyWith() {
    return const StoryInteractionType();
  }

  static const CONSTRUCTOR = 'storyInteractionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryInteractionTypeView extends StoryInteractionType {
  /// A view of the story
  const StoryInteractionTypeView({
    this.chosenReactionType,
  });

  /// [chosenReactionType] Type of the reaction that was chosen by the viewer; may be null if none
  final ReactionType? chosenReactionType;

  factory StoryInteractionTypeView.fromJson(Map<String, dynamic> json) =>
      StoryInteractionTypeView(
        chosenReactionType:
            ReactionType.fromJson(json['chosen_reaction_type'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chosen_reaction_type": chosenReactionType?.toJson(),
    };
  }

  @override
  StoryInteractionTypeView copyWith({
    ReactionType? chosenReactionType,
  }) {
    return StoryInteractionTypeView(
      chosenReactionType: chosenReactionType ?? this.chosenReactionType,
    );
  }

  static const CONSTRUCTOR = 'storyInteractionTypeView';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryInteractionTypeForward extends StoryInteractionType {
  /// A forward of the story as a message
  const StoryInteractionTypeForward({
    required this.message,
  });

  /// [message] The message with story forward
  final Message message;

  factory StoryInteractionTypeForward.fromJson(Map<String, dynamic> json) =>
      StoryInteractionTypeForward(
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
  StoryInteractionTypeForward copyWith({
    Message? message,
  }) {
    return StoryInteractionTypeForward(
      message: message ?? this.message,
    );
  }

  static const CONSTRUCTOR = 'storyInteractionTypeForward';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryInteractionTypeRepost extends StoryInteractionType {
  /// A repost of the story as a story
  const StoryInteractionTypeRepost({
    required this.story,
  });

  /// [story] The reposted story
  final Story story;

  factory StoryInteractionTypeRepost.fromJson(Map<String, dynamic> json) =>
      StoryInteractionTypeRepost(
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
  StoryInteractionTypeRepost copyWith({
    Story? story,
  }) {
    return StoryInteractionTypeRepost(
      story: story ?? this.story,
    );
  }

  static const CONSTRUCTOR = 'storyInteractionTypeRepost';

  @override
  String getConstructor() => CONSTRUCTOR;
}
