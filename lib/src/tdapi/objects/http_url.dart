import '../tdapi.dart';

class HttpUrl extends TdObject {
  /// Contains an HTTP URL
  const HttpUrl({
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [url] The URL
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory HttpUrl.fromJson(Map<String, dynamic> json) => HttpUrl(
        url: json['url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  HttpUrl copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) {
    return HttpUrl(
      url: url ?? this.url,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'httpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
