import '../tdapi.dart';

class FoundStories extends TdObject {

  /// Contains a list of stories found by a search
  const FoundStories({
    required this.totalCount,
    required this.stories,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total number of stories found 
  final int totalCount;

  /// [stories] List of stories 
  final List<Story> stories;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundStories.fromJson(Map<String, dynamic> json) => FoundStories(
    totalCount: json['total_count'],
    stories: List<Story>.from((json['stories'] ?? []).map((item) => Story.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "stories": stories.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }
  
  FoundStories copyWith({
    int? totalCount,
    List<Story>? stories,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => FoundStories(
    totalCount: totalCount ?? this.totalCount,
    stories: stories ?? this.stories,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'foundStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
