import '../tdapi.dart';

class TextParseMode extends TdObject {
  /// Describes the way the text needs to be parsed for text entities
  const TextParseMode();

  factory TextParseMode.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TextParseModeMarkdown.CONSTRUCTOR:
        return TextParseModeMarkdown.fromJson(json);
      case TextParseModeHTML.CONSTRUCTOR:
        return TextParseModeHTML.fromJson(json);
      default:
        return const TextParseMode();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  TextParseMode copyWith() {
    return const TextParseMode();
  }

  static const CONSTRUCTOR = 'textParseMode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeMarkdown extends TextParseMode {
  /// The text uses Markdown-style formatting
  const TextParseModeMarkdown({
    required this.version,
  });

  /// [version] Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  factory TextParseModeMarkdown.fromJson(Map<String, dynamic> json) =>
      TextParseModeMarkdown(
        version: json['version'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "version": version,
    };
  }

  @override
  TextParseModeMarkdown copyWith({
    int? version,
  }) {
    return TextParseModeMarkdown(
      version: version ?? this.version,
    );
  }

  static const CONSTRUCTOR = 'textParseModeMarkdown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextParseModeHTML extends TextParseMode {
  /// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode
  const TextParseModeHTML();

  factory TextParseModeHTML.fromJson(Map<String, dynamic> json) =>
      const TextParseModeHTML();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextParseModeHTML copyWith() {
    return const TextParseModeHTML();
  }

  static const CONSTRUCTOR = 'textParseModeHTML';

  @override
  String getConstructor() => CONSTRUCTOR;
}
