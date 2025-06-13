import '../tdapi.dart';

class BotInfo extends TdObject {

  /// Contains information about a bot
  const BotInfo({
    required this.shortDescription,
    required this.description,
    this.photo,
    this.animation,
    this.menuButton,
    required this.commands,
    required this.privacyPolicyUrl,
    this.defaultGroupAdministratorRights,
    this.defaultChannelAdministratorRights,
    this.affiliateProgram,
    required this.webAppBackgroundLightColor,
    required this.webAppBackgroundDarkColor,
    required this.webAppHeaderLightColor,
    required this.webAppHeaderDarkColor,
    this.verificationParameters,
    required this.canGetRevenueStatistics,
    required this.canManageEmojiStatus,
    required this.hasMediaPreviews,
    this.editCommandsLink,
    this.editDescriptionLink,
    this.editDescriptionMediaLink,
    this.editSettingsLink,
  });
  
  /// [shortDescription] The text that is shown on the bot's profile page and is sent together with the link when users share the bot
  final String shortDescription;

  /// [description] The text shown in the chat with the bot if the chat is empty
  final String description;

  /// [photo] Photo shown in the chat with the bot if the chat is empty; may be null
  final Photo? photo;

  /// [animation] Animation shown in the chat with the bot if the chat is empty; may be null
  final Animation? animation;

  /// [menuButton] Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
  final BotMenuButton? menuButton;

  /// [commands] List of the bot commands
  final List<BotCommand> commands;

  /// [privacyPolicyUrl] The HTTP link to the privacy policy of the bot. If empty, then /privacy command must be used if supported by the bot. If the command isn't supported, then https://telegram.org/privacy-tpa must be opened
  final String privacyPolicyUrl;

  /// [defaultGroupAdministratorRights] Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  /// [defaultChannelAdministratorRights] Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  /// [affiliateProgram] Information about the affiliate program of the bot; may be null if none
  final AffiliateProgramInfo? affiliateProgram;

  /// [webAppBackgroundLightColor] Default light background color for bot Web Apps; -1 if not specified
  final int webAppBackgroundLightColor;

  /// [webAppBackgroundDarkColor] Default dark background color for bot Web Apps; -1 if not specified
  final int webAppBackgroundDarkColor;

  /// [webAppHeaderLightColor] Default light header color for bot Web Apps; -1 if not specified
  final int webAppHeaderLightColor;

  /// [webAppHeaderDarkColor] Default dark header color for bot Web Apps; -1 if not specified
  final int webAppHeaderDarkColor;

  /// [verificationParameters] Parameters of the verification that can be provided by the bot; may be null if none or the current user isn't the owner of the bot
  final BotVerificationParameters? verificationParameters;

  /// [canGetRevenueStatistics] True, if the bot's revenue statistics are available to the current user
  final bool canGetRevenueStatistics;

  /// [canManageEmojiStatus] True, if the bot can manage emoji status of the current user
  final bool canManageEmojiStatus;

  /// [hasMediaPreviews] True, if the bot has media previews
  final bool hasMediaPreviews;

  /// [editCommandsLink] The internal link, which can be used to edit bot commands; may be null
  final InternalLinkType? editCommandsLink;

  /// [editDescriptionLink] The internal link, which can be used to edit bot description; may be null
  final InternalLinkType? editDescriptionLink;

  /// [editDescriptionMediaLink] The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null
  final InternalLinkType? editDescriptionMediaLink;

