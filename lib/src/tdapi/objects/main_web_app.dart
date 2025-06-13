import '../tdapi.dart';

class MainWebApp extends TdObject {

  /// Contains information about the main Web App of a bot
  const MainWebApp({
    required this.url,
    required this.mode,
    this.extra,
    this.clientId,
  });
  
  /// [url] URL of the Web App to open 
  final String url;

  /// [mode] The mode in which the Web App must be opened
  final WebAppOpenMode mode;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MainWebApp.fromJson(Map<String, dynamic> json) => MainWebApp(
    url: json['url'] ?? '',
    mode: WebAppOpenMode.fromJson(json['mode'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "mode": mode.toJson(),
    };
  }
  
  MainWebApp copyWith({
    String? url,
    WebAppOpenMode? mode,
    dynamic extra,
    int? clientId,
  }) => MainWebApp(
    url: url ?? this.url,
    mode: mode ?? this.mode,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'mainWebApp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
