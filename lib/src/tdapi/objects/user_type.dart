import '../tdapi.dart';

class UserType extends TdObject {
  /// Represents the type of user. The following types are possible: regular users, deleted users and bots
  const UserType();

  factory UserType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return const UserType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  UserType copyWith() {
    return const UserType();
  }

  static const CONSTRUCTOR = 'userType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeRegular extends UserType {
  /// A regular user
  const UserTypeRegular();

  factory UserTypeRegular.fromJson(Map<String, dynamic> json) =>
      const UserTypeRegular();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserTypeRegular copyWith() {
    return const UserTypeRegular();
  }

  static const CONSTRUCTOR = 'userTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeDeleted extends UserType {
  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
  const UserTypeDeleted();

  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) =>
      const UserTypeDeleted();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserTypeDeleted copyWith() {
    return const UserTypeDeleted();
  }

  static const CONSTRUCTOR = 'userTypeDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeBot extends UserType {
  /// A bot (see https://core.telegram.org/bots)
  const UserTypeBot({
    required this.canBeEdited,
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.hasMainWebApp,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
    required this.canConnectToBusiness,
    required this.canBeAddedToAttachmentMenu,
    required this.activeUserCount,
  });

  /// [canBeEdited] True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription
  final bool canBeEdited;

  /// [canJoinGroups] True, if the bot can be invited to basic group and supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [hasMainWebApp] True, if the bot has the main Web App
  final bool hasMainWebApp;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the application input field)
  final String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user is expected to be sent with every inline query to this bot
  final bool needLocation;

  /// [canConnectToBusiness] True, if the bot supports connection to Telegram Business accounts
  final bool canConnectToBusiness;

  /// [canBeAddedToAttachmentMenu] True, if the bot can be added to attachment or side menu
  final bool canBeAddedToAttachmentMenu;

  /// [activeUserCount] The number of recently active users of the bot
  final int activeUserCount;

  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
        canBeEdited: json['can_be_edited'] ?? false,
        canJoinGroups: json['can_join_groups'] ?? false,
        canReadAllGroupMessages: json['can_read_all_group_messages'] ?? false,
        hasMainWebApp: json['has_main_web_app'] ?? false,
        isInline: json['is_inline'] ?? false,
        inlineQueryPlaceholder: json['inline_query_placeholder'] ?? '',
        needLocation: json['need_location'] ?? false,
        canConnectToBusiness: json['can_connect_to_business'] ?? false,
        canBeAddedToAttachmentMenu:
            json['can_be_added_to_attachment_menu'] ?? false,
        activeUserCount: json['active_user_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_be_edited": canBeEdited,
      "can_join_groups": canJoinGroups,
      "can_read_all_group_messages": canReadAllGroupMessages,
      "has_main_web_app": hasMainWebApp,
      "is_inline": isInline,
      "inline_query_placeholder": inlineQueryPlaceholder,
      "need_location": needLocation,
      "can_connect_to_business": canConnectToBusiness,
      "can_be_added_to_attachment_menu": canBeAddedToAttachmentMenu,
      "active_user_count": activeUserCount,
    };
  }

  @override
  UserTypeBot copyWith({
    bool? canBeEdited,
    bool? canJoinGroups,
    bool? canReadAllGroupMessages,
    bool? hasMainWebApp,
    bool? isInline,
    String? inlineQueryPlaceholder,
    bool? needLocation,
    bool? canConnectToBusiness,
    bool? canBeAddedToAttachmentMenu,
    int? activeUserCount,
  }) {
    return UserTypeBot(
      canBeEdited: canBeEdited ?? this.canBeEdited,
      canJoinGroups: canJoinGroups ?? this.canJoinGroups,
      canReadAllGroupMessages:
          canReadAllGroupMessages ?? this.canReadAllGroupMessages,
      hasMainWebApp: hasMainWebApp ?? this.hasMainWebApp,
      isInline: isInline ?? this.isInline,
      inlineQueryPlaceholder:
          inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
      needLocation: needLocation ?? this.needLocation,
      canConnectToBusiness: canConnectToBusiness ?? this.canConnectToBusiness,
      canBeAddedToAttachmentMenu:
          canBeAddedToAttachmentMenu ?? this.canBeAddedToAttachmentMenu,
      activeUserCount: activeUserCount ?? this.activeUserCount,
    );
  }

  static const CONSTRUCTOR = 'userTypeBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeUnknown extends UserType {
  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
  const UserTypeUnknown();

  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) =>
      const UserTypeUnknown();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserTypeUnknown copyWith() {
    return const UserTypeUnknown();
  }

  static const CONSTRUCTOR = 'userTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}
