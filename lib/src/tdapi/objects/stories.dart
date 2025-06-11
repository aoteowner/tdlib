import '../tdapi.dart';

class Stories extends TdObject {

  /// Represents a list of stories
  const Stories({
    required this.totalCount,
    required this.stories,
    required this.pinnedStoryIds,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total number of stories found
  final int totalCount;

  /// [stories] The list of stories
  final List<Story> stories;

  /// [pinnedStoryIds] Identifiers of the pinned stories; returned only in getChatPostedToChatPageStories with from_story_id == 0
  final List<int> pinnedStoryIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
    totalCount: json['total_count'],
    stories: List<Story>.from((json['stories'] ?? []).map((item) => Story.fromJson(item)).toList()),
    pinnedStoryIds: List<int>.from((json['pinned_story_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "stories": stories.map((i) => i.toJson()).toList(),
      "pinned_story_ids": pinnedStoryIds.map((i) => i).toList(),
    };
  }
  
  Stories copyWith({
    int? totalCount,
    List<Story>? stories,
    List<int>? pinnedStoryIds,
    dynamic extra,
    int? clientId,
  }) => Stories(
    totalCount: totalCount ?? this.totalCount,
    stories: stories ?? this.stories,
    pinnedStoryIds: pinnedStoryIds ?? this.pinnedStoryIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'stories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
