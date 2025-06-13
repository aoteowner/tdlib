import '../tdapi.dart';

class StoryInteractionInfo extends TdObject {

  /// Contains information about interactions with a story
  const StoryInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    required this.reactionCount,
    required this.recentViewerUserIds,
  });
  
  /// [viewCount] Number of times the story was viewed
  final int viewCount;

  /// [forwardCount] Number of times the story was forwarded; 0 if none or unknown
  final int forwardCount;

  /// [reactionCount] Number of reactions added to the story; 0 if none or unknown
  final int reactionCount;

  /// [recentViewerUserIds] Identifiers of at most 3 recent viewers of the story
  final List<int> recentViewerUserIds;
  
  /// Parse from a json
  factory StoryInteractionInfo.fromJson(Map<String, dynamic> json) => StoryInteractionInfo(
    viewCount: json['view_count'] ?? 0,
    forwardCount: json['forward_count'] ?? 0,
    reactionCount: json['reaction_count'] ?? 0,
    recentViewerUserIds: json['recent_viewer_user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "view_count": viewCount,
      "forward_count": forwardCount,
      "reaction_count": reactionCount,
      "recent_viewer_user_ids": recentViewerUserIds,
    };
  }
  
  StoryInteractionInfo copyWith({
    int? viewCount,
    int? forwardCount,
    int? reactionCount,
    List<int>? recentViewerUserIds,
  }) => StoryInteractionInfo(
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
    reactionCount: reactionCount ?? this.reactionCount,
    recentViewerUserIds: recentViewerUserIds ?? this.recentViewerUserIds,
  );

  static const CONSTRUCTOR = 'storyInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
