import '../tdapi.dart';

class NetworkType extends TdObject {
  /// Represents the type of network
  const NetworkType();

  factory NetworkType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NetworkTypeNone.CONSTRUCTOR:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.CONSTRUCTOR:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.CONSTRUCTOR:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.CONSTRUCTOR:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.CONSTRUCTOR:
        return NetworkTypeOther.fromJson(json);
      default:
        return const NetworkType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  NetworkType copyWith() {
    return const NetworkType();
  }

  static const CONSTRUCTOR = 'networkType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeNone extends NetworkType {
  /// The network is not available
  const NetworkTypeNone();

  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeNone();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NetworkTypeNone copyWith() {
    return const NetworkTypeNone();
  }

  static const CONSTRUCTOR = 'networkTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobile extends NetworkType {
  /// A mobile network
  const NetworkTypeMobile();

  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeMobile();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NetworkTypeMobile copyWith() {
    return const NetworkTypeMobile();
  }

  static const CONSTRUCTOR = 'networkTypeMobile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobileRoaming extends NetworkType {
  /// A mobile roaming network
  const NetworkTypeMobileRoaming();

  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeMobileRoaming();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NetworkTypeMobileRoaming copyWith() {
    return const NetworkTypeMobileRoaming();
  }

  static const CONSTRUCTOR = 'networkTypeMobileRoaming';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeWiFi extends NetworkType {
  /// A Wi-Fi network
  const NetworkTypeWiFi();

  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeWiFi();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NetworkTypeWiFi copyWith() {
    return const NetworkTypeWiFi();
  }

  static const CONSTRUCTOR = 'networkTypeWiFi';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeOther extends NetworkType {
  /// A different network type (e.g., Ethernet network)
  const NetworkTypeOther();

  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeOther();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  NetworkTypeOther copyWith() {
    return const NetworkTypeOther();
  }

  static const CONSTRUCTOR = 'networkTypeOther';

  @override
  String getConstructor() => CONSTRUCTOR;
}
