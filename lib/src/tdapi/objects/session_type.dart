import '../tdapi.dart';

class SessionType extends TdObject {
  /// Represents the type of session
  const SessionType();

  factory SessionType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SessionTypeAndroid.CONSTRUCTOR:
        return SessionTypeAndroid.fromJson(json);
      case SessionTypeApple.CONSTRUCTOR:
        return SessionTypeApple.fromJson(json);
      case SessionTypeBrave.CONSTRUCTOR:
        return SessionTypeBrave.fromJson(json);
      case SessionTypeChrome.CONSTRUCTOR:
        return SessionTypeChrome.fromJson(json);
      case SessionTypeEdge.CONSTRUCTOR:
        return SessionTypeEdge.fromJson(json);
      case SessionTypeFirefox.CONSTRUCTOR:
        return SessionTypeFirefox.fromJson(json);
      case SessionTypeIpad.CONSTRUCTOR:
        return SessionTypeIpad.fromJson(json);
      case SessionTypeIphone.CONSTRUCTOR:
        return SessionTypeIphone.fromJson(json);
      case SessionTypeLinux.CONSTRUCTOR:
        return SessionTypeLinux.fromJson(json);
      case SessionTypeMac.CONSTRUCTOR:
        return SessionTypeMac.fromJson(json);
      case SessionTypeOpera.CONSTRUCTOR:
        return SessionTypeOpera.fromJson(json);
      case SessionTypeSafari.CONSTRUCTOR:
        return SessionTypeSafari.fromJson(json);
      case SessionTypeUbuntu.CONSTRUCTOR:
        return SessionTypeUbuntu.fromJson(json);
      case SessionTypeUnknown.CONSTRUCTOR:
        return SessionTypeUnknown.fromJson(json);
      case SessionTypeVivaldi.CONSTRUCTOR:
        return SessionTypeVivaldi.fromJson(json);
      case SessionTypeWindows.CONSTRUCTOR:
        return SessionTypeWindows.fromJson(json);
      case SessionTypeXbox.CONSTRUCTOR:
        return SessionTypeXbox.fromJson(json);
      default:
        return const SessionType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SessionType copyWith() {
    return const SessionType();
  }

  static const CONSTRUCTOR = 'sessionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeAndroid extends SessionType {
  /// The session is running on an Android device
  const SessionTypeAndroid();

  factory SessionTypeAndroid.fromJson(Map<String, dynamic> json) =>
      const SessionTypeAndroid();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeAndroid copyWith() {
    return const SessionTypeAndroid();
  }

  static const CONSTRUCTOR = 'sessionTypeAndroid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeApple extends SessionType {
  /// The session is running on a generic Apple device
  const SessionTypeApple();

  factory SessionTypeApple.fromJson(Map<String, dynamic> json) =>
      const SessionTypeApple();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeApple copyWith() {
    return const SessionTypeApple();
  }

