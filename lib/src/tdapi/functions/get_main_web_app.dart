import '../tdapi.dart';

class GetMainWebApp extends TdFunction {
  /// Returns information needed to open the main Web App of a bot
  const GetMainWebApp({
    required this.chatId,
    required this.botUserId,
    required this.startParameter,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened; pass 0 if none
  final int chatId;

  /// [botUserId] Identifier of the target bot. If the bot is restricted for the current user, then show an error instead of calling the method
  final int botUserId;

  /// [startParameter] Start parameter from internalLinkTypeMainWebApp
  final String startParameter;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "start_parameter": startParameter,
      "parameters": parameters.toJson(),
      "@extra": extra,
    };
  }

  GetMainWebApp copyWith({
    int? chatId,
    int? botUserId,
    String? startParameter,
    WebAppOpenParameters? parameters,
  }) {
    return GetMainWebApp(
      chatId: chatId ?? this.chatId,
      botUserId: botUserId ?? this.botUserId,
      startParameter: startParameter ?? this.startParameter,
      parameters: parameters ?? this.parameters,
    );
  }

  static const CONSTRUCTOR = 'getMainWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
