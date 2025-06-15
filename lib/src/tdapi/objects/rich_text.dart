import '../tdapi.dart';

class RichText extends TdObject {
  /// Describes a formatted text object
  const RichText();

  factory RichText.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case RichTextPlain.CONSTRUCTOR:
        return RichTextPlain.fromJson(json);
      case RichTextBold.CONSTRUCTOR:
        return RichTextBold.fromJson(json);
      case RichTextItalic.CONSTRUCTOR:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.CONSTRUCTOR:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.CONSTRUCTOR:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.CONSTRUCTOR:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.CONSTRUCTOR:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.CONSTRUCTOR:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.CONSTRUCTOR:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.CONSTRUCTOR:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.CONSTRUCTOR:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.CONSTRUCTOR:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.CONSTRUCTOR:
        return RichTextIcon.fromJson(json);
      case RichTextReference.CONSTRUCTOR:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.CONSTRUCTOR:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.CONSTRUCTOR:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.CONSTRUCTOR:
        return RichTexts.fromJson(json);
      default:
        return const RichText();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  RichText copyWith() {
    return const RichText();
  }

  static const CONSTRUCTOR = 'richText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPlain extends RichText {
  /// A plain text
  const RichTextPlain({
    required this.text,
  });

  /// [text] Text
  final String text;

  factory RichTextPlain.fromJson(Map<String, dynamic> json) => RichTextPlain(
        text: json['text'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
    };
  }