  static const CONSTRUCTOR = 'sessionTypeApple';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeBrave extends SessionType {
  /// The session is running on the Brave browser
  const SessionTypeBrave();

  factory SessionTypeBrave.fromJson(Map<String, dynamic> json) =>
      const SessionTypeBrave();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeBrave copyWith() {
    return const SessionTypeBrave();
  }

  static const CONSTRUCTOR = 'sessionTypeBrave';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeChrome extends SessionType {
  /// The session is running on the Chrome browser
  const SessionTypeChrome();

  factory SessionTypeChrome.fromJson(Map<String, dynamic> json) =>
      const SessionTypeChrome();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeChrome copyWith() {
    return const SessionTypeChrome();
  }

  static const CONSTRUCTOR = 'sessionTypeChrome';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeEdge extends SessionType {
  /// The session is running on the Edge browser
  const SessionTypeEdge();

  factory SessionTypeEdge.fromJson(Map<String, dynamic> json) =>
      const SessionTypeEdge();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeEdge copyWith() {
    return const SessionTypeEdge();
  }

  static const CONSTRUCTOR = 'sessionTypeEdge';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeFirefox extends SessionType {
  /// The session is running on the Firefox browser
  const SessionTypeFirefox();

  factory SessionTypeFirefox.fromJson(Map<String, dynamic> json) =>
      const SessionTypeFirefox();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeFirefox copyWith() {
    return const SessionTypeFirefox();
  }

  static const CONSTRUCTOR = 'sessionTypeFirefox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeIpad extends SessionType {
  /// The session is running on an iPad device
  const SessionTypeIpad();

  factory SessionTypeIpad.fromJson(Map<String, dynamic> json) =>
      const SessionTypeIpad();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeIpad copyWith() {
    return const SessionTypeIpad();
  }

  static const CONSTRUCTOR = 'sessionTypeIpad';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeIphone extends SessionType {
  /// The session is running on an iPhone device
  const SessionTypeIphone();

  factory SessionTypeIphone.fromJson(Map<String, dynamic> json) =>
      const SessionTypeIphone();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeIphone copyWith() {
    return const SessionTypeIphone();
  }

  static const CONSTRUCTOR = 'sessionTypeIphone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeLinux extends SessionType {
  /// The session is running on a Linux device
  const SessionTypeLinux();

  factory SessionTypeLinux.fromJson(Map<String, dynamic> json) =>
      const SessionTypeLinux();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeLinux copyWith() {
    return const SessionTypeLinux();
  }

  static const CONSTRUCTOR = 'sessionTypeLinux';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeMac extends SessionType {
  /// The session is running on a Mac device
  const SessionTypeMac();

  factory SessionTypeMac.fromJson(Map<String, dynamic> json) =>
      const SessionTypeMac();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeMac copyWith() {
    return const SessionTypeMac();
  }

  static const CONSTRUCTOR = 'sessionTypeMac';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeOpera extends SessionType {
  /// The session is running on the Opera browser
  const SessionTypeOpera();

  factory SessionTypeOpera.fromJson(Map<String, dynamic> json) =>
      const SessionTypeOpera();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeOpera copyWith() {
    return const SessionTypeOpera();
  }

  static const CONSTRUCTOR = 'sessionTypeOpera';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeSafari extends SessionType {
  /// The session is running on the Safari browser
  const SessionTypeSafari();

  factory SessionTypeSafari.fromJson(Map<String, dynamic> json) =>
      const SessionTypeSafari();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeSafari copyWith() {
    return const SessionTypeSafari();
  }

  static const CONSTRUCTOR = 'sessionTypeSafari';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeUbuntu extends SessionType {
  /// The session is running on an Ubuntu device
  const SessionTypeUbuntu();

  factory SessionTypeUbuntu.fromJson(Map<String, dynamic> json) =>
      const SessionTypeUbuntu();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeUbuntu copyWith() {
    return const SessionTypeUbuntu();
  }

  static const CONSTRUCTOR = 'sessionTypeUbuntu';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeUnknown extends SessionType {
  /// The session is running on an unknown type of device
  const SessionTypeUnknown();

  factory SessionTypeUnknown.fromJson(Map<String, dynamic> json) =>
      const SessionTypeUnknown();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeUnknown copyWith() {
    return const SessionTypeUnknown();
  }

  static const CONSTRUCTOR = 'sessionTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeVivaldi extends SessionType {
  /// The session is running on the Vivaldi browser
  const SessionTypeVivaldi();

  factory SessionTypeVivaldi.fromJson(Map<String, dynamic> json) =>
      const SessionTypeVivaldi();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeVivaldi copyWith() {
    return const SessionTypeVivaldi();
  }

  static const CONSTRUCTOR = 'sessionTypeVivaldi';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeWindows extends SessionType {
  /// The session is running on a Windows device
  const SessionTypeWindows();

  factory SessionTypeWindows.fromJson(Map<String, dynamic> json) =>
      const SessionTypeWindows();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeWindows copyWith() {
    return const SessionTypeWindows();
  }

  static const CONSTRUCTOR = 'sessionTypeWindows';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeXbox extends SessionType {
  /// The session is running on an Xbox console
  const SessionTypeXbox();

  factory SessionTypeXbox.fromJson(Map<String, dynamic> json) =>
      const SessionTypeXbox();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeXbox copyWith() {
    return const SessionTypeXbox();
  }

  static const CONSTRUCTOR = 'sessionTypeXbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}
