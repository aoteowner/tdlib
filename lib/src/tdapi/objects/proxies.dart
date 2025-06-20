import '../tdapi.dart';

class Proxies extends TdObject {
  /// Represents a list of proxy servers
  const Proxies({
    required this.proxies,
    this.extra,
    this.clientId,
  });

  /// [proxies] List of proxy servers
  final List<Proxy> proxies;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Proxies.fromJson(Map<String, dynamic> json) => Proxies(
        proxies: json['proxies'] == null
            ? <Proxy>[]
            : (json['proxies'] as List)
                .map((e) => Proxy.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "proxies": proxies.map((e) => e.toJson()).toList(),
    };
  }

  Proxies copyWith({
    List<Proxy>? proxies,
    dynamic extra,
    int? clientId,
  }) {
    return Proxies(
      proxies: proxies ?? this.proxies,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'proxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
