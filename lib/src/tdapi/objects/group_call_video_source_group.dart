import '../tdapi.dart';

class GroupCallVideoSourceGroup extends TdObject {
  /// Describes a group of video synchronization source identifiers
  const GroupCallVideoSourceGroup({
    required this.semantics,
    required this.sourceIds,
  });

  /// [semantics] The semantics of sources, one of "SIM" or "FID"
  final String semantics;

  /// [sourceIds] The list of synchronization source identifiers
  final List<int> sourceIds;

  factory GroupCallVideoSourceGroup.fromJson(Map<String, dynamic> json) =>
      GroupCallVideoSourceGroup(
        semantics: json['semantics'] ?? '',
        sourceIds: json['source_ids'] == null
            ? <int>[]
            : (json['source_ids'] as List).map((e) => (e ?? 0) as int).toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "semantics": semantics,
      "source_ids": sourceIds,
    };
  }

  GroupCallVideoSourceGroup copyWith({
    String? semantics,
    List<int>? sourceIds,
  }) {
    return GroupCallVideoSourceGroup(
      semantics: semantics ?? this.semantics,
      sourceIds: sourceIds ?? this.sourceIds,
    );
  }

  static const CONSTRUCTOR = 'groupCallVideoSourceGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