  /// [editSettingsLink] The internal link, which can be used to edit bot settings; may be null
  final InternalLinkType? editSettingsLink;
  
  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
    shortDescription: json['short_description'] ?? '',
    description: json['description'] ?? '',
    photo: Photo.fromJson(json['photo'] ?? {}),
    animation: Animation.fromJson(json['animation'] ?? {}),
    menuButton: BotMenuButton.fromJson(json['menu_button'] ?? {}),
    commands: json['commands'] == null ? <BotCommand>[] :(json['commands'] as List).map((e) => BotCommand.fromJson(e ?? {})).toList(),
    privacyPolicyUrl: json['privacy_policy_url'] ?? '',
    defaultGroupAdministratorRights: ChatAdministratorRights.fromJson(json['default_group_administrator_rights'] ?? {}),
    defaultChannelAdministratorRights: ChatAdministratorRights.fromJson(json['default_channel_administrator_rights'] ?? {}),
    affiliateProgram: AffiliateProgramInfo.fromJson(json['affiliate_program'] ?? {}),
    webAppBackgroundLightColor: json['web_app_background_light_color'] ?? 0,
    webAppBackgroundDarkColor: json['web_app_background_dark_color'] ?? 0,
    webAppHeaderLightColor: json['web_app_header_light_color'] ?? 0,
    webAppHeaderDarkColor: json['web_app_header_dark_color'] ?? 0,
    verificationParameters: BotVerificationParameters.fromJson(json['verification_parameters'] ?? {}),
    canGetRevenueStatistics: json['can_get_revenue_statistics'] ?? false,
    canManageEmojiStatus: json['can_manage_emoji_status'] ?? false,
    hasMediaPreviews: json['has_media_previews'] ?? false,
    editCommandsLink: InternalLinkType.fromJson(json['edit_commands_link'] ?? {}),
    editDescriptionLink: InternalLinkType.fromJson(json['edit_description_link'] ?? {}),
    editDescriptionMediaLink: InternalLinkType.fromJson(json['edit_description_media_link'] ?? {}),
    editSettingsLink: InternalLinkType.fromJson(json['edit_settings_link'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "short_description": shortDescription,
      "description": description,
      "photo": photo?.toJson(),
      "animation": animation?.toJson(),
      "menu_button": menuButton?.toJson(),
      "commands": commands.map((e) => e.toJson()).toList(),
      "privacy_policy_url": privacyPolicyUrl,
      "default_group_administrator_rights": defaultGroupAdministratorRights?.toJson(),
      "default_channel_administrator_rights": defaultChannelAdministratorRights?.toJson(),
      "affiliate_program": affiliateProgram?.toJson(),
      "web_app_background_light_color": webAppBackgroundLightColor,
      "web_app_background_dark_color": webAppBackgroundDarkColor,
      "web_app_header_light_color": webAppHeaderLightColor,
      "web_app_header_dark_color": webAppHeaderDarkColor,
      "verification_parameters": verificationParameters?.toJson(),
      "can_get_revenue_statistics": canGetRevenueStatistics,
      "can_manage_emoji_status": canManageEmojiStatus,
      "has_media_previews": hasMediaPreviews,
      "edit_commands_link": editCommandsLink?.toJson(),
      "edit_description_link": editDescriptionLink?.toJson(),
      "edit_description_media_link": editDescriptionMediaLink?.toJson(),
      "edit_settings_link": editSettingsLink?.toJson(),
    };
  }
  
  BotInfo copyWith({
    String? shortDescription,
    String? description,
    Photo? photo,
    Animation? animation,
    BotMenuButton? menuButton,
    List<BotCommand>? commands,
    String? privacyPolicyUrl,
    ChatAdministratorRights? defaultGroupAdministratorRights,
    ChatAdministratorRights? defaultChannelAdministratorRights,
    AffiliateProgramInfo? affiliateProgram,
    int? webAppBackgroundLightColor,
    int? webAppBackgroundDarkColor,
    int? webAppHeaderLightColor,
    int? webAppHeaderDarkColor,
    BotVerificationParameters? verificationParameters,
    bool? canGetRevenueStatistics,
    bool? canManageEmojiStatus,
    bool? hasMediaPreviews,
    InternalLinkType? editCommandsLink,
    InternalLinkType? editDescriptionLink,
    InternalLinkType? editDescriptionMediaLink,
    InternalLinkType? editSettingsLink,
  }) => BotInfo(
    shortDescription: shortDescription ?? this.shortDescription,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    animation: animation ?? this.animation,
    menuButton: menuButton ?? this.menuButton,
    commands: commands ?? this.commands,
    privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
    defaultGroupAdministratorRights: defaultGroupAdministratorRights ?? this.defaultGroupAdministratorRights,
    defaultChannelAdministratorRights: defaultChannelAdministratorRights ?? this.defaultChannelAdministratorRights,
    affiliateProgram: affiliateProgram ?? this.affiliateProgram,
    webAppBackgroundLightColor: webAppBackgroundLightColor ?? this.webAppBackgroundLightColor,
    webAppBackgroundDarkColor: webAppBackgroundDarkColor ?? this.webAppBackgroundDarkColor,
    webAppHeaderLightColor: webAppHeaderLightColor ?? this.webAppHeaderLightColor,
    webAppHeaderDarkColor: webAppHeaderDarkColor ?? this.webAppHeaderDarkColor,
    verificationParameters: verificationParameters ?? this.verificationParameters,
    canGetRevenueStatistics: canGetRevenueStatistics ?? this.canGetRevenueStatistics,
    canManageEmojiStatus: canManageEmojiStatus ?? this.canManageEmojiStatus,
    hasMediaPreviews: hasMediaPreviews ?? this.hasMediaPreviews,
    editCommandsLink: editCommandsLink ?? this.editCommandsLink,
    editDescriptionLink: editDescriptionLink ?? this.editDescriptionLink,
    editDescriptionMediaLink: editDescriptionMediaLink ?? this.editDescriptionMediaLink,
    editSettingsLink: editSettingsLink ?? this.editSettingsLink,
  );

  static const CONSTRUCTOR = 'botInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
