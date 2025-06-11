import '../tdapi.dart';

class ToggleStoryIsPostedToChatPage extends TdFunction {

  /// Toggles whether a story is accessible after expiration. Can be called only if story.can_toggle_is_posted_to_chat_page == true
  const ToggleStoryIsPostedToChatPage({
    required this.storyPosterChatId,
    required this.storyId,
    required this.isPostedToChatPage,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story
  final int storyId;

  /// [isPostedToChatPage] Pass true to make the story accessible after expiration; pass false to make it private
  final bool isPostedToChatPage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "is_posted_to_chat_page": isPostedToChatPage,
      "@extra": extra,
    };
  }
  
  ToggleStoryIsPostedToChatPage copyWith({
    int? storyPosterChatId,
    int? storyId,
    bool? isPostedToChatPage,
  }) => ToggleStoryIsPostedToChatPage(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    isPostedToChatPage: isPostedToChatPage ?? this.isPostedToChatPage,
  );

  static const CONSTRUCTOR = 'toggleStoryIsPostedToChatPage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
