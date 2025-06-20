import '../tdapi.dart';

class CallServer extends TdObject {
  /// Describes a server for relaying call data
  const CallServer({
    required this.id,
    required this.ipAddress,
    required this.ipv6Address,
    required this.port,
    required this.type,
  });

  /// [id] Server identifier
  final int id;

  /// [ipAddress] Server IPv4 address
  final String ipAddress;

  /// [ipv6Address] Server IPv6 address
  final String ipv6Address;

  /// [port] Server port number
  final int port;

  /// [type] Server type
  final CallServerType type;

  factory CallServer.fromJson(Map<String, dynamic> json) => CallServer(
        id: int.tryParse(json['id'] ?? '') ?? 0,
        ipAddress: json['ip_address'] ?? '',
        ipv6Address: json['ipv6_address'] ?? '',
        port: json['port'] ?? 0,
        type: CallServerType.fromJson(json['type'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "ip_address": ipAddress,
      "ipv6_address": ipv6Address,
      "port": port,
      "type": type.toJson(),
    };
  }

  CallServer copyWith({
    int? id,
    String? ipAddress,
    String? ipv6Address,
    int? port,
    CallServerType? type,
  }) {
    return CallServer(
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      ipv6Address: ipv6Address ?? this.ipv6Address,
      port: port ?? this.port,
      type: type ?? this.type,
    );
  }

  static const CONSTRUCTOR = 'callServer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
