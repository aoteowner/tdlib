part of '../tdapi.dart';

class FoundAffiliateProgram extends TdObject {

  /// Describes a found affiliate program
  const FoundAffiliateProgram({
    required this.botUserId,
    required this.info,
  });
  
  /// [botUserId] User identifier of the bot created the program
  final int botUserId;

  /// [info] Information about the affiliate program
  final AffiliateProgramInfo info;
  
  /// Parse from a json
  factory FoundAffiliateProgram.fromJson(Map<String, dynamic> json) => FoundAffiliateProgram(
    botUserId: json['bot_user_id'],
    info: AffiliateProgramInfo.fromJson(json['info']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "info": info.toJson(),
    };
  }
  
  FoundAffiliateProgram copyWith({
    int? botUserId,
    AffiliateProgramInfo? info,
  }) => FoundAffiliateProgram(
    botUserId: botUserId ?? this.botUserId,
    info: info ?? this.info,
  );

  static const CONSTRUCTOR = 'foundAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
