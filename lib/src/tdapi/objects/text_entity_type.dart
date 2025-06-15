import '../tdapi.dart';

class TextEntityType extends TdObject {
  /// Represents a part of the text which must be formatted differently
  const TextEntityType();

  factory TextEntityType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TextEntityTypeMention.CONSTRUCTOR:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.CONSTRUCTOR:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.CONSTRUCTOR:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.CONSTRUCTOR:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.CONSTRUCTOR:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.CONSTRUCTOR:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.CONSTRUCTOR:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.CONSTRUCTOR:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.CONSTRUCTOR:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.CONSTRUCTOR:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeSpoiler.CONSTRUCTOR:
        return TextEntityTypeSpoiler.fromJson(json);
      case TextEntityTypeCode.CONSTRUCTOR:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.CONSTRUCTOR:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.CONSTRUCTOR:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeBlockQuote.CONSTRUCTOR:
        return TextEntityTypeBlockQuote.fromJson(json);
      case TextEntityTypeExpandableBlockQuote.CONSTRUCTOR:
        return TextEntityTypeExpandableBlockQuote.fromJson(json);
      case TextEntityTypeTextUrl.CONSTRUCTOR:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.CONSTRUCTOR:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypeCustomEmoji.CONSTRUCTOR:
        return TextEntityTypeCustomEmoji.fromJson(json);
      case TextEntityTypeMediaTimestamp.CONSTRUCTOR:
        return TextEntityTypeMediaTimestamp.fromJson(json);
      default:
        return const TextEntityType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  TextEntityType copyWith() {
    return const TextEntityType();
  }

  static const CONSTRUCTOR = 'textEntityType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeMention extends TextEntityType {
  /// A mention of a user, a supergroup, or a channel by their username
  const TextEntityTypeMention();

  factory TextEntityTypeMention.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeMention();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeMention copyWith() {
    return const TextEntityTypeMention();
  }

  static const CONSTRUCTOR = 'textEntityTypeMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeHashtag extends TextEntityType {
  /// A hashtag text, beginning with "#" and optionally containing a chat username at the end
  const TextEntityTypeHashtag();

  factory TextEntityTypeHashtag.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeHashtag();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeHashtag copyWith() {
    return const TextEntityTypeHashtag();
  }

  static const CONSTRUCTOR = 'textEntityTypeHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeCashtag extends TextEntityType {
  /// A cashtag text, beginning with "$", consisting of capital English letters (e.g., "$USD"), and optionally containing a chat username at the end
  const TextEntityTypeCashtag();

  factory TextEntityTypeCashtag.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeCashtag();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeCashtag copyWith() {
    return const TextEntityTypeCashtag();
  }

  static const CONSTRUCTOR = 'textEntityTypeCashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBotCommand extends TextEntityType {
  /// A bot command, beginning with "/"
  const TextEntityTypeBotCommand();

  factory TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeBotCommand();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeBotCommand copyWith() {
    return const TextEntityTypeBotCommand();
  }

