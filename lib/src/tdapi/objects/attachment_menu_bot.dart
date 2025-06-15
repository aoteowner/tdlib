import '../tdapi.dart';

class AttachmentMenuBot extends TdObject {
  /// Represents a bot, which can be added to attachment or side menu
  const AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.requestWriteAccess,
    required this.isAdded,
    required this.showInAttachmentMenu,
    required this.showInSideMenu,
    required this.showDisclaimerInSideMenu,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.iosSideMenuIcon,
    this.androidIcon,
    this.androidSideMenuIcon,
    this.macosIcon,
    this.macosSideMenuIcon,
    this.iconColor,
    this.webAppPlaceholder,
    this.extra,
    this.clientId,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [supportsSelfChat] True, if the bot supports opening from attachment menu in the chat with the bot
  final bool supportsSelfChat;

  /// [supportsUserChats] True, if the bot supports opening from attachment menu in private chats with ordinary users
  final bool supportsUserChats;

  /// [supportsBotChats] True, if the bot supports opening from attachment menu in private chats with other bots
  final bool supportsBotChats;

  /// [supportsGroupChats] True, if the bot supports opening from attachment menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// [supportsChannelChats] True, if the bot supports opening from attachment menu in channel chats
  final bool supportsChannelChats;

  /// [requestWriteAccess] True, if the user must be asked for the permission to send messages to the bot
  final bool requestWriteAccess;

  /// [isAdded] True, if the bot was explicitly added by the user. If the bot isn't added, then on the first bot launch toggleBotIsAddedToAttachmentMenu must be called and the bot must be added or removed
  final bool isAdded;

  /// [showInAttachmentMenu] True, if the bot must be shown in the attachment menu
  final bool showInAttachmentMenu;

  /// [showInSideMenu] True, if the bot must be shown in the side menu
  final bool showInSideMenu;

  /// [showDisclaimerInSideMenu] True, if a disclaimer, why the bot is shown in the side menu, is needed
  final bool showDisclaimerInSideMenu;

  /// [name] Name for the bot in attachment menu
  final String name;

  /// [nameColor] Color to highlight selected name of the bot if appropriate; may be null
  final AttachmentMenuBotColor? nameColor;

  /// [defaultIcon] Default icon for the bot in SVG format; may be null
  final File? defaultIcon;

  /// [iosStaticIcon] Icon for the bot in SVG format for the official iOS app; may be null
  final File? iosStaticIcon;

  /// [iosAnimatedIcon] Icon for the bot in TGS format for the official iOS app; may be null
  final File? iosAnimatedIcon;

  /// [iosSideMenuIcon] Icon for the bot in PNG format for the official iOS app side menu; may be null
  final File? iosSideMenuIcon;

  /// [androidIcon] Icon for the bot in TGS format for the official Android app; may be null
  final File? androidIcon;

  /// [androidSideMenuIcon] Icon for the bot in SVG format for the official Android app side menu; may be null
  final File? androidSideMenuIcon;

  /// [macosIcon] Icon for the bot in TGS format for the official native macOS app; may be null
  final File? macosIcon;

  /// [macosSideMenuIcon] Icon for the bot in PNG format for the official macOS app side menu; may be null
  final File? macosSideMenuIcon;

  /// [iconColor] Color to highlight selected icon of the bot if appropriate; may be null
  final AttachmentMenuBotColor? iconColor;

