import '../tdapi.dart';

class GetWebAppLinkUrl extends TdFunction {
  /// Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked
  const GetWebAppLinkUrl({
    required this.chatId,
    required this.botUserId,
    required this.webAppShortName,
    required this.startParameter,
    required this.allowWriteAccess,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the link was clicked; pass 0 if none
  final int chatId;

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter from internalLinkTypeWebApp
  final String startParameter;

  /// [allowWriteAccess] Pass true if the current user allowed the bot to send them messages
  final bool allowWriteAccess;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "web_app_short_name": webAppShortName,
      "start_parameter": startParameter,
      "allow_write_access": allowWriteAccess,
      "parameters": parameters.toJson(),
      "@extra": extra,
    };
  }

  GetWebAppLinkUrl copyWith({
    int? chatId,
    int? botUserId,
    String? webAppShortName,
    String? startParameter,
    bool? allowWriteAccess,
    WebAppOpenParameters? parameters,
  }) {
    return GetWebAppLinkUrl(
      chatId: chatId ?? this.chatId,
      botUserId: botUserId ?? this.botUserId,
      webAppShortName: webAppShortName ?? this.webAppShortName,
      startParameter: startParameter ?? this.startParameter,
      allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
      parameters: parameters ?? this.parameters,
    );
  }

  static const CONSTRUCTOR = 'getWebAppLinkUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
