import '../tdapi.dart';

class InlineQueryResultsButtonType extends TdObject {
  /// Represents type of button in results of inline query
  const InlineQueryResultsButtonType();

  factory InlineQueryResultsButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InlineQueryResultsButtonTypeStartBot.CONSTRUCTOR:
        return InlineQueryResultsButtonTypeStartBot.fromJson(json);
      case InlineQueryResultsButtonTypeWebApp.CONSTRUCTOR:
        return InlineQueryResultsButtonTypeWebApp.fromJson(json);
      default:
        return const InlineQueryResultsButtonType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InlineQueryResultsButtonType copyWith() {
    return const InlineQueryResultsButtonType();
  }

  static const CONSTRUCTOR = 'inlineQueryResultsButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultsButtonTypeStartBot
    extends InlineQueryResultsButtonType {
  /// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter
  const InlineQueryResultsButtonTypeStartBot({
    required this.parameter,
  });

  /// [parameter] The parameter for the bot start message
  final String parameter;

  factory InlineQueryResultsButtonTypeStartBot.fromJson(
          Map<String, dynamic> json) =>
      InlineQueryResultsButtonTypeStartBot(
        parameter: json['parameter'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameter": parameter,
    };
  }

  @override
  InlineQueryResultsButtonTypeStartBot copyWith({
    String? parameter,
  }) {
    return InlineQueryResultsButtonTypeStartBot(
      parameter: parameter ?? this.parameter,
    );
  }

  static const CONSTRUCTOR = 'inlineQueryResultsButtonTypeStartBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultsButtonTypeWebApp extends InlineQueryResultsButtonType {
  /// Describes the button that opens a Web App by calling getWebAppUrl
  const InlineQueryResultsButtonTypeWebApp({
    required this.url,
  });

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  factory InlineQueryResultsButtonTypeWebApp.fromJson(
          Map<String, dynamic> json) =>
      InlineQueryResultsButtonTypeWebApp(
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  @override
  InlineQueryResultsButtonTypeWebApp copyWith({
    String? url,
  }) {
    return InlineQueryResultsButtonTypeWebApp(
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'inlineQueryResultsButtonTypeWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
