part of '../tdapi.dart';

class InputStoryArea extends TdObject {

  /// Describes a clickable rectangle area on a story media to be added
  const InputStoryArea({
    required this.position,
    required this.type,
  });
  
  /// [position] Position of the area 
  final StoryAreaPosition position;

  /// [type] Type of the area
  final InputStoryAreaType type;
  
  /// Parse from a json
  factory InputStoryArea.fromJson(Map<String, dynamic> json) => InputStoryArea(
    position: StoryAreaPosition.fromJson(json['position']),
    type: InputStoryAreaType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "position": position.toJson(),
      "type": type.toJson(),
    };
  }
  
  InputStoryArea copyWith({
    StoryAreaPosition? position,
    InputStoryAreaType? type,
  }) => InputStoryArea(
    position: position ?? this.position,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'inputStoryArea';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
