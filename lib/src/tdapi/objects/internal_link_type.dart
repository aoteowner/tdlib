import '../tdapi.dart';

class InternalLinkType extends TdObject {
  /// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way
  const InternalLinkType();

  factory InternalLinkType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InternalLinkTypeActiveSessions.CONSTRUCTOR:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAttachmentMenuBot.CONSTRUCTOR:
        return InternalLinkTypeAttachmentMenuBot.fromJson(json);
      case InternalLinkTypeAuthenticationCode.CONSTRUCTOR:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.CONSTRUCTOR:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotAddToChannel.CONSTRUCTOR:
        return InternalLinkTypeBotAddToChannel.fromJson(json);
      case InternalLinkTypeBotStart.CONSTRUCTOR:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.CONSTRUCTOR:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeBusinessChat.CONSTRUCTOR:
        return InternalLinkTypeBusinessChat.fromJson(json);
      case InternalLinkTypeBuyStars.CONSTRUCTOR:
        return InternalLinkTypeBuyStars.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.CONSTRUCTOR:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatAffiliateProgram.CONSTRUCTOR:
        return InternalLinkTypeChatAffiliateProgram.fromJson(json);
      case InternalLinkTypeChatBoost.CONSTRUCTOR:
        return InternalLinkTypeChatBoost.fromJson(json);
      case InternalLinkTypeChatFolderInvite.CONSTRUCTOR:
        return InternalLinkTypeChatFolderInvite.fromJson(json);
      case InternalLinkTypeChatFolderSettings.CONSTRUCTOR:
        return InternalLinkTypeChatFolderSettings.fromJson(json);
      case InternalLinkTypeChatInvite.CONSTRUCTOR:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.CONSTRUCTOR:
        return InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromJson(
            json);
      case InternalLinkTypeEditProfileSettings.CONSTRUCTOR:
        return InternalLinkTypeEditProfileSettings.fromJson(json);
      case InternalLinkTypeGame.CONSTRUCTOR:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeGroupCall.CONSTRUCTOR:
        return InternalLinkTypeGroupCall.fromJson(json);
      case InternalLinkTypeInstantView.CONSTRUCTOR:
        return InternalLinkTypeInstantView.fromJson(json);
      case InternalLinkTypeInvoice.CONSTRUCTOR:
        return InternalLinkTypeInvoice.fromJson(json);
      case InternalLinkTypeLanguagePack.CONSTRUCTOR:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeLanguageSettings.CONSTRUCTOR:
        return InternalLinkTypeLanguageSettings.fromJson(json);
      case InternalLinkTypeMainWebApp.CONSTRUCTOR:
        return InternalLinkTypeMainWebApp.fromJson(json);
      case InternalLinkTypeMessage.CONSTRUCTOR:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.CONSTRUCTOR:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypeMyStars.CONSTRUCTOR:
        return InternalLinkTypeMyStars.fromJson(json);
      case InternalLinkTypePassportDataRequest.CONSTRUCTOR:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.CONSTRUCTOR:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypePremiumFeatures.CONSTRUCTOR:
        return InternalLinkTypePremiumFeatures.fromJson(json);
      case InternalLinkTypePremiumGift.CONSTRUCTOR:
        return InternalLinkTypePremiumGift.fromJson(json);
      case InternalLinkTypePremiumGiftCode.CONSTRUCTOR:
        return InternalLinkTypePremiumGiftCode.fromJson(json);
      case InternalLinkTypePrivacyAndSecuritySettings.CONSTRUCTOR:
        return InternalLinkTypePrivacyAndSecuritySettings.fromJson(json);
      case InternalLinkTypeProxy.CONSTRUCTOR:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.CONSTRUCTOR:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.CONSTRUCTOR:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeRestorePurchases.CONSTRUCTOR:
        return InternalLinkTypeRestorePurchases.fromJson(json);
      case InternalLinkTypeSettings.CONSTRUCTOR:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStickerSet.CONSTRUCTOR:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeStory.CONSTRUCTOR:
        return InternalLinkTypeStory.fromJson(json);
      case InternalLinkTypeTheme.CONSTRUCTOR:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.CONSTRUCTOR:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.CONSTRUCTOR:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.CONSTRUCTOR:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeUpgradedGift.CONSTRUCTOR:
        return InternalLinkTypeUpgradedGift.fromJson(json);
      case InternalLinkTypeUserPhoneNumber.CONSTRUCTOR:
        return InternalLinkTypeUserPhoneNumber.fromJson(json);
      case InternalLinkTypeUserToken.CONSTRUCTOR:
        return InternalLinkTypeUserToken.fromJson(json);
      case InternalLinkTypeVideoChat.CONSTRUCTOR:
        return InternalLinkTypeVideoChat.fromJson(json);
      case InternalLinkTypeWebApp.CONSTRUCTOR:
        return InternalLinkTypeWebApp.fromJson(json);
      default:
        return const InternalLinkType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InternalLinkType copyWith() {
    return const InternalLinkType();
  }