  @override
  RichTextPlain copyWith({
    String? text,
  }) {
    return RichTextPlain(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextPlain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextBold extends RichText {
  /// A bold rich text
  const RichTextBold({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextBold.fromJson(Map<String, dynamic> json) => RichTextBold(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextBold copyWith({
    RichText? text,
  }) {
    return RichTextBold(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextBold';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextItalic extends RichText {
  /// An italicized rich text
  const RichTextItalic({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextItalic.fromJson(Map<String, dynamic> json) => RichTextItalic(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextItalic copyWith({
    RichText? text,
  }) {
    return RichTextItalic(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextItalic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUnderline extends RichText {
  /// An underlined rich text
  const RichTextUnderline({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextUnderline.fromJson(Map<String, dynamic> json) =>
      RichTextUnderline(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextUnderline copyWith({
    RichText? text,
  }) {
    return RichTextUnderline(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextUnderline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextStrikethrough extends RichText {
  /// A strikethrough rich text
  const RichTextStrikethrough({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) =>
      RichTextStrikethrough(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextStrikethrough copyWith({
    RichText? text,
  }) {
    return RichTextStrikethrough(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextStrikethrough';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextFixed extends RichText {
  /// A fixed-width rich text
  const RichTextFixed({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextFixed.fromJson(Map<String, dynamic> json) => RichTextFixed(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextFixed copyWith({
    RichText? text,
  }) {
    return RichTextFixed(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextFixed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextUrl extends RichText {
  /// A rich text URL link
  const RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });

  /// [text] Text
  final RichText text;

  /// [url] URL
  final String url;

  /// [isCached] True, if the URL has cached instant view server-side
  final bool isCached;

  factory RichTextUrl.fromJson(Map<String, dynamic> json) => RichTextUrl(
        text: RichText.fromJson(json['text'] ?? {}),
        url: json['url'] ?? '',
        isCached: json['is_cached'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "url": url,
      "is_cached": isCached,
    };
  }

  @override
  RichTextUrl copyWith({
    RichText? text,
    String? url,
    bool? isCached,
  }) {
    return RichTextUrl(
      text: text ?? this.text,
      url: url ?? this.url,
      isCached: isCached ?? this.isCached,
    );
  }

  static const CONSTRUCTOR = 'richTextUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextEmailAddress extends RichText {
  /// A rich text email link
  const RichTextEmailAddress({
    required this.text,
    required this.emailAddress,
  });

  /// [text] Text
  final RichText text;

  /// [emailAddress] Email address
  final String emailAddress;

  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) =>
      RichTextEmailAddress(
        text: RichText.fromJson(json['text'] ?? {}),
        emailAddress: json['email_address'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "email_address": emailAddress,
    };
  }

  @override
  RichTextEmailAddress copyWith({
    RichText? text,
    String? emailAddress,
  }) {
    return RichTextEmailAddress(
      text: text ?? this.text,
      emailAddress: emailAddress ?? this.emailAddress,
    );
  }

  static const CONSTRUCTOR = 'richTextEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSubscript extends RichText {
  /// A subscript rich text
  const RichTextSubscript({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextSubscript.fromJson(Map<String, dynamic> json) =>
      RichTextSubscript(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextSubscript copyWith({
    RichText? text,
  }) {
    return RichTextSubscript(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextSubscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextSuperscript extends RichText {
  /// A superscript rich text
  const RichTextSuperscript({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) =>
      RichTextSuperscript(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextSuperscript copyWith({
    RichText? text,
  }) {
    return RichTextSuperscript(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextSuperscript';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextMarked extends RichText {
  /// A marked rich text
  const RichTextMarked({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  factory RichTextMarked.fromJson(Map<String, dynamic> json) => RichTextMarked(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  RichTextMarked copyWith({
    RichText? text,
  }) {
    return RichTextMarked(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'richTextMarked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextPhoneNumber extends RichText {
  /// A rich text phone number
  const RichTextPhoneNumber({
    required this.text,
    required this.phoneNumber,
  });

  /// [text] Text
  final RichText text;

  /// [phoneNumber] Phone number
  final String phoneNumber;

  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) =>
      RichTextPhoneNumber(
        text: RichText.fromJson(json['text'] ?? {}),
        phoneNumber: json['phone_number'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "phone_number": phoneNumber,
    };
  }

  @override
  RichTextPhoneNumber copyWith({
    RichText? text,
    String? phoneNumber,
  }) {
    return RichTextPhoneNumber(
      text: text ?? this.text,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  static const CONSTRUCTOR = 'richTextPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextIcon extends RichText {
  /// A small image inside the text
  const RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });

  /// [document] The image represented as a document. The image can be in GIF, JPEG or PNG format
  final Document document;

  /// [width] Width of a bounding box in which the image must be shown; 0 if unknown
  final int width;

  /// [height] Height of a bounding box in which the image must be shown; 0 if unknown
  final int height;

  factory RichTextIcon.fromJson(Map<String, dynamic> json) => RichTextIcon(
        document: Document.fromJson(json['document'] ?? {}),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "width": width,
      "height": height,
    };
  }

  @override
  RichTextIcon copyWith({
    Document? document,
    int? width,
    int? height,
  }) {
    return RichTextIcon(
      document: document ?? this.document,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  static const CONSTRUCTOR = 'richTextIcon';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextReference extends RichText {
  /// A reference to a richTexts object on the same page
  const RichTextReference({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// [text] The text
  final RichText text;

  /// [anchorName] The name of a richTextAnchor object, which is the first element of the target richTexts object
  final String anchorName;

  /// [url] An HTTP URL, opening the reference
  final String url;

  factory RichTextReference.fromJson(Map<String, dynamic> json) =>
      RichTextReference(
        text: RichText.fromJson(json['text'] ?? {}),
        anchorName: json['anchor_name'] ?? '',
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
    };
  }

  @override
  RichTextReference copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) {
    return RichTextReference(
      text: text ?? this.text,
      anchorName: anchorName ?? this.anchorName,
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'richTextReference';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchor extends RichText {
  /// An anchor
  const RichTextAnchor({
    required this.name,
  });

  /// [name] Anchor name
  final String name;

  factory RichTextAnchor.fromJson(Map<String, dynamic> json) => RichTextAnchor(
        name: json['name'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }

  @override
  RichTextAnchor copyWith({
    String? name,
  }) {
    return RichTextAnchor(
      name: name ?? this.name,
    );
  }

  static const CONSTRUCTOR = 'richTextAnchor';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTextAnchorLink extends RichText {
  /// A link to an anchor on the same page
  const RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// [text] The link text
  final RichText text;

  /// [anchorName] The anchor name. If the name is empty, the link must bring back to top
  final String anchorName;

  /// [url] An HTTP URL, opening the anchor
  final String url;

  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) =>
      RichTextAnchorLink(
        text: RichText.fromJson(json['text'] ?? {}),
        anchorName: json['anchor_name'] ?? '',
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
    };
  }

  @override
  RichTextAnchorLink copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) {
    return RichTextAnchorLink(
      text: text ?? this.text,
      anchorName: anchorName ?? this.anchorName,
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'richTextAnchorLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class RichTexts extends RichText {
  /// A concatenation of rich texts
  const RichTexts({
    required this.texts,
  });

  /// [texts] Texts
  final List<RichText> texts;

  factory RichTexts.fromJson(Map<String, dynamic> json) => RichTexts(
        texts: json['texts'] == null
            ? <RichText>[]
            : (json['texts'] as List)
                .map((e) => RichText.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "texts": texts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  RichTexts copyWith({
    List<RichText>? texts,
  }) {
    return RichTexts(
      texts: texts ?? this.texts,
    );
  }

  static const CONSTRUCTOR = 'richTexts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
