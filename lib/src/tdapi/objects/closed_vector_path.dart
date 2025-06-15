import '../tdapi.dart';

class ClosedVectorPath extends TdObject {
  /// Represents a closed vector path. The path begins at the end point of the last command. The coordinate system origin is in the upper-left corner
  const ClosedVectorPath({
    required this.commands,
  });

  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;

  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) =>
      ClosedVectorPath(
        commands: json['commands'] == null
            ? <VectorPathCommand>[]
            : (json['commands'] as List)
                .map((e) => VectorPathCommand.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "commands": commands.map((e) => e.toJson()).toList(),
    };
  }

  ClosedVectorPath copyWith({
    List<VectorPathCommand>? commands,
  }) {
    return ClosedVectorPath(
      commands: commands ?? this.commands,
    );
  }

  static const CONSTRUCTOR = 'closedVectorPath';

  @override
  String getConstructor() => CONSTRUCTOR;
}
