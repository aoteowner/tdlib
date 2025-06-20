import '../tdapi.dart';

class CheckChatUsernameResult extends TdObject {
  /// Represents result of checking whether a username can be set for a chat
  const CheckChatUsernameResult();

  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultUsernamePurchasable.CONSTRUCTOR:
        return CheckChatUsernameResultUsernamePurchasable.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMany.CONSTRUCTOR:
        return CheckChatUsernameResultPublicChatsTooMany.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return const CheckChatUsernameResult();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  CheckChatUsernameResult copyWith() {
    return const CheckChatUsernameResult();
  }

  static const CONSTRUCTOR = 'checkChatUsernameResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  /// The username can be set
  const CheckChatUsernameResultOk({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) =>
      CheckChatUsernameResultOk(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultOk(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultOk';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  /// The username is invalid
  const CheckChatUsernameResultUsernameInvalid({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultUsernameInvalid.fromJson(
          Map<String, dynamic> json) =>
      CheckChatUsernameResultUsernameInvalid(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultUsernameInvalid copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultUsernameInvalid(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameInvalid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  /// The username is occupied
  const CheckChatUsernameResultUsernameOccupied({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultUsernameOccupied.fromJson(
          Map<String, dynamic> json) =>
      CheckChatUsernameResultUsernameOccupied(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultUsernameOccupied copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultUsernameOccupied(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernameOccupied';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultUsernamePurchasable
    extends CheckChatUsernameResult {
  /// The username can be purchased at https://fragment.com. Information about the username can be received using getCollectibleItemInfo
  const CheckChatUsernameResultUsernamePurchasable({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultUsernamePurchasable.fromJson(
          Map<String, dynamic> json) =>
      CheckChatUsernameResultUsernamePurchasable(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultUsernamePurchasable copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultUsernamePurchasable(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultUsernamePurchasable';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicChatsTooMany
    extends CheckChatUsernameResult {
  /// The user has too many chats with username, one of them must be made private first
  const CheckChatUsernameResultPublicChatsTooMany({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultPublicChatsTooMany.fromJson(
          Map<String, dynamic> json) =>
      CheckChatUsernameResultPublicChatsTooMany(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultPublicChatsTooMany copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultPublicChatsTooMany(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicChatsTooMany';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  /// The user can't be a member of a public supergroup
  const CheckChatUsernameResultPublicGroupsUnavailable({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory CheckChatUsernameResultPublicGroupsUnavailable.fromJson(
          Map<String, dynamic> json) =>
      CheckChatUsernameResultPublicGroupsUnavailable(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  CheckChatUsernameResultPublicGroupsUnavailable copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return CheckChatUsernameResultPublicGroupsUnavailable(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  String getConstructor() => CONSTRUCTOR;
}
