import '../tdapi.dart';

class ReportStory extends TdFunction {
  /// Reports a story to the Telegram moderators
  const ReportStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.optionId,
    required this.text,
  });

  /// [storyPosterChatId] The identifier of the poster of the story to report
  final int storyPosterChatId;

  /// [storyId] The identifier of the story to report
  final int storyId;

  /// [optionId] Option identifier chosen by the user; leave empty for the initial request
  final String optionId;

  /// [text] Additional report details; 0-1024 characters; leave empty for the initial request
  final String text;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "option_id": optionId,
      "text": text,
      "@extra": extra,
    };
  }

  ReportStory copyWith({
    int? storyPosterChatId,
    int? storyId,
    String? optionId,
    String? text,
  }) {
    return ReportStory(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
      optionId: optionId ?? this.optionId,
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'reportStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
