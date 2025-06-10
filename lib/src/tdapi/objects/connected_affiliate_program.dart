part of '../tdapi.dart';

class ConnectedAffiliateProgram extends TdObject {

  /// Describes an affiliate program that was connected to an affiliate
  const ConnectedAffiliateProgram({
    required this.url,
    required this.botUserId,
    required this.parameters,
    required this.connectionDate,
    required this.isDisconnected,
    required this.userCount,
    required this.revenueStarCount,
    this.extra,
    this.clientId,
  });
  
  /// [url] The link that can be used to refer users if the program is still active
  final String url;

  /// [botUserId] User identifier of the bot created the program
  final int botUserId;

  /// [parameters] The parameters of the affiliate program
  final AffiliateProgramParameters parameters;

  /// [connectionDate] Point in time (Unix timestamp) when the affiliate program was connected
  final int connectionDate;

  /// [isDisconnected] True, if the program was canceled by the bot, or disconnected by the chat owner and isn't available anymore
  final bool isDisconnected;

  /// [userCount] The number of users that used the affiliate program
  final int userCount;

  /// [revenueStarCount] The number of Telegram Stars that were earned by the affiliate program
  final int revenueStarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ConnectedAffiliateProgram.fromJson(Map<String, dynamic> json) => ConnectedAffiliateProgram(
    url: json['url'],
    botUserId: json['bot_user_id'],
    parameters: AffiliateProgramParameters.fromJson(json['parameters']),
    connectionDate: json['connection_date'],
    isDisconnected: json['is_disconnected'],
    userCount: int.parse(json['user_count']),
    revenueStarCount: int.parse(json['revenue_star_count']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "bot_user_id": botUserId,
      "parameters": parameters.toJson(),
      "connection_date": connectionDate,
      "is_disconnected": isDisconnected,
      "user_count": userCount,
      "revenue_star_count": revenueStarCount,
    };
  }
  
  ConnectedAffiliateProgram copyWith({
    String? url,
    int? botUserId,
    AffiliateProgramParameters? parameters,
    int? connectionDate,
    bool? isDisconnected,
    int? userCount,
    int? revenueStarCount,
    dynamic extra,
    int? clientId,
  }) => ConnectedAffiliateProgram(
    url: url ?? this.url,
    botUserId: botUserId ?? this.botUserId,
    parameters: parameters ?? this.parameters,
    connectionDate: connectionDate ?? this.connectionDate,
    isDisconnected: isDisconnected ?? this.isDisconnected,
    userCount: userCount ?? this.userCount,
    revenueStarCount: revenueStarCount ?? this.revenueStarCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'connectedAffiliateProgram';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
