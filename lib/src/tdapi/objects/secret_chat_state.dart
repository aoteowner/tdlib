import '../tdapi.dart';

class SecretChatState extends TdObject {
  /// Describes the current secret chat state
  const SecretChatState();

  factory SecretChatState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SecretChatStatePending.CONSTRUCTOR:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.CONSTRUCTOR:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.CONSTRUCTOR:
        return SecretChatStateClosed.fromJson(json);
      default:
        return const SecretChatState();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SecretChatState copyWith() {
    return const SecretChatState();
  }

  static const CONSTRUCTOR = 'secretChatState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStatePending extends SecretChatState {
  /// The secret chat is not yet created; waiting for the other user to get online
  const SecretChatStatePending();

  factory SecretChatStatePending.fromJson(Map<String, dynamic> json) =>
      const SecretChatStatePending();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SecretChatStatePending copyWith() {
    return const SecretChatStatePending();
  }

  static const CONSTRUCTOR = 'secretChatStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateReady extends SecretChatState {
  /// The secret chat is ready to use
  const SecretChatStateReady();

  factory SecretChatStateReady.fromJson(Map<String, dynamic> json) =>
      const SecretChatStateReady();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SecretChatStateReady copyWith() {
    return const SecretChatStateReady();
  }

  static const CONSTRUCTOR = 'secretChatStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SecretChatStateClosed extends SecretChatState {
  /// The secret chat is closed
  const SecretChatStateClosed();

  factory SecretChatStateClosed.fromJson(Map<String, dynamic> json) =>
      const SecretChatStateClosed();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SecretChatStateClosed copyWith() {
    return const SecretChatStateClosed();
  }

  static const CONSTRUCTOR = 'secretChatStateClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
