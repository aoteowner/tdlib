import '../tdapi.dart';

class CallState extends TdObject {
  /// Describes the current call state
  const CallState();

  factory CallState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallStatePending.CONSTRUCTOR:
        return CallStatePending.fromJson(json);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateReady.CONSTRUCTOR:
        return CallStateReady.fromJson(json);
      case CallStateHangingUp.CONSTRUCTOR:
        return CallStateHangingUp.fromJson(json);
      case CallStateDiscarded.CONSTRUCTOR:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.CONSTRUCTOR:
        return CallStateError.fromJson(json);
      default:
        return const CallState();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  CallState copyWith() {
    return const CallState();
  }

  static const CONSTRUCTOR = 'callState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStatePending extends CallState {
  /// The call is pending, waiting to be accepted by a user
  const CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });

  /// [isCreated] True, if the call has already been created by the server
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other party
  final bool isReceived;

  factory CallStatePending.fromJson(Map<String, dynamic> json) =>
      CallStatePending(
        isCreated: json['is_created'] ?? false,
        isReceived: json['is_received'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_created": isCreated,
      "is_received": isReceived,
    };
  }

  @override
  CallStatePending copyWith({
    bool? isCreated,
    bool? isReceived,
  }) {
    return CallStatePending(
      isCreated: isCreated ?? this.isCreated,
      isReceived: isReceived ?? this.isReceived,
    );
  }

  static const CONSTRUCTOR = 'callStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateExchangingKeys extends CallState {
  /// The call has been answered and encryption keys are being exchanged
  const CallStateExchangingKeys();

  factory CallStateExchangingKeys.fromJson(Map<String, dynamic> json) =>
      const CallStateExchangingKeys();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallStateExchangingKeys copyWith() {
    return const CallStateExchangingKeys();
  }

  static const CONSTRUCTOR = 'callStateExchangingKeys';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateReady extends CallState {
  /// The call is ready to use
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
    required this.isGroupCallSupported,
    required this.customParameters,
  });

  /// [protocol] Call protocols supported by the other call participant
  final CallProtocol protocol;

  /// [servers] List of available call servers
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config
  final String config;

  /// [encryptionKey] Call encryption key
  final String encryptionKey;

  /// [emojis] Encryption key fingerprint represented as 4 emoji
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  final bool allowP2p;

  /// [isGroupCallSupported] True, if the other party supports upgrading of the call to a group call
  final bool isGroupCallSupported;

  /// [customParameters] Custom JSON-encoded call parameters to be passed to tgcalls
  final String customParameters;

  factory CallStateReady.fromJson(Map<String, dynamic> json) => CallStateReady(
        protocol: CallProtocol.fromJson(json['protocol'] ?? {}),
        servers: json['servers'] == null
            ? <CallServer>[]
            : (json['servers'] as List)
                .map((e) => CallServer.fromJson(e ?? {}))
                .toList(),
        config: json['config'] ?? '',
        encryptionKey: json['encryption_key'] ?? '',
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        allowP2p: json['allow_p2p'] ?? false,
        isGroupCallSupported: json['is_group_call_supported'] ?? false,
        customParameters: json['custom_parameters'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "protocol": protocol.toJson(),
      "servers": servers.map((e) => e.toJson()).toList(),
      "config": config,
      "encryption_key": encryptionKey,
      "emojis": emojis,
      "allow_p2p": allowP2p,
      "is_group_call_supported": isGroupCallSupported,
      "custom_parameters": customParameters,
    };
  }

  @override
  CallStateReady copyWith({
    CallProtocol? protocol,
    List<CallServer>? servers,
    String? config,
    String? encryptionKey,
    List<String>? emojis,
    bool? allowP2p,
    bool? isGroupCallSupported,
    String? customParameters,
  }) {
    return CallStateReady(
      protocol: protocol ?? this.protocol,
      servers: servers ?? this.servers,
      config: config ?? this.config,
      encryptionKey: encryptionKey ?? this.encryptionKey,
      emojis: emojis ?? this.emojis,
      allowP2p: allowP2p ?? this.allowP2p,
      isGroupCallSupported: isGroupCallSupported ?? this.isGroupCallSupported,
      customParameters: customParameters ?? this.customParameters,
    );
  }

  static const CONSTRUCTOR = 'callStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateHangingUp extends CallState {
  /// The call is hanging up after discardCall has been called
  const CallStateHangingUp();

  factory CallStateHangingUp.fromJson(Map<String, dynamic> json) =>
      const CallStateHangingUp();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CallStateHangingUp copyWith() {
    return const CallStateHangingUp();
  }

  static const CONSTRUCTOR = 'callStateHangingUp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateDiscarded extends CallState {
  /// The call has ended successfully
  const CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
    required this.needLog,
  });

  /// [reason] The reason why the call has ended
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating must be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to the server
  final bool needDebugInformation;

  /// [needLog] True, if the call log must be sent to the server
  final bool needLog;

  factory CallStateDiscarded.fromJson(Map<String, dynamic> json) =>
      CallStateDiscarded(
        reason: CallDiscardReason.fromJson(json['reason'] ?? {}),
        needRating: json['need_rating'] ?? false,
        needDebugInformation: json['need_debug_information'] ?? false,
        needLog: json['need_log'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason.toJson(),
      "need_rating": needRating,
      "need_debug_information": needDebugInformation,
      "need_log": needLog,
    };
  }

  @override
  CallStateDiscarded copyWith({
    CallDiscardReason? reason,
    bool? needRating,
    bool? needDebugInformation,
    bool? needLog,
  }) {
    return CallStateDiscarded(
      reason: reason ?? this.reason,
      needRating: needRating ?? this.needRating,
      needDebugInformation: needDebugInformation ?? this.needDebugInformation,
      needLog: needLog ?? this.needLog,
    );
  }

  static const CONSTRUCTOR = 'callStateDiscarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallStateError extends CallState {
  /// The call has ended with an error
  const CallStateError({
    required this.error,
  });

  /// [error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  final TdError error;

  factory CallStateError.fromJson(Map<String, dynamic> json) => CallStateError(
        error: TdError.fromJson(json['error'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error": error.toJson(),
    };
  }

  @override
  CallStateError copyWith({
    TdError? error,
  }) {
    return CallStateError(
      error: error ?? this.error,
    );
  }

  static const CONSTRUCTOR = 'callStateError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
