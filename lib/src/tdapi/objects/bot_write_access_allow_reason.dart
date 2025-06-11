import '../tdapi.dart';

class BotWriteAccessAllowReason extends TdObject {

  /// Describes a reason why a bot was allowed to write messages to the current user
  const BotWriteAccessAllowReason();
  
  /// a BotWriteAccessAllowReason return type can be :
  /// * [BotWriteAccessAllowReasonConnectedWebsite]
  /// * [BotWriteAccessAllowReasonAddedToAttachmentMenu]
  /// * [BotWriteAccessAllowReasonLaunchedWebApp]
  /// * [BotWriteAccessAllowReasonAcceptedRequest]
  factory BotWriteAccessAllowReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BotWriteAccessAllowReasonConnectedWebsite.CONSTRUCTOR:
        return BotWriteAccessAllowReasonConnectedWebsite.fromJson(json);
      case BotWriteAccessAllowReasonAddedToAttachmentMenu.CONSTRUCTOR:
        return BotWriteAccessAllowReasonAddedToAttachmentMenu.fromJson(json);
      case BotWriteAccessAllowReasonLaunchedWebApp.CONSTRUCTOR:
        return BotWriteAccessAllowReasonLaunchedWebApp.fromJson(json);
      case BotWriteAccessAllowReasonAcceptedRequest.CONSTRUCTOR:
        return BotWriteAccessAllowReasonAcceptedRequest.fromJson(json);
      default:
        return const BotWriteAccessAllowReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BotWriteAccessAllowReason copyWith() => const BotWriteAccessAllowReason();

  static const CONSTRUCTOR = 'botWriteAccessAllowReason';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotWriteAccessAllowReasonConnectedWebsite extends BotWriteAccessAllowReason {

  /// The user connected a website by logging in using Telegram Login Widget on it
  const BotWriteAccessAllowReasonConnectedWebsite({
    required this.domainName,
  });
  
  /// [domainName] Domain name of the connected website
  final String domainName;
  
  /// Parse from a json
  factory BotWriteAccessAllowReasonConnectedWebsite.fromJson(Map<String, dynamic> json) => BotWriteAccessAllowReasonConnectedWebsite(
    domainName: json['domain_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "domain_name": domainName,
    };
  }
  
  @override
  BotWriteAccessAllowReasonConnectedWebsite copyWith({
    String? domainName,
  }) => BotWriteAccessAllowReasonConnectedWebsite(
    domainName: domainName ?? this.domainName,
  );

  static const CONSTRUCTOR = 'botWriteAccessAllowReasonConnectedWebsite';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotWriteAccessAllowReasonAddedToAttachmentMenu extends BotWriteAccessAllowReason {

  /// The user added the bot to attachment or side menu using toggleBotIsAddedToAttachmentMenu
  const BotWriteAccessAllowReasonAddedToAttachmentMenu();
  
  /// Parse from a json
  factory BotWriteAccessAllowReasonAddedToAttachmentMenu.fromJson(Map<String, dynamic> json) => const BotWriteAccessAllowReasonAddedToAttachmentMenu();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BotWriteAccessAllowReasonAddedToAttachmentMenu copyWith() => const BotWriteAccessAllowReasonAddedToAttachmentMenu();

  static const CONSTRUCTOR = 'botWriteAccessAllowReasonAddedToAttachmentMenu';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotWriteAccessAllowReasonLaunchedWebApp extends BotWriteAccessAllowReason {

  /// The user launched a Web App using getWebAppLinkUrl
  const BotWriteAccessAllowReasonLaunchedWebApp({
    required this.webApp,
  });
  
  /// [webApp] Information about the Web App
  final WebApp webApp;
  
  /// Parse from a json
  factory BotWriteAccessAllowReasonLaunchedWebApp.fromJson(Map<String, dynamic> json) => BotWriteAccessAllowReasonLaunchedWebApp(
    webApp: WebApp.fromJson(json['web_app']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "web_app": webApp.toJson(),
    };
  }
  
  @override
  BotWriteAccessAllowReasonLaunchedWebApp copyWith({
    WebApp? webApp,
  }) => BotWriteAccessAllowReasonLaunchedWebApp(
    webApp: webApp ?? this.webApp,
  );

  static const CONSTRUCTOR = 'botWriteAccessAllowReasonLaunchedWebApp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotWriteAccessAllowReasonAcceptedRequest extends BotWriteAccessAllowReason {

  /// The user accepted bot's request to send messages with allowBotToSendMessages
  const BotWriteAccessAllowReasonAcceptedRequest();
  
  /// Parse from a json
  factory BotWriteAccessAllowReasonAcceptedRequest.fromJson(Map<String, dynamic> json) => const BotWriteAccessAllowReasonAcceptedRequest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BotWriteAccessAllowReasonAcceptedRequest copyWith() => const BotWriteAccessAllowReasonAcceptedRequest();

  static const CONSTRUCTOR = 'botWriteAccessAllowReasonAcceptedRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
