import '../tdapi.dart';

class Outline extends TdObject {
  /// Represents outline of an image
  const Outline({
    required this.paths,
    this.extra,
    this.clientId,
  });

  /// [paths] The list of closed vector paths
  final List<ClosedVectorPath> paths;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Outline.fromJson(Map<String, dynamic> json) => Outline(
        paths: json['paths'] == null
            ? <ClosedVectorPath>[]
            : (json['paths'] as List)
                .map((e) => ClosedVectorPath.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "paths": paths.map((e) => e.toJson()).toList(),
    };
  }

  Outline copyWith({
    List<ClosedVectorPath>? paths,
    dynamic extra,
    int? clientId,
  }) {
    return Outline(
      paths: paths ?? this.paths,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'outline';

  @override
  String getConstructor() => CONSTRUCTOR;
}
