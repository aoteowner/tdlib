part of '../tdapi.dart';

class GetWebAppUrl extends TdFunction {

  /// Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, or an inlineQueryResultsButtonTypeWebApp button
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    required this.parameters,
  });
  
  /// [botUserId] Identifier of the target bot. If the bot is restricted for the current user, then show an error instead of calling the method
  final int botUserId;

  /// [url] The URL from a keyboardButtonTypeWebApp button, inlineQueryResultsButtonTypeWebApp button, or an empty string when the bot is opened from the side menu
  final String url;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "url": url,
      "parameters": parameters.toJson(),
      "@extra": extra,
    };
  }
  
  GetWebAppUrl copyWith({
    int? botUserId,
    String? url,
    WebAppOpenParameters? parameters,
  }) => GetWebAppUrl(
    botUserId: botUserId ?? this.botUserId,
    url: url ?? this.url,
    parameters: parameters ?? this.parameters,
  );

  static const CONSTRUCTOR = 'getWebAppUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