  /// [webAppPlaceholder] Default placeholder for opened Web Apps in SVG format; may be null
  final File? webAppPlaceholder;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory AttachmentMenuBot.fromJson(Map<String, dynamic> json) =>
      AttachmentMenuBot(
        botUserId: json['bot_user_id'] ?? 0,
        supportsSelfChat: json['supports_self_chat'] ?? false,
        supportsUserChats: json['supports_user_chats'] ?? false,
        supportsBotChats: json['supports_bot_chats'] ?? false,
        supportsGroupChats: json['supports_group_chats'] ?? false,
        supportsChannelChats: json['supports_channel_chats'] ?? false,
        requestWriteAccess: json['request_write_access'] ?? false,
        isAdded: json['is_added'] ?? false,
        showInAttachmentMenu: json['show_in_attachment_menu'] ?? false,
        showInSideMenu: json['show_in_side_menu'] ?? false,
        showDisclaimerInSideMenu: json['show_disclaimer_in_side_menu'] ?? false,
        name: json['name'] ?? '',
        nameColor: AttachmentMenuBotColor.fromJson(json['name_color'] ?? {}),
        defaultIcon: File.fromJson(json['default_icon'] ?? {}),
        iosStaticIcon: File.fromJson(json['ios_static_icon'] ?? {}),
        iosAnimatedIcon: File.fromJson(json['ios_animated_icon'] ?? {}),
        iosSideMenuIcon: File.fromJson(json['ios_side_menu_icon'] ?? {}),
        androidIcon: File.fromJson(json['android_icon'] ?? {}),
        androidSideMenuIcon:
            File.fromJson(json['android_side_menu_icon'] ?? {}),
        macosIcon: File.fromJson(json['macos_icon'] ?? {}),
        macosSideMenuIcon: File.fromJson(json['macos_side_menu_icon'] ?? {}),
        iconColor: AttachmentMenuBotColor.fromJson(json['icon_color'] ?? {}),
        webAppPlaceholder: File.fromJson(json['web_app_placeholder'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "supports_self_chat": supportsSelfChat,
      "supports_user_chats": supportsUserChats,
      "supports_bot_chats": supportsBotChats,
      "supports_group_chats": supportsGroupChats,
      "supports_channel_chats": supportsChannelChats,
      "request_write_access": requestWriteAccess,
      "is_added": isAdded,
      "show_in_attachment_menu": showInAttachmentMenu,
      "show_in_side_menu": showInSideMenu,
      "show_disclaimer_in_side_menu": showDisclaimerInSideMenu,
      "name": name,
      "name_color": nameColor?.toJson(),
      "default_icon": defaultIcon?.toJson(),
      "ios_static_icon": iosStaticIcon?.toJson(),
      "ios_animated_icon": iosAnimatedIcon?.toJson(),
      "ios_side_menu_icon": iosSideMenuIcon?.toJson(),
      "android_icon": androidIcon?.toJson(),
      "android_side_menu_icon": androidSideMenuIcon?.toJson(),
      "macos_icon": macosIcon?.toJson(),
      "macos_side_menu_icon": macosSideMenuIcon?.toJson(),
      "icon_color": iconColor?.toJson(),
      "web_app_placeholder": webAppPlaceholder?.toJson(),
    };
  }

  AttachmentMenuBot copyWith({
    int? botUserId,
    bool? supportsSelfChat,
    bool? supportsUserChats,
    bool? supportsBotChats,
    bool? supportsGroupChats,
    bool? supportsChannelChats,
    bool? requestWriteAccess,
    bool? isAdded,
    bool? showInAttachmentMenu,
    bool? showInSideMenu,
    bool? showDisclaimerInSideMenu,
    String? name,
    AttachmentMenuBotColor? nameColor,
    File? defaultIcon,
    File? iosStaticIcon,
    File? iosAnimatedIcon,
    File? iosSideMenuIcon,
    File? androidIcon,
    File? androidSideMenuIcon,
    File? macosIcon,
    File? macosSideMenuIcon,
    AttachmentMenuBotColor? iconColor,
    File? webAppPlaceholder,
    dynamic extra,
    int? clientId,
  }) {
    return AttachmentMenuBot(
      botUserId: botUserId ?? this.botUserId,
      supportsSelfChat: supportsSelfChat ?? this.supportsSelfChat,
      supportsUserChats: supportsUserChats ?? this.supportsUserChats,
      supportsBotChats: supportsBotChats ?? this.supportsBotChats,
      supportsGroupChats: supportsGroupChats ?? this.supportsGroupChats,
      supportsChannelChats: supportsChannelChats ?? this.supportsChannelChats,
      requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
      isAdded: isAdded ?? this.isAdded,
      showInAttachmentMenu: showInAttachmentMenu ?? this.showInAttachmentMenu,
      showInSideMenu: showInSideMenu ?? this.showInSideMenu,
      showDisclaimerInSideMenu:
          showDisclaimerInSideMenu ?? this.showDisclaimerInSideMenu,
      name: name ?? this.name,
      nameColor: nameColor ?? this.nameColor,
      defaultIcon: defaultIcon ?? this.defaultIcon,
      iosStaticIcon: iosStaticIcon ?? this.iosStaticIcon,
      iosAnimatedIcon: iosAnimatedIcon ?? this.iosAnimatedIcon,
      iosSideMenuIcon: iosSideMenuIcon ?? this.iosSideMenuIcon,
      androidIcon: androidIcon ?? this.androidIcon,
      androidSideMenuIcon: androidSideMenuIcon ?? this.androidSideMenuIcon,
      macosIcon: macosIcon ?? this.macosIcon,
      macosSideMenuIcon: macosSideMenuIcon ?? this.macosSideMenuIcon,
      iconColor: iconColor ?? this.iconColor,
      webAppPlaceholder: webAppPlaceholder ?? this.webAppPlaceholder,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'attachmentMenuBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
