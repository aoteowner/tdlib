import '../tdapi.dart';

class ConnectedAffiliatePrograms extends TdObject {

  /// Represents a list of affiliate programs that were connected to an affiliate
  const ConnectedAffiliatePrograms({
    required this.totalCount,
    required this.programs,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] The total number of affiliate programs that were connected to the affiliate
  final int totalCount;

  /// [programs] The list of connected affiliate programs
  final List<ConnectedAffiliateProgram> programs;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ConnectedAffiliatePrograms.fromJson(Map<String, dynamic> json) => ConnectedAffiliatePrograms(
    totalCount: json['total_count'] ?? 0,
    programs: json['programs'] == null ? <ConnectedAffiliateProgram>[] :(json['programs'] as List).map((e) => ConnectedAffiliateProgram.fromJson(e ?? {})).toList(),
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
  
  ConnectedAffiliatePrograms copyWith({
    int? totalCount,
    List<ConnectedAffiliateProgram>? programs,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => ConnectedAffiliatePrograms(
    totalCount: totalCount ?? this.totalCount,
    programs: programs ?? this.programs,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'connectedAffiliatePrograms';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