  static const CONSTRUCTOR = 'textEntityTypeBotCommand';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeUrl extends TextEntityType {
  /// An HTTP URL
  const TextEntityTypeUrl();

  factory TextEntityTypeUrl.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeUrl();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeUrl copyWith() {
    return const TextEntityTypeUrl();
  }

  static const CONSTRUCTOR = 'textEntityTypeUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeEmailAddress extends TextEntityType {
  /// An email address
  const TextEntityTypeEmailAddress();

  factory TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeEmailAddress();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeEmailAddress copyWith() {
    return const TextEntityTypeEmailAddress();
  }

  static const CONSTRUCTOR = 'textEntityTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePhoneNumber extends TextEntityType {
  /// A phone number
  const TextEntityTypePhoneNumber();

  factory TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypePhoneNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypePhoneNumber copyWith() {
    return const TextEntityTypePhoneNumber();
  }

  static const CONSTRUCTOR = 'textEntityTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBankCardNumber extends TextEntityType {
  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card
  const TextEntityTypeBankCardNumber();

  factory TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeBankCardNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeBankCardNumber copyWith() {
    return const TextEntityTypeBankCardNumber();
  }

  static const CONSTRUCTOR = 'textEntityTypeBankCardNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBold extends TextEntityType {
  /// A bold text
  const TextEntityTypeBold();

  factory TextEntityTypeBold.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeBold();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeBold copyWith() {
    return const TextEntityTypeBold();
  }

  static const CONSTRUCTOR = 'textEntityTypeBold';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeItalic extends TextEntityType {
  /// An italic text
  const TextEntityTypeItalic();

  factory TextEntityTypeItalic.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeItalic();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeItalic copyWith() {
    return const TextEntityTypeItalic();
  }

  static const CONSTRUCTOR = 'textEntityTypeItalic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeUnderline extends TextEntityType {
  /// An underlined text
  const TextEntityTypeUnderline();

  factory TextEntityTypeUnderline.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeUnderline();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeUnderline copyWith() {
    return const TextEntityTypeUnderline();
  }

  static const CONSTRUCTOR = 'textEntityTypeUnderline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeStrikethrough extends TextEntityType {
  /// A strikethrough text
  const TextEntityTypeStrikethrough();

  factory TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeStrikethrough();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeStrikethrough copyWith() {
    return const TextEntityTypeStrikethrough();
  }

  static const CONSTRUCTOR = 'textEntityTypeStrikethrough';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeSpoiler extends TextEntityType {
  /// A spoiler text
  const TextEntityTypeSpoiler();

  factory TextEntityTypeSpoiler.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeSpoiler();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeSpoiler copyWith() {
    return const TextEntityTypeSpoiler();
  }

  static const CONSTRUCTOR = 'textEntityTypeSpoiler';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeCode extends TextEntityType {
  /// Text that must be formatted as if inside a code HTML tag
  const TextEntityTypeCode();

  factory TextEntityTypeCode.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeCode();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeCode copyWith() {
    return const TextEntityTypeCode();
  }

  static const CONSTRUCTOR = 'textEntityTypeCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePre extends TextEntityType {
  /// Text that must be formatted as if inside a pre HTML tag
  const TextEntityTypePre();

  factory TextEntityTypePre.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypePre();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypePre copyWith() {
    return const TextEntityTypePre();
  }

  static const CONSTRUCTOR = 'textEntityTypePre';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypePreCode extends TextEntityType {
  /// Text that must be formatted as if inside pre, and code HTML tags
  const TextEntityTypePreCode({
    required this.language,
  });

  /// [language] Programming language of the code; as defined by the sender
  final String language;

  factory TextEntityTypePreCode.fromJson(Map<String, dynamic> json) =>
      TextEntityTypePreCode(
        language: json['language'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language": language,
    };
  }

  @override
  TextEntityTypePreCode copyWith({
    String? language,
  }) {
    return TextEntityTypePreCode(
      language: language ?? this.language,
    );
  }

  static const CONSTRUCTOR = 'textEntityTypePreCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeBlockQuote extends TextEntityType {
  /// Text that must be formatted as if inside a blockquote HTML tag; not supported in secret chats
  const TextEntityTypeBlockQuote();

  factory TextEntityTypeBlockQuote.fromJson(Map<String, dynamic> json) =>
      const TextEntityTypeBlockQuote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeBlockQuote copyWith() {
    return const TextEntityTypeBlockQuote();
  }

  static const CONSTRUCTOR = 'textEntityTypeBlockQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeExpandableBlockQuote extends TextEntityType {
  /// Text that must be formatted as if inside a blockquote HTML tag and collapsed by default to 3 lines with the ability to show full text; not supported in secret chats
  const TextEntityTypeExpandableBlockQuote();

  factory TextEntityTypeExpandableBlockQuote.fromJson(
          Map<String, dynamic> json) =>
      const TextEntityTypeExpandableBlockQuote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  TextEntityTypeExpandableBlockQuote copyWith() {
    return const TextEntityTypeExpandableBlockQuote();
  }

  static const CONSTRUCTOR = 'textEntityTypeExpandableBlockQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeTextUrl extends TextEntityType {
  /// A text description shown instead of a raw URL
  const TextEntityTypeTextUrl({
    required this.url,
  });

  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  final String url;

  factory TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) =>
      TextEntityTypeTextUrl(
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
  TextEntityTypeTextUrl copyWith({
    String? url,
  }) {
    return TextEntityTypeTextUrl(
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'textEntityTypeTextUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeMentionName extends TextEntityType {
  /// A text shows instead of a raw mention of the user (e.g., when the user has no username)
  const TextEntityTypeMentionName({
    required this.userId,
  });

  /// [userId] Identifier of the mentioned user
  final int userId;

  factory TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) =>
      TextEntityTypeMentionName(
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  TextEntityTypeMentionName copyWith({
    int? userId,
  }) {
    return TextEntityTypeMentionName(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'textEntityTypeMentionName';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeCustomEmoji extends TextEntityType {
  /// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji
  const TextEntityTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  factory TextEntityTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      TextEntityTypeCustomEmoji(
        customEmojiId: int.tryParse(json['custom_emoji_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_id": customEmojiId,
    };
  }

  @override
  TextEntityTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) {
    return TextEntityTypeCustomEmoji(
      customEmojiId: customEmojiId ?? this.customEmojiId,
    );
  }

  static const CONSTRUCTOR = 'textEntityTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TextEntityTypeMediaTimestamp extends TextEntityType {
  /// A media timestamp
  const TextEntityTypeMediaTimestamp({
    required this.mediaTimestamp,
  });

  /// [mediaTimestamp] Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the link preview of the current message, or in the same places in the replied message
  final int mediaTimestamp;

  factory TextEntityTypeMediaTimestamp.fromJson(Map<String, dynamic> json) =>
      TextEntityTypeMediaTimestamp(
        mediaTimestamp: json['media_timestamp'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "media_timestamp": mediaTimestamp,
    };
  }

  @override
  TextEntityTypeMediaTimestamp copyWith({
    int? mediaTimestamp,
  }) {
    return TextEntityTypeMediaTimestamp(
      mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
    );
  }

  static const CONSTRUCTOR = 'textEntityTypeMediaTimestamp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
