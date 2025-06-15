import '../tdapi.dart';

class Proxy extends TdObject {
  /// Contains information about a proxy server
  const Proxy({
    required this.id,
    required this.server,
    required this.port,
    required this.lastUsedDate,
    required this.isEnabled,
    required this.type,
    this.extra,
    this.clientId,
  });

  /// [id] Unique identifier of the proxy
  final int id;

  /// [server] Proxy server domain or IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [lastUsedDate] Point in time (Unix timestamp) when the proxy was last used; 0 if never
  final int lastUsedDate;

  /// [isEnabled] True, if the proxy is enabled now
  final bool isEnabled;

  /// [type] Type of the proxy
  final ProxyType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Proxy.fromJson(Map<String, dynamic> json) => Proxy(
        id: json['id'] ?? 0,
        server: json['server'] ?? '',
        port: json['port'] ?? 0,
        lastUsedDate: json['last_used_date'] ?? 0,
        isEnabled: json['is_enabled'] ?? false,
        type: ProxyType.fromJson(json['type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "server": server,
      "port": port,
      "last_used_date": lastUsedDate,
      "is_enabled": isEnabled,
      "type": type.toJson(),
    };
  }

  Proxy copyWith({
    int? id,
    String? server,
    int? port,
    int? lastUsedDate,
    bool? isEnabled,
    ProxyType? type,
    dynamic extra,
    int? clientId,
  }) {
    return Proxy(
      id: id ?? this.id,
      server: server ?? this.server,
      port: port ?? this.port,
      lastUsedDate: lastUsedDate ?? this.lastUsedDate,
      isEnabled: isEnabled ?? this.isEnabled,
      type: type ?? this.type,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'proxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
