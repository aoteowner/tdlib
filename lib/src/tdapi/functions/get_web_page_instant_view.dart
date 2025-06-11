import '../tdapi.dart';

class GetWebPageInstantView extends TdFunction {

  /// Returns an instant view version of a web page if available. This is an offline method if only_local is true. Returns a 404 error if the web page has no instant view page
  const GetWebPageInstantView({
    required this.url,
    required this.onlyLocal,
  });
  
  /// [url] The web page URL
  final String url;

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }
  
  GetWebPageInstantView copyWith({
    String? url,
    bool? onlyLocal,
  }) => GetWebPageInstantView(
    url: url ?? this.url,
    onlyLocal: onlyLocal ?? this.onlyLocal,
  );

  static const CONSTRUCTOR = 'getWebPageInstantView';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
