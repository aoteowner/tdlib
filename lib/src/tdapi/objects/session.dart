import '../tdapi.dart';

class Session extends TdObject {

  /// Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order
  const Session({
    required this.id,
    required this.isCurrent,
    required this.isPasswordPending,
    required this.isUnconfirmed,
    required this.canAcceptSecretChats,
    required this.canAcceptCalls,
    required this.type,
    required this.apiId,
    required this.applicationName,
    required this.applicationVersion,
    required this.isOfficialApplication,
    required this.deviceModel,
    required this.platform,
    required this.systemVersion,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ipAddress,
    required this.location,
    this.extra,
    this.clientId,
  });
  
  /// [id] Session identifier
  final int id;

  /// [isCurrent] True, if this session is the current session
  final bool isCurrent;

  /// [isPasswordPending] True, if a 2-step verification password is needed to complete authorization of the session
  final bool isPasswordPending;

  /// [isUnconfirmed] True, if the session wasn't confirmed from another session
  final bool isUnconfirmed;

  /// [canAcceptSecretChats] True, if incoming secret chats can be accepted by the session
  final bool canAcceptSecretChats;

  /// [canAcceptCalls] True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  /// [type] Session type based on the system and application version, which can be used to display a corresponding icon
  final SessionType type;

  /// [apiId] Telegram API identifier, as provided by the application
  final int apiId;

  /// [applicationName] Name of the application, as provided by the application
  final String applicationName;

  /// [applicationVersion] The version of the application, as provided by the application
  final String applicationVersion;

  /// [isOfficialApplication] True, if the application is an official application or uses the api_id of an official application
  final bool isOfficialApplication;

  /// [deviceModel] Model of the device the application has been run or is running on, as provided by the application
  final String deviceModel;

  /// [platform] Operating system the application has been run or is running on, as provided by the application
  final String platform;

  /// [systemVersion] Version of the operating system the application has been run or is running on, as provided by the application
  final String systemVersion;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last used
  final int lastActiveDate;

  /// [ipAddress] IP address from which the session was created, in human-readable format
  final String ipAddress;

  /// [location] A human-readable description of the location from which the session was created, based on the IP address
  final String location;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Session.fromJson(Map<String, dynamic> json) => Session(
    id: int.tryParse(json['id'] ?? '') ?? 0,
    isCurrent: json['is_current'] ?? false,
    isPasswordPending: json['is_password_pending'] ?? false,
    isUnconfirmed: json['is_unconfirmed'] ?? false,
    canAcceptSecretChats: json['can_accept_secret_chats'] ?? false,
    canAcceptCalls: json['can_accept_calls'] ?? false,
    type: SessionType.fromJson(json['type'] ?? {}),
    apiId: json['api_id'] ?? 0,
    applicationName: json['application_name'] ?? '',
    applicationVersion: json['application_version'] ?? '',
    isOfficialApplication: json['is_official_application'] ?? false,
    deviceModel: json['device_model'] ?? '',
    platform: json['platform'] ?? '',
    systemVersion: json['system_version'] ?? '',
    logInDate: json['log_in_date'] ?? 0,
    lastActiveDate: json['last_active_date'] ?? 0,
    ipAddress: json['ip_address'] ?? '',
    location: json['location'] ?? '',
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "is_current": isCurrent,
      "is_password_pending": isPasswordPending,
      "is_unconfirmed": isUnconfirmed,
      "can_accept_secret_chats": canAcceptSecretChats,
      "can_accept_calls": canAcceptCalls,
      "type": type.toJson(),
      "api_id": apiId,
      "application_name": applicationName,
      "application_version": applicationVersion,
      "is_official_application": isOfficialApplication,
      "device_model": deviceModel,
      "platform": platform,
      "system_version": systemVersion,
      "log_in_date": logInDate,
      "last_active_date": lastActiveDate,
      "ip_address": ipAddress,
      "location": location,
    };
  }
  
  Session copyWith({
    int? id,
    bool? isCurrent,
    bool? isPasswordPending,
    bool? isUnconfirmed,
    bool? canAcceptSecretChats,
    bool? canAcceptCalls,
    SessionType? type,
    int? apiId,
    String? applicationName,
    String? applicationVersion,
    bool? isOfficialApplication,
    String? deviceModel,
    String? platform,
    String? systemVersion,
    int? logInDate,
    int? lastActiveDate,
    String? ipAddress,
    String? location,
    dynamic extra,
    int? clientId,
  }) => Session(
    id: id ?? this.id,
    isCurrent: isCurrent ?? this.isCurrent,
    isPasswordPending: isPasswordPending ?? this.isPasswordPending,
    isUnconfirmed: isUnconfirmed ?? this.isUnconfirmed,
    canAcceptSecretChats: canAcceptSecretChats ?? this.canAcceptSecretChats,
    canAcceptCalls: canAcceptCalls ?? this.canAcceptCalls,
    type: type ?? this.type,
    apiId: apiId ?? this.apiId,
    applicationName: applicationName ?? this.applicationName,
    applicationVersion: applicationVersion ?? this.applicationVersion,
    isOfficialApplication: isOfficialApplication ?? this.isOfficialApplication,
    deviceModel: deviceModel ?? this.deviceModel,
    platform: platform ?? this.platform,
    systemVersion: systemVersion ?? this.systemVersion,
    logInDate: logInDate ?? this.logInDate,
    lastActiveDate: lastActiveDate ?? this.lastActiveDate,
    ipAddress: ipAddress ?? this.ipAddress,
    location: location ?? this.location,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'session';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
