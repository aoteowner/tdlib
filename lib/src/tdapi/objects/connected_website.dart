import '../tdapi.dart';

class ConnectedWebsite extends TdObject {
  /// Contains information about one website the current user is logged in with Telegram
  const ConnectedWebsite({
    required this.id,
    required this.domainName,
    required this.botUserId,
    required this.browser,
    required this.platform,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ipAddress,
    required this.location,
  });

  /// [id] Website identifier
  final int id;

  /// [domainName] The domain name of the website
  final String domainName;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [browser] The version of a browser used to log in
  final String browser;

  /// [platform] Operating system the browser is running on
  final String platform;

  /// [logInDate] Point in time (Unix timestamp) when the user was logged in
  final int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when obtained authorization was last used
  final int lastActiveDate;

  /// [ipAddress] IP address from which the user was logged in, in human-readable format
  final String ipAddress;

  /// [location] Human-readable description of a country and a region from which the user was logged in, based on the IP address
  final String location;

  factory ConnectedWebsite.fromJson(Map<String, dynamic> json) =>
      ConnectedWebsite(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        domainName: json['domain_name'] ?? '',
        botUserId: json['bot_user_id'] ?? 0,
        browser: json['browser'] ?? '',
        platform: json['platform'] ?? '',
        logInDate: json['log_in_date'] ?? 0,
        lastActiveDate: json['last_active_date'] ?? 0,
        ipAddress: json['ip_address'] ?? '',
        location: json['location'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "domain_name": domainName,
      "bot_user_id": botUserId,
      "browser": browser,
      "platform": platform,
      "log_in_date": logInDate,
      "last_active_date": lastActiveDate,
      "ip_address": ipAddress,
      "location": location,
    };
  }

  ConnectedWebsite copyWith({
    int? id,
    String? domainName,
    int? botUserId,
    String? browser,
    String? platform,
    int? logInDate,
    int? lastActiveDate,
    String? ipAddress,
    String? location,
  }) {
    return ConnectedWebsite(
      id: id ?? this.id,
      domainName: domainName ?? this.domainName,
      botUserId: botUserId ?? this.botUserId,
      browser: browser ?? this.browser,
      platform: platform ?? this.platform,
      logInDate: logInDate ?? this.logInDate,
      lastActiveDate: lastActiveDate ?? this.lastActiveDate,
      ipAddress: ipAddress ?? this.ipAddress,
      location: location ?? this.location,
    );
  }

  static const CONSTRUCTOR = 'connectedWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
}
