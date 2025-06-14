import '../tdapi.dart';

class InputStoryAreas extends TdObject {
  /// Contains a list of story areas to be added
  const InputStoryAreas({
    required this.areas,
  });

  /// [areas] List of input story areas. Currently, a story can have. up to 10 inputStoryAreaTypeLocation, inputStoryAreaTypeFoundVenue, and inputStoryAreaTypePreviousVenue areas,. up to getOption("story_suggested_reaction_area_count_max") inputStoryAreaTypeSuggestedReaction areas,. up to 1 inputStoryAreaTypeMessage area,. up to getOption("story_link_area_count_max") inputStoryAreaTypeLink areas if the current user is a Telegram Premium user,. up to 3 inputStoryAreaTypeWeather areas, and. up to 1 inputStoryAreaTypeUpgradedGift area
  final List<InputStoryArea> areas;

  factory InputStoryAreas.fromJson(Map<String, dynamic> json) =>
      InputStoryAreas(
        areas: json['areas'] == null
            ? <InputStoryArea>[]
            : (json['areas'] as List)
                .map((e) => InputStoryArea.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "areas": areas.map((e) => e.toJson()).toList(),
    };
  }

  InputStoryAreas copyWith({
    List<InputStoryArea>? areas,
  }) {
    return InputStoryAreas(
      areas: areas ?? this.areas,
    );
  }

  static const CONSTRUCTOR = 'inputStoryAreas';

  @override
  String getConstructor() => CONSTRUCTOR;
}
