import '../tdapi.dart';

class StoryInfo extends TdObject {
  /// Contains basic information about a story
  const StoryInfo({
    required this.storyId,
    required this.date,
    required this.isForCloseFriends,
  });

  /// [storyId] Unique story identifier among stories of the chat
  final int storyId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isForCloseFriends] True, if the story is available only to close friends
  final bool isForCloseFriends;

  factory StoryInfo.fromJson(Map<String, dynamic> json) => StoryInfo(
        storyId: json['story_id'] ?? 0,
        date: json['date'] ?? 0,
        isForCloseFriends: json['is_for_close_friends'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "date": date,
      "is_for_close_friends": isForCloseFriends,
    };
  }

  StoryInfo copyWith({
    int? storyId,
    int? date,
    bool? isForCloseFriends,
  }) {
    return StoryInfo(
      storyId: storyId ?? this.storyId,
      date: date ?? this.date,
      isForCloseFriends: isForCloseFriends ?? this.isForCloseFriends,
    );
  }

  static const CONSTRUCTOR = 'storyInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