  static const CONSTRUCTOR = 'internalLinkType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeActiveSessions extends InternalLinkType {
  /// The link is a link to the Devices section of the application. Use getActiveSessions to get the list of active sessions and show them to the user
  const InternalLinkTypeActiveSessions({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeActiveSessions.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeActiveSessions(
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
  InternalLinkTypeActiveSessions copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeActiveSessions(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeAttachmentMenuBot extends InternalLinkType {
  /// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat.. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot.. If the bot isn't added to attachment menu, then show a disclaimer about Mini Apps being third-party applications, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu.. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot.. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL
  const InternalLinkTypeAttachmentMenuBot({
    required this.targetChat,
    required this.botUsername,
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [targetChat] Target chat to be opened
  final TargetChat targetChat;

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [url] URL to be passed to openWebApp
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeAttachmentMenuBot.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeAttachmentMenuBot(
        targetChat: TargetChat.fromJson(json['target_chat'] ?? {}),
        botUsername: json['bot_username'] ?? '',
        url: json['url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "target_chat": targetChat.toJson(),
      "bot_username": botUsername,
      "url": url,
    };
  }

  @override
  InternalLinkTypeAttachmentMenuBot copyWith({
    TargetChat? targetChat,
    String? botUsername,
    String? url,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeAttachmentMenuBot(
      targetChat: targetChat ?? this.targetChat,
      botUsername: botUsername ?? this.botUsername,
      url: url ?? this.url,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeAttachmentMenuBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
  const InternalLinkTypeAuthenticationCode({
    required this.code,
    this.extra,
    this.clientId,
  });

  /// [code] The authentication code
  final String code;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeAuthenticationCode.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeAuthenticationCode(
        code: json['code'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
    };
  }

  @override
  InternalLinkTypeAuthenticationCode copyWith({
    String? code,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeAuthenticationCode(
      code: code ?? this.code,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBackground extends InternalLinkType {
  /// The link is a link to a background. Call searchBackground with the given background name to process the link.. If background is found and the user wants to apply it, then call setDefaultBackground
  const InternalLinkTypeBackground({
    required this.backgroundName,
    this.extra,
    this.clientId,
  });

  /// [backgroundName] Name of the background
  final String backgroundName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBackground.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBackground(
        backgroundName: json['background_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_name": backgroundName,
    };
  }

  @override
  InternalLinkTypeBackground copyWith({
    String? backgroundName,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBackground(
      backgroundName: backgroundName ?? this.backgroundName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBotAddToChannel extends InternalLinkType {
  /// The link is a link to a Telegram bot, which is expected to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot,. ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights
  const InternalLinkTypeBotAddToChannel({
    required this.botUsername,
    required this.administratorRights,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [administratorRights] Expected administrator rights for the bot
  final ChatAdministratorRights administratorRights;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBotAddToChannel.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBotAddToChannel(
        botUsername: json['bot_username'] ?? '',
        administratorRights: ChatAdministratorRights.fromJson(
            json['administrator_rights'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "administrator_rights": administratorRights.toJson(),
    };
  }

  @override
  InternalLinkTypeBotAddToChannel copyWith({
    String? botUsername,
    ChatAdministratorRights? administratorRights,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBotAddToChannel(
      botUsername: botUsername ?? this.botUsername,
      administratorRights: administratorRights ?? this.administratorRights,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBotAddToChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBotStart extends InternalLinkType {
  /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot,. and then call sendBotStartMessage with the given start parameter after the button is pressed
  const InternalLinkTypeBotStart({
    required this.botUsername,
    required this.startParameter,
    required this.autostart,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [autostart] True, if sendBotStartMessage must be called automatically without showing the START button
  final bool autostart;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBotStart.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBotStart(
        botUsername: json['bot_username'] ?? '',
        startParameter: json['start_parameter'] ?? '',
        autostart: json['autostart'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "start_parameter": startParameter,
      "autostart": autostart,
    };
  }

  @override
  InternalLinkTypeBotStart copyWith({
    String? botUsername,
    String? startParameter,
    bool? autostart,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBotStart(
      botUsername: botUsername ?? this.botUsername,
      startParameter: startParameter ?? this.startParameter,
      autostart: autostart ?? this.autostart,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBotStart';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  /// The link is a link to a Telegram bot, which is expected to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups,. ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup.. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user,. and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat.. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat
  const InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
    this.administratorRights,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [administratorRights] Expected administrator rights for the bot; may be null
  final ChatAdministratorRights? administratorRights;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBotStartInGroup.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBotStartInGroup(
        botUsername: json['bot_username'] ?? '',
        startParameter: json['start_parameter'] ?? '',
        administratorRights: ChatAdministratorRights.fromJson(
            json['administrator_rights'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "start_parameter": startParameter,
      "administrator_rights": administratorRights?.toJson(),
    };
  }

  @override
  InternalLinkTypeBotStartInGroup copyWith({
    String? botUsername,
    String? startParameter,
    ChatAdministratorRights? administratorRights,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBotStartInGroup(
      botUsername: botUsername ?? this.botUsername,
      startParameter: startParameter ?? this.startParameter,
      administratorRights: administratorRights ?? this.administratorRights,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBotStartInGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBusinessChat extends InternalLinkType {
  /// The link is a link to a business chat. Use getBusinessChatLinkInfo with the provided link name to get information about the link,. then open received private chat and replace chat draft with the provided text
  const InternalLinkTypeBusinessChat({
    required this.linkName,
    this.extra,
    this.clientId,
  });

  /// [linkName] Name of the link
  final String linkName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBusinessChat.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBusinessChat(
        linkName: json['link_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link_name": linkName,
    };
  }

  @override
  InternalLinkTypeBusinessChat copyWith({
    String? linkName,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBusinessChat(
      linkName: linkName ?? this.linkName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBusinessChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeBuyStars extends InternalLinkType {
  /// The link is a link to the Telegram Star purchase section of the application
  const InternalLinkTypeBuyStars({
    required this.starCount,
    required this.purpose,
    this.extra,
    this.clientId,
  });

  /// [starCount] The number of Telegram Stars that must be owned by the user
  final int starCount;

  /// [purpose] Purpose of Telegram Star purchase. Arbitrary string specified by the server, for example, "subs" if the Telegram Stars are required to extend channel subscriptions
  final String purpose;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeBuyStars.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeBuyStars(
        starCount: json['star_count'] ?? 0,
        purpose: json['purpose'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "purpose": purpose,
    };
  }

  @override
  InternalLinkTypeBuyStars copyWith({
    int? starCount,
    String? purpose,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeBuyStars(
      starCount: starCount ?? this.starCount,
      purpose: purpose ?? this.purpose,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeBuyStars';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  /// The link is a link to the change phone number section of the application
  const InternalLinkTypeChangePhoneNumber({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChangePhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeChangePhoneNumber(
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
  InternalLinkTypeChangePhoneNumber copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChangePhoneNumber(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChangePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChatAffiliateProgram extends InternalLinkType {
  /// The link is an affiliate program link. Call searchChatAffiliateProgram with the given username and referrer to process the link
  const InternalLinkTypeChatAffiliateProgram({
    required this.username,
    required this.referrer,
    this.extra,
    this.clientId,
  });

  /// [username] Username to be passed to searchChatAffiliateProgram
  final String username;

  /// [referrer] Referrer to be passed to searchChatAffiliateProgram
  final String referrer;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChatAffiliateProgram.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeChatAffiliateProgram(
        username: json['username'] ?? '',
        referrer: json['referrer'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "referrer": referrer,
    };
  }

  @override
  InternalLinkTypeChatAffiliateProgram copyWith({
    String? username,
    String? referrer,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChatAffiliateProgram(
      username: username ?? this.username,
      referrer: referrer ?? this.referrer,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChatAffiliateProgram';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChatBoost extends InternalLinkType {
  /// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo with the given URL to process the link.. If the chat is found, then call getChatBoostStatus and getAvailableChatBoostSlots to get the current boost status and check whether the chat can be boosted.. If the user wants to boost the chat and the chat can be boosted, then call boostChat
  const InternalLinkTypeChatBoost({
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [url] URL to be passed to getChatBoostLinkInfo
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChatBoost.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeChatBoost(
        url: json['url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  @override
  InternalLinkTypeChatBoost copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChatBoost(
      url: url ?? this.url,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChatBoost';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChatFolderInvite extends InternalLinkType {
  /// The link is an invite link to a chat folder. Call checkChatFolderInviteLink with the given invite link to process the link.. If the link is valid and the user wants to join the chat folder, then call addChatFolderByInviteLink
  const InternalLinkTypeChatFolderInvite({
    required this.inviteLink,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChatFolderInvite.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeChatFolderInvite(
        inviteLink: json['invite_link'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
    };
  }

  @override
  InternalLinkTypeChatFolderInvite copyWith({
    String? inviteLink,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChatFolderInvite(
      inviteLink: inviteLink ?? this.inviteLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChatFolderInvite';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChatFolderSettings extends InternalLinkType {
  /// The link is a link to the folder section of the application settings
  const InternalLinkTypeChatFolderSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChatFolderSettings.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeChatFolderSettings(
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
  InternalLinkTypeChatFolderSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChatFolderSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChatFolderSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeChatInvite extends InternalLinkType {
  /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link.. If the link is valid and the user wants to join the chat, then call joinChatByInviteLink
  const InternalLinkTypeChatInvite({
    required this.inviteLink,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeChatInvite.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeChatInvite(
        inviteLink: json['invite_link'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
    };
  }

  @override
  InternalLinkTypeChatInvite copyWith({
    String? inviteLink,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeChatInvite(
      inviteLink: inviteLink ?? this.inviteLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeChatInvite';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeDefaultMessageAutoDeleteTimerSettings
    extends InternalLinkType {
  /// The link is a link to the default message auto-delete timer settings section of the application settings
  const InternalLinkTypeDefaultMessageAutoDeleteTimerSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeDefaultMessageAutoDeleteTimerSettings(
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
  InternalLinkTypeDefaultMessageAutoDeleteTimerSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeDefaultMessageAutoDeleteTimerSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR =
      'internalLinkTypeDefaultMessageAutoDeleteTimerSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeEditProfileSettings extends InternalLinkType {
  /// The link is a link to the edit profile section of the application settings
  const InternalLinkTypeEditProfileSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeEditProfileSettings.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeEditProfileSettings(
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
  InternalLinkTypeEditProfileSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeEditProfileSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeEditProfileSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeGame extends InternalLinkType {
  /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot,. ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
  const InternalLinkTypeGame({
    required this.botUsername,
    required this.gameShortName,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot that owns the game
  final String botUsername;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeGame.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeGame(
        botUsername: json['bot_username'] ?? '',
        gameShortName: json['game_short_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "game_short_name": gameShortName,
    };
  }

  @override
  InternalLinkTypeGame copyWith({
    String? botUsername,
    String? gameShortName,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeGame(
      botUsername: botUsername ?? this.botUsername,
      gameShortName: gameShortName ?? this.gameShortName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeGroupCall extends InternalLinkType {
  /// The link is a link to a group call that isn't bound to a chat. Call joinGroupCall with the given invite_link
  const InternalLinkTypeGroupCall({
    required this.inviteLink,
    this.extra,
    this.clientId,
  });

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeGroupCall.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeGroupCall(
        inviteLink: json['invite_link'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
    };
  }

  @override
  InternalLinkTypeGroupCall copyWith({
    String? inviteLink,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeGroupCall(
      inviteLink: inviteLink ?? this.inviteLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeInstantView extends InternalLinkType {
  /// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link.. If Instant View is found, then show it, otherwise, open the fallback URL in an external browser
  const InternalLinkTypeInstantView({
    required this.url,
    required this.fallbackUrl,
    this.extra,
    this.clientId,
  });

  /// [url] URL to be passed to getWebPageInstantView
  final String url;

  /// [fallbackUrl] An URL to open if getWebPageInstantView fails
  final String fallbackUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeInstantView.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeInstantView(
        url: json['url'] ?? '',
        fallbackUrl: json['fallback_url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "fallback_url": fallbackUrl,
    };
  }

  @override
  InternalLinkTypeInstantView copyWith({
    String? url,
    String? fallbackUrl,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeInstantView(
      url: url ?? this.url,
      fallbackUrl: fallbackUrl ?? this.fallbackUrl,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeInvoice extends InternalLinkType {
  /// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
  const InternalLinkTypeInvoice({
    required this.invoiceName,
    this.extra,
    this.clientId,
  });

  /// [invoiceName] Name of the invoice
  final String invoiceName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeInvoice.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeInvoice(
        invoiceName: json['invoice_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice_name": invoiceName,
    };
  }

  @override
  InternalLinkTypeInvoice copyWith({
    String? invoiceName,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeInvoice(
      invoiceName: invoiceName ?? this.invoiceName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeLanguagePack extends InternalLinkType {
  /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link.. If the language pack is found and the user wants to apply it, then call setOption for the option "language_pack_id"
  const InternalLinkTypeLanguagePack({
    required this.languagePackId,
    this.extra,
    this.clientId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeLanguagePack.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeLanguagePack(
        languagePackId: json['language_pack_id'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
    };
  }

  @override
  InternalLinkTypeLanguagePack copyWith({
    String? languagePackId,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeLanguagePack(
      languagePackId: languagePackId ?? this.languagePackId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeLanguageSettings extends InternalLinkType {
  /// The link is a link to the language section of the application settings
  const InternalLinkTypeLanguageSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeLanguageSettings.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeLanguageSettings(
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
  InternalLinkTypeLanguageSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeLanguageSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeLanguageSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeMainWebApp extends InternalLinkType {
  /// The link is a link to the main Web App of a bot. Call searchPublicChat with the given bot username, check that the user is a bot and has the main Web App.. If the bot can be added to attachment menu, then use getAttachmentMenuBot to receive information about the bot, then if the bot isn't added to side menu,. show a disclaimer about Mini Apps being third-party applications, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu,. then if the user accepts the terms and confirms adding, use toggleBotIsAddedToAttachmentMenu to add the bot.. Then, use getMainWebApp with the given start parameter and mode and open the returned URL as a Web App
  const InternalLinkTypeMainWebApp({
    required this.botUsername,
    required this.startParameter,
    required this.mode,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] Start parameter to be passed to getMainWebApp
  final String startParameter;

  /// [mode] The mode to be passed to getMainWebApp
  final WebAppOpenMode mode;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeMainWebApp.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeMainWebApp(
        botUsername: json['bot_username'] ?? '',
        startParameter: json['start_parameter'] ?? '',
        mode: WebAppOpenMode.fromJson(json['mode'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "start_parameter": startParameter,
      "mode": mode.toJson(),
    };
  }

  @override
  InternalLinkTypeMainWebApp copyWith({
    String? botUsername,
    String? startParameter,
    WebAppOpenMode? mode,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeMainWebApp(
      botUsername: botUsername ?? this.botUsername,
      startParameter: startParameter ?? this.startParameter,
      mode: mode ?? this.mode,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeMainWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeMessage extends InternalLinkType {
  /// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link,. and then open received forum topic or chat and show the message there
  const InternalLinkTypeMessage({
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [url] URL to be passed to getMessageLinkInfo
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeMessage.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeMessage(
        url: json['url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  @override
  InternalLinkTypeMessage copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeMessage(
      url: url ?? this.url,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeMessageDraft extends InternalLinkType {
  /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
  const InternalLinkTypeMessageDraft({
    required this.text,
    required this.containsLink,
    this.extra,
    this.clientId,
  });

  /// [text] Message draft text
  final FormattedText text;

  /// [containsLink] True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected
  final bool containsLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeMessageDraft.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeMessageDraft(
        text: FormattedText.fromJson(json['text'] ?? {}),
        containsLink: json['contains_link'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "contains_link": containsLink,
    };
  }

  @override
  InternalLinkTypeMessageDraft copyWith({
    FormattedText? text,
    bool? containsLink,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeMessageDraft(
      text: text ?? this.text,
      containsLink: containsLink ?? this.containsLink,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeMessageDraft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeMyStars extends InternalLinkType {
  /// The link is a link to the screen with information about Telegram Star balance and transactions of the current user
  const InternalLinkTypeMyStars({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeMyStars.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeMyStars(
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
  InternalLinkTypeMyStars copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeMyStars(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeMyStars';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePassportDataRequest extends InternalLinkType {
  /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it
  const InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
    this.extra,
    this.clientId,
  });

  /// [botUserId] User identifier of the service's bot; the corresponding user may be unknown yet
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively.. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise
  final String callbackUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePassportDataRequest.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypePassportDataRequest(
        botUserId: json['bot_user_id'] ?? 0,
        scope: json['scope'] ?? '',
        publicKey: json['public_key'] ?? '',
        nonce: json['nonce'] ?? '',
        callbackUrl: json['callback_url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "scope": scope,
      "public_key": publicKey,
      "nonce": nonce,
      "callback_url": callbackUrl,
    };
  }

  @override
  InternalLinkTypePassportDataRequest copyWith({
    int? botUserId,
    String? scope,
    String? publicKey,
    String? nonce,
    String? callbackUrl,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePassportDataRequest(
      botUserId: botUserId ?? this.botUserId,
      scope: scope ?? this.scope,
      publicKey: publicKey ?? this.publicKey,
      nonce: nonce ?? this.nonce,
      callbackUrl: callbackUrl ?? this.callbackUrl,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePassportDataRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberCode with the given phone number and with phoneNumberCodeTypeConfirmOwnership with the given hash to process the link.. If succeeded, call checkPhoneNumberCode to check entered by the user code, or resendPhoneNumberCode to resend it
  const InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePhoneNumberConfirmation.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypePhoneNumberConfirmation(
        hash: json['hash'] ?? '',
        phoneNumber: json['phone_number'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hash": hash,
      "phone_number": phoneNumber,
    };
  }

  @override
  InternalLinkTypePhoneNumberConfirmation copyWith({
    String? hash,
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePhoneNumberConfirmation(
      hash: hash ?? this.hash,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePhoneNumberConfirmation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePremiumFeatures extends InternalLinkType {
  /// The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
  const InternalLinkTypePremiumFeatures({
    required this.referrer,
    this.extra,
    this.clientId,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePremiumFeatures.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypePremiumFeatures(
        referrer: json['referrer'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "referrer": referrer,
    };
  }

  @override
  InternalLinkTypePremiumFeatures copyWith({
    String? referrer,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePremiumFeatures(
      referrer: referrer ?? this.referrer,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePremiumFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePremiumGift extends InternalLinkType {
  /// The link is a link to the screen for gifting Telegram Premium subscriptions to friends via inputInvoiceTelegram with telegramPaymentPurposePremiumGift payments or in-store purchases
  const InternalLinkTypePremiumGift({
    required this.referrer,
    this.extra,
    this.clientId,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePremiumGift.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypePremiumGift(
        referrer: json['referrer'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "referrer": referrer,
    };
  }

  @override
  InternalLinkTypePremiumGift copyWith({
    String? referrer,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePremiumGift(
      referrer: referrer ?? this.referrer,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePremiumGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePremiumGiftCode extends InternalLinkType {
  /// The link is a link with a Telegram Premium gift code. Call checkPremiumGiftCode with the given code to process the link.. If the code is valid and the user wants to apply it, then call applyPremiumGiftCode
  const InternalLinkTypePremiumGiftCode({
    required this.code,
    this.extra,
    this.clientId,
  });

  /// [code] The Telegram Premium gift code
  final String code;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePremiumGiftCode.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypePremiumGiftCode(
        code: json['code'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
    };
  }

  @override
  InternalLinkTypePremiumGiftCode copyWith({
    String? code,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePremiumGiftCode(
      code: code ?? this.code,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePremiumGiftCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePrivacyAndSecuritySettings extends InternalLinkType {
  /// The link is a link to the privacy and security section of the application settings
  const InternalLinkTypePrivacyAndSecuritySettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePrivacyAndSecuritySettings.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypePrivacyAndSecuritySettings(
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
  InternalLinkTypePrivacyAndSecuritySettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePrivacyAndSecuritySettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePrivacyAndSecuritySettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeProxy extends InternalLinkType {
  /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
  const InternalLinkTypeProxy({
    required this.server,
    required this.port,
    required this.type,
    this.extra,
    this.clientId,
  });

  /// [server] Proxy server domain or IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Type of the proxy
  final ProxyType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeProxy.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeProxy(
        server: json['server'] ?? '',
        port: json['port'] ?? 0,
        type: ProxyType.fromJson(json['type'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "server": server,
      "port": port,
      "type": type.toJson(),
    };
  }

  @override
  InternalLinkTypeProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeProxy(
      server: server ?? this.server,
      port: port ?? this.port,
      type: type ?? this.type,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypePublicChat extends InternalLinkType {
  /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link.. If the chat is found, open its profile information screen or the chat itself.. If draft text isn't empty and the chat is a private chat with a regular user, then put the draft text in the input field
  const InternalLinkTypePublicChat({
    required this.chatUsername,
    required this.draftText,
    required this.openProfile,
    this.extra,
    this.clientId,
  });

  /// [chatUsername] Username of the chat
  final String chatUsername;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if chat profile information screen must be opened; otherwise, the chat itself must be opened
  final bool openProfile;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypePublicChat.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypePublicChat(
        chatUsername: json['chat_username'] ?? '',
        draftText: json['draft_text'] ?? '',
        openProfile: json['open_profile'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_username": chatUsername,
      "draft_text": draftText,
      "open_profile": openProfile,
    };
  }

  @override
  InternalLinkTypePublicChat copyWith({
    String? chatUsername,
    String? draftText,
    bool? openProfile,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypePublicChat(
      chatUsername: chatUsername ?? this.chatUsername,
      draftText: draftText ?? this.draftText,
      openProfile: openProfile ?? this.openProfile,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypePublicChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to. "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings
  const InternalLinkTypeQrCodeAuthentication({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeQrCodeAuthentication.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeQrCodeAuthentication(
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
  InternalLinkTypeQrCodeAuthentication copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeQrCodeAuthentication(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeRestorePurchases extends InternalLinkType {
  /// The link forces restore of App Store purchases when opened. For official iOS application only
  const InternalLinkTypeRestorePurchases({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeRestorePurchases.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeRestorePurchases(
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
  InternalLinkTypeRestorePurchases copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeRestorePurchases(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeRestorePurchases';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeSettings extends InternalLinkType {
  /// The link is a link to application settings
  const InternalLinkTypeSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeSettings.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeSettings(
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
  InternalLinkTypeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeStickerSet extends InternalLinkType {
  /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set.. If the sticker set is found and the user wants to add it, then call changeStickerSet
  const InternalLinkTypeStickerSet({
    required this.stickerSetName,
    required this.expectCustomEmoji,
    this.extra,
    this.clientId,
  });

  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  /// [expectCustomEmoji] True, if the sticker set is expected to contain custom emoji
  final bool expectCustomEmoji;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeStickerSet.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeStickerSet(
        stickerSetName: json['sticker_set_name'] ?? '',
        expectCustomEmoji: json['expect_custom_emoji'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_name": stickerSetName,
      "expect_custom_emoji": expectCustomEmoji,
    };
  }

  @override
  InternalLinkTypeStickerSet copyWith({
    String? stickerSetName,
    bool? expectCustomEmoji,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeStickerSet(
      stickerSetName: stickerSetName ?? this.stickerSetName,
      expectCustomEmoji: expectCustomEmoji ?? this.expectCustomEmoji,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeStory extends InternalLinkType {
  /// The link is a link to a story. Call searchPublicChat with the given poster username, then call getStory with the received chat identifier and the given story identifier, then show the story if received
  const InternalLinkTypeStory({
    required this.storyPosterUsername,
    required this.storyId,
    this.extra,
    this.clientId,
  });

  /// [storyPosterUsername] Username of the poster of the story
  final String storyPosterUsername;

  /// [storyId] Story identifier
  final int storyId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeStory.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeStory(
        storyPosterUsername: json['story_poster_username'] ?? '',
        storyId: json['story_id'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_username": storyPosterUsername,
      "story_id": storyId,
    };
  }

  @override
  InternalLinkTypeStory copyWith({
    String? storyPosterUsername,
    int? storyId,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeStory(
      storyPosterUsername: storyPosterUsername ?? this.storyPosterUsername,
      storyId: storyId ?? this.storyId,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeTheme extends InternalLinkType {
  /// The link is a link to a cloud theme. TDLib has no theme support yet
  const InternalLinkTypeTheme({
    required this.themeName,
    this.extra,
    this.clientId,
  });

  /// [themeName] Name of the theme
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeTheme.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeTheme(
        themeName: json['theme_name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }

  @override
  InternalLinkTypeTheme copyWith({
    String? themeName,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeTheme(
      themeName: themeName ?? this.themeName,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeThemeSettings extends InternalLinkType {
  /// The link is a link to the theme section of the application settings
  const InternalLinkTypeThemeSettings({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeThemeSettings.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeThemeSettings(
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
  InternalLinkTypeThemeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeThemeSettings(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeThemeSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
  const InternalLinkTypeUnknownDeepLink({
    required this.link,
    this.extra,
    this.clientId,
  });

  /// [link] Link to be passed to getDeepLinkInfo
  final String link;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeUnknownDeepLink.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeUnknownDeepLink(
        link: json['link'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
    };
  }

  @override
  InternalLinkTypeUnknownDeepLink copyWith({
    String? link,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeUnknownDeepLink(
      link: link ?? this.link,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeUnknownDeepLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeUnsupportedProxy extends InternalLinkType {
  /// The link is a link to an unsupported proxy. An alert can be shown to the user
  const InternalLinkTypeUnsupportedProxy({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeUnsupportedProxy.fromJson(
          Map<String, dynamic> json) =>
      InternalLinkTypeUnsupportedProxy(
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
  InternalLinkTypeUnsupportedProxy copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeUnsupportedProxy(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeUnsupportedProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeUpgradedGift extends InternalLinkType {
  /// The link is a link to an upgraded gift. Call getUpgradedGift with the given name to process the link
  const InternalLinkTypeUpgradedGift({
    required this.name,
    this.extra,
    this.clientId,
  });

  /// [name] Name of the unique gift
  final String name;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeUpgradedGift.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeUpgradedGift(
        name: json['name'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }

  @override
  InternalLinkTypeUpgradedGift copyWith({
    String? name,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeUpgradedGift(
      name: name ?? this.name,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeUpgradedGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeUserPhoneNumber extends InternalLinkType {
  /// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link.. If the user is found, then call createPrivateChat and open user's profile information screen or the chat itself. If draft text isn't empty, then put the draft text in the input field
  const InternalLinkTypeUserPhoneNumber({
    required this.phoneNumber,
    required this.draftText,
    required this.openProfile,
    this.extra,
    this.clientId,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if user's profile information screen must be opened; otherwise, the chat itself must be opened
  final bool openProfile;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeUserPhoneNumber.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeUserPhoneNumber(
        phoneNumber: json['phone_number'] ?? '',
        draftText: json['draft_text'] ?? '',
        openProfile: json['open_profile'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "draft_text": draftText,
      "open_profile": openProfile,
    };
  }

  @override
  InternalLinkTypeUserPhoneNumber copyWith({
    String? phoneNumber,
    String? draftText,
    bool? openProfile,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeUserPhoneNumber(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      draftText: draftText ?? this.draftText,
      openProfile: openProfile ?? this.openProfile,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeUserPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeUserToken extends InternalLinkType {
  /// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link.. If the user is found, then call createPrivateChat and open the chat
  const InternalLinkTypeUserToken({
    required this.token,
    this.extra,
    this.clientId,
  });

  /// [token] The token
  final String token;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeUserToken.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeUserToken(
        token: json['token'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
    };
  }

  @override
  InternalLinkTypeUserToken copyWith({
    String? token,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeUserToken(
      token: token ?? this.token,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeUserToken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeVideoChat extends InternalLinkType {
  /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinVideoChat with the given invite hash to process the link
  const InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
    this.extra,
    this.clientId,
  });

  /// [chatUsername] Username of the chat with the video chat
  final String chatUsername;

  /// [inviteHash] If non-empty, invite hash to be used to join the video chat without being muted by administrators
  final String inviteHash;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in a channel or a broadcast group
  final bool isLiveStream;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeVideoChat.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeVideoChat(
        chatUsername: json['chat_username'] ?? '',
        inviteHash: json['invite_hash'] ?? '',
        isLiveStream: json['is_live_stream'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_username": chatUsername,
      "invite_hash": inviteHash,
      "is_live_stream": isLiveStream,
    };
  }

  @override
  InternalLinkTypeVideoChat copyWith({
    String? chatUsername,
    String? inviteHash,
    bool? isLiveStream,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeVideoChat(
      chatUsername: chatUsername ?? this.chatUsername,
      inviteHash: inviteHash ?? this.inviteHash,
      isLiveStream: isLiveStream ?? this.isLiveStream,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeVideoChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InternalLinkTypeWebApp extends InternalLinkType {
  /// The link is a link to a Web App. Call searchPublicChat with the given bot username, check that the user is a bot. If the bot is restricted for the current user, then show an error message.. Otherwise, call searchWebApp with the received bot and the given web_app_short_name. Process received foundWebApp by showing a confirmation dialog if needed.. If the bot can be added to attachment or side menu, but isn't added yet, then show a disclaimer about Mini Apps being third-party applications instead of the dialog. and ask the user to accept their Terms of service. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot.. Then, call getWebAppLinkUrl and open the returned URL as a Web App
  const InternalLinkTypeWebApp({
    required this.botUsername,
    required this.webAppShortName,
    required this.startParameter,
    required this.mode,
    this.extra,
    this.clientId,
  });

  /// [botUsername] Username of the bot that owns the Web App
  final String botUsername;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter to be passed to getWebAppLinkUrl
  final String startParameter;

  /// [mode] The mode in which the Web App must be opened
  final WebAppOpenMode mode;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory InternalLinkTypeWebApp.fromJson(Map<String, dynamic> json) =>
      InternalLinkTypeWebApp(
        botUsername: json['bot_username'] ?? '',
        webAppShortName: json['web_app_short_name'] ?? '',
        startParameter: json['start_parameter'] ?? '',
        mode: WebAppOpenMode.fromJson(json['mode'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_username": botUsername,
      "web_app_short_name": webAppShortName,
      "start_parameter": startParameter,
      "mode": mode.toJson(),
    };
  }

  @override
  InternalLinkTypeWebApp copyWith({
    String? botUsername,
    String? webAppShortName,
    String? startParameter,
    WebAppOpenMode? mode,
    dynamic extra,
    int? clientId,
  }) {
    return InternalLinkTypeWebApp(
      botUsername: botUsername ?? this.botUsername,
      webAppShortName: webAppShortName ?? this.webAppShortName,
      startParameter: startParameter ?? this.startParameter,
      mode: mode ?? this.mode,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'internalLinkTypeWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
