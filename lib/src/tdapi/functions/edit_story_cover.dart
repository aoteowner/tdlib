part of '../tdapi.dart';

class EditStoryCover extends TdFunction {

  /// Changes cover of a video story. Can be called only if story.can_be_edited == true and the story isn't being edited now
  const EditStoryCover({
    required this.storyPosterChatId,
    required this.storyId,
    required this.coverFrameTimestamp,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [coverFrameTimestamp] New timestamp of the frame, which will be used as video thumbnail
  final double coverFrameTimestamp;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "cover_frame_timestamp": coverFrameTimestamp,
      "@extra": extra,
    };
  }
  
  EditStoryCover copyWith({
    int? storyPosterChatId,
    int? storyId,
    double? coverFrameTimestamp,
  }) => EditStoryCover(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    coverFrameTimestamp: coverFrameTimestamp ?? this.coverFrameTimestamp,
  );

  static const CONSTRUCTOR = 'editStoryCover';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
