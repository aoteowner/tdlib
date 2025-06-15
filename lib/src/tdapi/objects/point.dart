import '../tdapi.dart';

class Point extends TdObject {
  /// A point on a Cartesian plane
  const Point({
    required this.x,
    required this.y,
  });

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  factory Point.fromJson(Map<String, dynamic> json) => Point(
        x: json['x'] ?? 0,
        y: json['y'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x,
      "y": y,
    };
  }

  Point copyWith({
    double? x,
    double? y,
  }) {
    return Point(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }

  static const CONSTRUCTOR = 'point';

  @override
  String getConstructor() => CONSTRUCTOR;
}
