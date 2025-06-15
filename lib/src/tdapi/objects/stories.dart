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

  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
        totalCount: json['total_count'] ?? 0,
        stories: json['stories'] == null
            ? <Story>[]
            : (json['stories'] as List)
                .map((e) => Story.fromJson(e ?? {}))
                .toList(),
        pinnedStoryIds: json['pinned_story_ids'] == null
            ? <int>[]
            : (json['pinned_story_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "stories": stories.map((e) => e.toJson()).toList(),
      "pinned_story_ids": pinnedStoryIds,
    };
  }

  Stories copyWith({
    int? totalCount,
    List<Story>? stories,
    List<int>? pinnedStoryIds,
    dynamic extra,
    int? clientId,
  }) {
    return Stories(
      totalCount: totalCount ?? this.totalCount,
      stories: stories ?? this.stories,
      pinnedStoryIds: pinnedStoryIds ?? this.pinnedStoryIds,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'stories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
