import '../tdapi.dart';

class InputBackground extends TdObject {
  /// Contains information about background to set
  const InputBackground();

  factory InputBackground.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputBackgroundLocal.CONSTRUCTOR:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.CONSTRUCTOR:
        return InputBackgroundRemote.fromJson(json);
      case InputBackgroundPrevious.CONSTRUCTOR:
        return InputBackgroundPrevious.fromJson(json);
      default:
        return const InputBackground();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputBackground copyWith() {
    return const InputBackground();
  }

  static const CONSTRUCTOR = 'inputBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputBackgroundLocal extends InputBackground {
  /// A background from a local file
  const InputBackgroundLocal({
    required this.background,
  });

  /// [background] Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
  final InputFile background;

  factory InputBackgroundLocal.fromJson(Map<String, dynamic> json) =>
      InputBackgroundLocal(
        background: InputFile.fromJson(json['background'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background": background.toJson(),
    };
  }

  @override
  InputBackgroundLocal copyWith({
    InputFile? background,
  }) {
    return InputBackgroundLocal(
      background: background ?? this.background,
    );
  }

  static const CONSTRUCTOR = 'inputBackgroundLocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputBackgroundRemote extends InputBackground {
  /// A background from the server
  const InputBackgroundRemote({
    required this.backgroundId,
  });

  /// [backgroundId] The background identifier
  final int backgroundId;

  factory InputBackgroundRemote.fromJson(Map<String, dynamic> json) =>
      InputBackgroundRemote(
        backgroundId: int.tryParse(json['background_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_id": backgroundId,
    };
  }

  @override
  InputBackgroundRemote copyWith({
    int? backgroundId,
  }) {
    return InputBackgroundRemote(
      backgroundId: backgroundId ?? this.backgroundId,
    );
  }

  static const CONSTRUCTOR = 'inputBackgroundRemote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputBackgroundPrevious extends InputBackground {
  /// A background previously set in the chat; for chat backgrounds only
  const InputBackgroundPrevious({
    required this.messageId,
  });

  /// [messageId] Identifier of the message with the background
  final int messageId;

  factory InputBackgroundPrevious.fromJson(Map<String, dynamic> json) =>
      InputBackgroundPrevious(
        messageId: json['message_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
    };
  }

  @override
  InputBackgroundPrevious copyWith({
    int? messageId,
  }) {
    return InputBackgroundPrevious(
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'inputBackgroundPrevious';

  @override
  String getConstructor() => CONSTRUCTOR;
}
