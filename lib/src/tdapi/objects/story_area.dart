import '../tdapi.dart';

class StoryArea extends TdObject {

  /// Describes a clickable rectangle area on a story media
  const StoryArea({
    required this.position,
    required this.type,
  });
  
  /// [position] Position of the area 
  final StoryAreaPosition position;

  /// [type] Type of the area
  final StoryAreaType type;
  
  /// Parse from a json
  factory StoryArea.fromJson(Map<String, dynamic> json) => StoryArea(
    position: StoryAreaPosition.fromJson(json['position']),
    type: StoryAreaType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "position": position.toJson(),
      "type": type.toJson(),
    };
  }
  
  StoryArea copyWith({
    StoryAreaPosition? position,
    StoryAreaType? type,
  }) => StoryArea(
    position: position ?? this.position,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'storyArea';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
