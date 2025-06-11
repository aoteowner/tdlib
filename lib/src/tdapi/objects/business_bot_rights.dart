import '../tdapi.dart';

class BusinessBotRights extends TdObject {

  /// Describes rights of a business bot
  const BusinessBotRights({
    required this.canReply,
    required this.canReadMessages,
    required this.canDeleteSentMessages,
    required this.canDeleteAllMessages,
    required this.canEditName,
    required this.canEditBio,
    required this.canEditProfilePhoto,
    required this.canEditUsername,
    required this.canViewGiftsAndStars,
    required this.canSellGifts,
    required this.canChangeGiftSettings,
    required this.canTransferAndUpgradeGifts,
    required this.canTransferStars,
    required this.canManageStories,
  });
  
  /// [canReply] True, if the bot can send and edit messages in the private chats that had incoming messages in the last 24 hours
  final bool canReply;

  /// [canReadMessages] True, if the bot can mark incoming private messages as read
  final bool canReadMessages;

  /// [canDeleteSentMessages] True, if the bot can delete sent messages
  final bool canDeleteSentMessages;

  /// [canDeleteAllMessages] True, if the bot can delete any message
  final bool canDeleteAllMessages;

  /// [canEditName] True, if the bot can edit name of the business account
  final bool canEditName;

  /// [canEditBio] True, if the bot can edit bio of the business account
  final bool canEditBio;

  /// [canEditProfilePhoto] True, if the bot can edit profile photo of the business account
  final bool canEditProfilePhoto;

  /// [canEditUsername] True, if the bot can edit username of the business account
  final bool canEditUsername;

  /// [canViewGiftsAndStars] True, if the bot can view gifts and amount of Telegram Stars owned by the business account
  final bool canViewGiftsAndStars;

  /// [canSellGifts] True, if the bot can sell regular gifts received by the business account
  final bool canSellGifts;

  /// [canChangeGiftSettings] True, if the bot can change gift receiving settings of the business account
  final bool canChangeGiftSettings;

  /// [canTransferAndUpgradeGifts] True, if the bot can transfer and upgrade gifts received by the business account
  final bool canTransferAndUpgradeGifts;

  /// [canTransferStars] True, if the bot can transfer Telegram Stars received by the business account to account of the bot, or use them to upgrade and transfer gifts
  final bool canTransferStars;

  /// [canManageStories] True, if the bot can post, edit and delete stories
  final bool canManageStories;
  
  /// Parse from a json
  factory BusinessBotRights.fromJson(Map<String, dynamic> json) => BusinessBotRights(
    canReply: json['can_reply'],
    canReadMessages: json['can_read_messages'],
    canDeleteSentMessages: json['can_delete_sent_messages'],
    canDeleteAllMessages: json['can_delete_all_messages'],
    canEditName: json['can_edit_name'],
    canEditBio: json['can_edit_bio'],
    canEditProfilePhoto: json['can_edit_profile_photo'],
    canEditUsername: json['can_edit_username'],
    canViewGiftsAndStars: json['can_view_gifts_and_stars'],
    canSellGifts: json['can_sell_gifts'],
    canChangeGiftSettings: json['can_change_gift_settings'],
    canTransferAndUpgradeGifts: json['can_transfer_and_upgrade_gifts'],
    canTransferStars: json['can_transfer_stars'],
    canManageStories: json['can_manage_stories'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_reply": canReply,
      "can_read_messages": canReadMessages,
      "can_delete_sent_messages": canDeleteSentMessages,
      "can_delete_all_messages": canDeleteAllMessages,
      "can_edit_name": canEditName,
      "can_edit_bio": canEditBio,
      "can_edit_profile_photo": canEditProfilePhoto,
      "can_edit_username": canEditUsername,
      "can_view_gifts_and_stars": canViewGiftsAndStars,
      "can_sell_gifts": canSellGifts,
      "can_change_gift_settings": canChangeGiftSettings,
      "can_transfer_and_upgrade_gifts": canTransferAndUpgradeGifts,
      "can_transfer_stars": canTransferStars,
      "can_manage_stories": canManageStories,
    };
  }
  
  BusinessBotRights copyWith({
    bool? canReply,
    bool? canReadMessages,
    bool? canDeleteSentMessages,
    bool? canDeleteAllMessages,
    bool? canEditName,
    bool? canEditBio,
    bool? canEditProfilePhoto,
    bool? canEditUsername,
    bool? canViewGiftsAndStars,
    bool? canSellGifts,
    bool? canChangeGiftSettings,
    bool? canTransferAndUpgradeGifts,
    bool? canTransferStars,
    bool? canManageStories,
  }) => BusinessBotRights(
    canReply: canReply ?? this.canReply,
    canReadMessages: canReadMessages ?? this.canReadMessages,
    canDeleteSentMessages: canDeleteSentMessages ?? this.canDeleteSentMessages,
    canDeleteAllMessages: canDeleteAllMessages ?? this.canDeleteAllMessages,
    canEditName: canEditName ?? this.canEditName,
    canEditBio: canEditBio ?? this.canEditBio,
    canEditProfilePhoto: canEditProfilePhoto ?? this.canEditProfilePhoto,
    canEditUsername: canEditUsername ?? this.canEditUsername,
    canViewGiftsAndStars: canViewGiftsAndStars ?? this.canViewGiftsAndStars,
    canSellGifts: canSellGifts ?? this.canSellGifts,
    canChangeGiftSettings: canChangeGiftSettings ?? this.canChangeGiftSettings,
    canTransferAndUpgradeGifts: canTransferAndUpgradeGifts ?? this.canTransferAndUpgradeGifts,
    canTransferStars: canTransferStars ?? this.canTransferStars,
    canManageStories: canManageStories ?? this.canManageStories,
  );

  static const CONSTRUCTOR = 'businessBotRights';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
