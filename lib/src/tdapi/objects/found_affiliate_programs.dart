import '../tdapi.dart';

class FoundAffiliatePrograms extends TdObject {

  /// Represents a list of found affiliate programs
  const FoundAffiliatePrograms({
    required this.totalCount,
    required this.programs,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] The total number of found affiliate programs
  final int totalCount;

  /// [programs] The list of affiliate programs
  final List<FoundAffiliateProgram> programs;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FoundAffiliatePrograms.fromJson(Map<String, dynamic> json) => FoundAffiliatePrograms(
    totalCount: json['total_count'] ?? 0,
    programs: json['programs'] == null ? [] :(json['programs'] as List).map((e) => FoundAffiliateProgram.fromJson(e ?? {})).toList(),
    nextOffset: json['next_offset'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "programs": programs.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }
  
  FoundAffiliatePrograms copyWith({
    int? totalCount,
    List<FoundAffiliateProgram>? programs,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => FoundAffiliatePrograms(
    totalCount: totalCount ?? this.totalCount,
    programs: programs ?? this.programs,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'foundAffiliatePrograms';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
