import '../tdapi.dart';

class TMeUrlType extends TdObject {
  /// Describes the type of URL linking to an internal Telegram entity
  const TMeUrlType();

  factory TMeUrlType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TMeUrlTypeUser.CONSTRUCTOR:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.CONSTRUCTOR:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.CONSTRUCTOR:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.CONSTRUCTOR:
        return TMeUrlTypeStickerSet.fromJson(json);
      default:
        return const TMeUrlType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  TMeUrlType copyWith() {
    return const TMeUrlType();
  }

  static const CONSTRUCTOR = 'tMeUrlType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeUser extends TMeUrlType {
  /// A URL linking to a user
  const TMeUrlTypeUser({
    required this.userId,
  });

  /// [userId] Identifier of the user
  final int userId;

  factory TMeUrlTypeUser.fromJson(Map<String, dynamic> json) => TMeUrlTypeUser(
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
  TMeUrlTypeUser copyWith({
    int? userId,
  }) {
    return TMeUrlTypeUser(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'tMeUrlTypeUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeSupergroup extends TMeUrlType {
  /// A URL linking to a public supergroup or channel
  const TMeUrlTypeSupergroup({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  factory TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) =>
      TMeUrlTypeSupergroup(
        supergroupId: json['supergroup_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
    };
  }

  @override
  TMeUrlTypeSupergroup copyWith({
    int? supergroupId,
  }) {
    return TMeUrlTypeSupergroup(
      supergroupId: supergroupId ?? this.supergroupId,
    );
  }

  static const CONSTRUCTOR = 'tMeUrlTypeSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeChatInvite extends TMeUrlType {
  /// A chat invite link
  const TMeUrlTypeChatInvite({
    required this.info,
  });

  /// [info] Information about the chat invite link
  final ChatInviteLinkInfo info;

  factory TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) =>
      TMeUrlTypeChatInvite(
        info: ChatInviteLinkInfo.fromJson(json['info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
    };
  }

  @override
  TMeUrlTypeChatInvite copyWith({
    ChatInviteLinkInfo? info,
  }) {
    return TMeUrlTypeChatInvite(
      info: info ?? this.info,
    );
  }

  static const CONSTRUCTOR = 'tMeUrlTypeChatInvite';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TMeUrlTypeStickerSet extends TMeUrlType {
  /// A URL linking to a sticker set
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });

  /// [stickerSetId] Identifier of the sticker set
  final int stickerSetId;

  factory TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) =>
      TMeUrlTypeStickerSet(
        stickerSetId: int.tryParse(json['sticker_set_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_id": stickerSetId,
    };
  }

  @override
  TMeUrlTypeStickerSet copyWith({
    int? stickerSetId,
  }) {
    return TMeUrlTypeStickerSet(
      stickerSetId: stickerSetId ?? this.stickerSetId,
    );
  }

  static const CONSTRUCTOR = 'tMeUrlTypeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
