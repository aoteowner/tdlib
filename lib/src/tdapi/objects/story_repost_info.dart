import '../tdapi.dart';

class StoryRepostInfo extends TdObject {

  /// Contains information about original story that was reposted
  const StoryRepostInfo({
    required this.origin,
    required this.isContentModified,
  });
  
  /// [origin] Origin of the story that was reposted
  final StoryOrigin origin;

  /// [isContentModified] True, if story content was modified during reposting; otherwise, story wasn't modified
  final bool isContentModified;
  
  /// Parse from a json
  factory StoryRepostInfo.fromJson(Map<String, dynamic> json) => StoryRepostInfo(
    origin: StoryOrigin.fromJson(json['origin']),
    isContentModified: json['is_content_modified'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "origin": origin.toJson(),
      "is_content_modified": isContentModified,
    };
  }
  
  StoryRepostInfo copyWith({
    StoryOrigin? origin,
    bool? isContentModified,
  }) => StoryRepostInfo(
    origin: origin ?? this.origin,
    isContentModified: isContentModified ?? this.isContentModified,
  );

  static const CONSTRUCTOR = 'storyRepostInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
