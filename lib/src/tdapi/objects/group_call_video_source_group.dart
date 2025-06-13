import '../tdapi.dart';

class GroupCallVideoSourceGroup extends TdObject {

  /// Describes a group of video synchronization source identifiers
  const GroupCallVideoSourceGroup({
    required this.semantics,
    required this.sourceIds,
  });
  
  /// [semantics] The semantics of sources, one of "SIM" or "FgroupCallVideoSourceGroup" 
  final String semantics;

  /// [sourceIds] The list of synchronization source identifiers
  final List<int> sourceIds;
  
  /// Parse from a json
  factory GroupCallVideoSourceGroup.fromJson(Map<String, dynamic> json) => GroupCallVideoSourceGroup(
    semantics: json['semantics'] ?? '',
    sourceIds: json['source_ids']?.cast<int>() ?? [],
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
  }) => GroupCallVideoSourceGroup(
    semantics: semantics ?? this.semantics,
    sourceIds: sourceIds ?? this.sourceIds,
  );

  static const CONSTRUCTOR = 'groupCallVideoSourceGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
