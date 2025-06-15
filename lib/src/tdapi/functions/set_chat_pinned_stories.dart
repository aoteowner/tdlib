import '../tdapi.dart';

class SetChatPinnedStories extends TdFunction {
  /// Changes the list of pinned stories on a chat page; requires can_edit_stories right in the chat
  const SetChatPinnedStories({
    required this.chatId,
    required this.storyIds,
  });

  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [storyIds] New list of pinned stories. All stories must be posted to the chat page first. There can be up to getOption("pinned_story_count_max") pinned stories on a chat page
  final List<int> storyIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "story_ids": storyIds,
      "@extra": extra,
    };
  }

  SetChatPinnedStories copyWith({
    int? chatId,
    List<int>? storyIds,
  }) {
    return SetChatPinnedStories(
      chatId: chatId ?? this.chatId,
      storyIds: storyIds ?? this.storyIds,
    );
  }

  static const CONSTRUCTOR = 'setChatPinnedStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
