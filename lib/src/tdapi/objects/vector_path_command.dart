import '../tdapi.dart';

class VectorPathCommand extends TdObject {
  /// Represents a vector path command
  const VectorPathCommand();

  factory VectorPathCommand.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return const VectorPathCommand();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  VectorPathCommand copyWith() {
    return const VectorPathCommand();
  }

  static const CONSTRUCTOR = 'vectorPathCommand';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandLine extends VectorPathCommand {
  /// A straight line to a given point
  const VectorPathCommandLine({
    required this.endPoint,
  });

  /// [endPoint] The end point of the straight line
  final Point endPoint;

  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) =>
      VectorPathCommandLine(
        endPoint: Point.fromJson(json['end_point'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "end_point": endPoint.toJson(),
    };
  }

  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) {
    return VectorPathCommandLine(
      endPoint: endPoint ?? this.endPoint,
    );
  }

  static const CONSTRUCTOR = 'vectorPathCommandLine';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  /// A cubic B
  const VectorPathCommandCubicBezierCurve();

  factory VectorPathCommandCubicBezierCurve.fromJson(
          Map<String, dynamic> json) =>
      const VectorPathCommandCubicBezierCurve();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  VectorPathCommandCubicBezierCurve copyWith() {
    return const VectorPathCommandCubicBezierCurve();
  }

  static const CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  @override
  String getConstructor() => CONSTRUCTOR;
}
