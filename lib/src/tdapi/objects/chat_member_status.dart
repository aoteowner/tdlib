import '../tdapi.dart';

class ChatMemberStatus extends TdObject {
  /// Provides information about the status of a member in a chat
  const ChatMemberStatus();

  factory ChatMemberStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        return const ChatMemberStatus();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatMemberStatus copyWith() {
    return const ChatMemberStatus();
  }

  static const CONSTRUCTOR = 'chatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusCreator extends ChatMemberStatus {
  /// The user is the owner of the chat and has all the administrator privileges
  const ChatMemberStatusCreator({
    required this.customTitle,
    required this.isAnonymous,
    required this.isMember,
  });

  /// [customTitle] A custom title of the owner; 0-16 characters without emoji; applicable to supergroups only
  final String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) =>
      ChatMemberStatusCreator(
        customTitle: json['custom_title'] ?? '',
        isAnonymous: json['is_anonymous'] ?? false,
        isMember: json['is_member'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": customTitle,
      "is_anonymous": isAnonymous,
      "is_member": isMember,
    };
  }

  @override
  ChatMemberStatusCreator copyWith({
    String? customTitle,
    bool? isAnonymous,
    bool? isMember,
  }) {
    return ChatMemberStatusCreator(
      customTitle: customTitle ?? this.customTitle,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      isMember: isMember ?? this.isMember,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusCreator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusAdministrator extends ChatMemberStatus {
  /// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats.. In supergroups and channels, there are more detailed options for administrator privileges
  const ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.rights,
  });

  /// [customTitle] A custom title of the administrator; 0-16 characters without emoji; applicable to supergroups only
  final String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final ChatAdministratorRights rights;

  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) =>
      ChatMemberStatusAdministrator(
        customTitle: json['custom_title'] ?? '',
        canBeEdited: json['can_be_edited'] ?? false,
        rights: ChatAdministratorRights.fromJson(json['rights'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": customTitle,
      "can_be_edited": canBeEdited,
      "rights": rights.toJson(),
    };
  }

  @override
  ChatMemberStatusAdministrator copyWith({
    String? customTitle,
    bool? canBeEdited,
    ChatAdministratorRights? rights,
  }) {
    return ChatMemberStatusAdministrator(
      customTitle: customTitle ?? this.customTitle,
      canBeEdited: canBeEdited ?? this.canBeEdited,
      rights: rights ?? this.rights,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusMember extends ChatMemberStatus {
  /// The user is a member of the chat, without any additional privileges or restrictions
  const ChatMemberStatusMember({
    required this.memberUntilDate,
  });

  /// [memberUntilDate] Point in time (Unix timestamp) when the user will be removed from the chat because of the expired subscription; 0 if never. Ignored in setChatMemberStatus
  final int memberUntilDate;

  factory ChatMemberStatusMember.fromJson(Map<String, dynamic> json) =>
      ChatMemberStatusMember(
        memberUntilDate: json['member_until_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_until_date": memberUntilDate,
    };
  }

  @override
  ChatMemberStatusMember copyWith({
    int? memberUntilDate,
  }) {
    return ChatMemberStatusMember(
      memberUntilDate: memberUntilDate ?? this.memberUntilDate,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusRestricted extends ChatMemberStatus {
  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
  const ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    required this.permissions,
  });

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  final int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  final ChatPermissions permissions;

  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) =>
      ChatMemberStatusRestricted(
        isMember: json['is_member'] ?? false,
        restrictedUntilDate: json['restricted_until_date'] ?? 0,
        permissions: ChatPermissions.fromJson(json['permissions'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_member": isMember,
      "restricted_until_date": restrictedUntilDate,
      "permissions": permissions.toJson(),
    };
  }

  @override
  ChatMemberStatusRestricted copyWith({
    bool? isMember,
    int? restrictedUntilDate,
    ChatPermissions? permissions,
  }) {
    return ChatMemberStatusRestricted(
      isMember: isMember ?? this.isMember,
      restrictedUntilDate: restrictedUntilDate ?? this.restrictedUntilDate,
      permissions: permissions ?? this.permissions,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusLeft extends ChatMemberStatus {
  /// The user or the chat is not a chat member
  const ChatMemberStatusLeft();

  factory ChatMemberStatusLeft.fromJson(Map<String, dynamic> json) =>
      const ChatMemberStatusLeft();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMemberStatusLeft copyWith() {
    return const ChatMemberStatusLeft();
  }

  static const CONSTRUCTOR = 'chatMemberStatusLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusBanned extends ChatMemberStatus {
  /// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat
  const ChatMemberStatusBanned({
    required this.bannedUntilDate,
  });

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups
  final int bannedUntilDate;

  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) =>
      ChatMemberStatusBanned(
        bannedUntilDate: json['banned_until_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "banned_until_date": bannedUntilDate,
    };
  }

  @override
  ChatMemberStatusBanned copyWith({
    int? bannedUntilDate,
  }) {
    return ChatMemberStatusBanned(
      bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
