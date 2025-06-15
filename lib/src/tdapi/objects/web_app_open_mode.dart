import '../tdapi.dart';

class WebAppOpenMode extends TdObject {
  /// Describes mode in which a Web App is opened
  const WebAppOpenMode();

  factory WebAppOpenMode.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case WebAppOpenModeCompact.CONSTRUCTOR:
        return WebAppOpenModeCompact.fromJson(json);
      case WebAppOpenModeFullSize.CONSTRUCTOR:
        return WebAppOpenModeFullSize.fromJson(json);
      case WebAppOpenModeFullScreen.CONSTRUCTOR:
        return WebAppOpenModeFullScreen.fromJson(json);
      default:
        return const WebAppOpenMode();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  WebAppOpenMode copyWith() {
    return const WebAppOpenMode();
  }

  static const CONSTRUCTOR = 'webAppOpenMode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class WebAppOpenModeCompact extends WebAppOpenMode {
  /// The Web App is opened in the compact mode
  const WebAppOpenModeCompact();

  factory WebAppOpenModeCompact.fromJson(Map<String, dynamic> json) =>
      const WebAppOpenModeCompact();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  WebAppOpenModeCompact copyWith() {
    return const WebAppOpenModeCompact();
  }

  static const CONSTRUCTOR = 'webAppOpenModeCompact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class WebAppOpenModeFullSize extends WebAppOpenMode {
  /// The Web App is opened in the full-size mode
  const WebAppOpenModeFullSize();

  factory WebAppOpenModeFullSize.fromJson(Map<String, dynamic> json) =>
      const WebAppOpenModeFullSize();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  WebAppOpenModeFullSize copyWith() {
    return const WebAppOpenModeFullSize();
  }

  static const CONSTRUCTOR = 'webAppOpenModeFullSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class WebAppOpenModeFullScreen extends WebAppOpenMode {
  /// The Web App is opened in the full-screen mode
  const WebAppOpenModeFullScreen();

  factory WebAppOpenModeFullScreen.fromJson(Map<String, dynamic> json) =>
      const WebAppOpenModeFullScreen();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  WebAppOpenModeFullScreen copyWith() {
    return const WebAppOpenModeFullScreen();
  }

  static const CONSTRUCTOR = 'webAppOpenModeFullScreen';

  @override
  String getConstructor() => CONSTRUCTOR;
}
