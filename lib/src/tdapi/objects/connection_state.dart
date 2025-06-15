import '../tdapi.dart';

class ConnectionState extends TdObject {
  /// Describes the current state of the connection to Telegram servers
  const ConnectionState();

  factory ConnectionState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      default:
        return const ConnectionState();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ConnectionState copyWith() {
    return const ConnectionState();
  }

  static const CONSTRUCTOR = 'connectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateWaitingForNetwork extends ConnectionState {
  /// Waiting for the network to become available. Use setNetworkType to change the available network type
  const ConnectionStateWaitingForNetwork();

  factory ConnectionStateWaitingForNetwork.fromJson(
          Map<String, dynamic> json) =>
      const ConnectionStateWaitingForNetwork();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ConnectionStateWaitingForNetwork copyWith() {
    return const ConnectionStateWaitingForNetwork();
  }

  static const CONSTRUCTOR = 'connectionStateWaitingForNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnectingToProxy extends ConnectionState {
  /// Establishing a connection with a proxy server
  const ConnectionStateConnectingToProxy();

  factory ConnectionStateConnectingToProxy.fromJson(
          Map<String, dynamic> json) =>
      const ConnectionStateConnectingToProxy();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ConnectionStateConnectingToProxy copyWith() {
    return const ConnectionStateConnectingToProxy();
  }

  static const CONSTRUCTOR = 'connectionStateConnectingToProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnecting extends ConnectionState {
  /// Establishing a connection to the Telegram servers
  const ConnectionStateConnecting();

  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) =>
      const ConnectionStateConnecting();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ConnectionStateConnecting copyWith() {
    return const ConnectionStateConnecting();
  }

  static const CONSTRUCTOR = 'connectionStateConnecting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateUpdating extends ConnectionState {
  /// Downloading data expected to be received while the application was offline
  const ConnectionStateUpdating();

  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) =>
      const ConnectionStateUpdating();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ConnectionStateUpdating copyWith() {
    return const ConnectionStateUpdating();
  }

  static const CONSTRUCTOR = 'connectionStateUpdating';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateReady extends ConnectionState {
  /// There is a working connection to the Telegram servers
  const ConnectionStateReady();

  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) =>
      const ConnectionStateReady();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ConnectionStateReady copyWith() {
    return const ConnectionStateReady();
  }

  static const CONSTRUCTOR = 'connectionStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}
