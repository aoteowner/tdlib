import '../tdapi.dart';

class UserFullInfo extends TdObject {
  /// Contains full information about a user
  const UserFullInfo({
    this.personalPhoto,
    this.photo,
    this.publicPhoto,
    this.blockList,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.hasRestrictedVoiceAndVideoNoteMessages,
    required this.hasPostedToProfileStories,
    required this.hasSponsoredMessagesEnabled,
    required this.needPhoneNumberPrivacyException,
    required this.setChatBackground,
    this.bio,
    this.birthdate,
    required this.personalChatId,
    required this.giftCount,
    required this.groupInCommonCount,
    required this.incomingPaidMessageStarCount,
    required this.outgoingPaidMessageStarCount,
    required this.giftSettings,
    this.botVerification,
    this.businessInfo,
    this.botInfo,
    this.extra,
    this.clientId,
  });

  /// [personalPhoto] User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  final ChatPhoto? personalPhoto;

  /// [photo] User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo
  final ChatPhoto? photo;

  /// [publicPhoto] User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
  final ChatPhoto? publicPhoto;

  /// [blockList] Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// [canBeCalled] True, if the user can be called
  final bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy settings
  final bool hasPrivateCalls;

  /// [hasPrivateForwards] True, if the user can't be linked in forwarded messages due to their privacy settings
  final bool hasPrivateForwards;

  /// [hasRestrictedVoiceAndVideoNoteMessages] True, if voice and video notes can't be sent or forwarded to the user
  final bool hasRestrictedVoiceAndVideoNoteMessages;

  /// [hasPostedToProfileStories] True, if the user has posted to profile stories
  final bool hasPostedToProfileStories;

  /// [hasSponsoredMessagesEnabled] True, if the user always enabled sponsored messages; known only for the current user
  final bool hasSponsoredMessagesEnabled;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [setChatBackground] True, if the user set chat background for both chat users and it wasn't reverted yet
  final bool setChatBackground;

  /// [bio] A short user bio; may be null for bots
  final FormattedText? bio;

  /// [birthdate] Birthdate of the user; may be null if unknown
  final Birthdate? birthdate;

  /// [personalChatId] Identifier of the personal chat of the user; 0 if none
  final int personalChatId;

  /// [giftCount] Number of saved to profile gifts for other users or the total number of received gifts for the current user
  final int giftCount;

  /// [groupInCommonCount] Number of group chats where both the other user and the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [incomingPaidMessageStarCount] Number of Telegram Stars that must be paid by the user for each sent message to the current user
  final int incomingPaidMessageStarCount;

  /// [outgoingPaidMessageStarCount] Number of Telegram Stars that must be paid by the current user for each sent message to the user
  final int outgoingPaidMessageStarCount;

  /// [giftSettings] Settings for gift receiving for the user
  final GiftSettings giftSettings;

  /// [botVerification] Information about verification status of the user provided by a bot; may be null if none or unknown
  final BotVerification? botVerification;

  /// [businessInfo] Information about business settings for Telegram Business accounts; may be null if none
  final BusinessInfo? businessInfo;

  /// [botInfo] For bots, information about the bot; may be null if the user isn't a bot
  final BotInfo? botInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
        personalPhoto: ChatPhoto.fromJson(json['personal_photo'] ?? {}),
        photo: ChatPhoto.fromJson(json['photo'] ?? {}),
        publicPhoto: ChatPhoto.fromJson(json['public_photo'] ?? {}),
        blockList: BlockList.fromJson(json['block_list'] ?? {}),
        canBeCalled: json['can_be_called'] ?? false,
        supportsVideoCalls: json['supports_video_calls'] ?? false,
        hasPrivateCalls: json['has_private_calls'] ?? false,
        hasPrivateForwards: json['has_private_forwards'] ?? false,
        hasRestrictedVoiceAndVideoNoteMessages:
            json['has_restricted_voice_and_video_note_messages'] ?? false,
        hasPostedToProfileStories:
            json['has_posted_to_profile_stories'] ?? false,
        hasSponsoredMessagesEnabled:
            json['has_sponsored_messages_enabled'] ?? false,
        needPhoneNumberPrivacyException:
            json['need_phone_number_privacy_exception'] ?? false,
        setChatBackground: json['set_chat_background'] ?? false,
        bio: FormattedText.fromJson(json['bio'] ?? {}),
        birthdate: Birthdate.fromJson(json['birthdate'] ?? {}),
        personalChatId: json['personal_chat_id'] ?? 0,
        giftCount: json['gift_count'] ?? 0,
        groupInCommonCount: json['group_in_common_count'] ?? 0,
        incomingPaidMessageStarCount:
            json['incoming_paid_message_star_count'] ?? 0,
        outgoingPaidMessageStarCount:
            json['outgoing_paid_message_star_count'] ?? 0,
        giftSettings: GiftSettings.fromJson(json['gift_settings'] ?? {}),
        botVerification:
            BotVerification.fromJson(json['bot_verification'] ?? {}),
        businessInfo: BusinessInfo.fromJson(json['business_info'] ?? {}),
        botInfo: BotInfo.fromJson(json['bot_info'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "personal_photo": personalPhoto?.toJson(),
      "photo": photo?.toJson(),
      "public_photo": publicPhoto?.toJson(),
      "block_list": blockList?.toJson(),
      "can_be_called": canBeCalled,
      "supports_video_calls": supportsVideoCalls,
      "has_private_calls": hasPrivateCalls,
      "has_private_forwards": hasPrivateForwards,
      "has_restricted_voice_and_video_note_messages":
          hasRestrictedVoiceAndVideoNoteMessages,
      "has_posted_to_profile_stories": hasPostedToProfileStories,
      "has_sponsored_messages_enabled": hasSponsoredMessagesEnabled,
      "need_phone_number_privacy_exception": needPhoneNumberPrivacyException,
      "set_chat_background": setChatBackground,
      "bio": bio?.toJson(),
      "birthdate": birthdate?.toJson(),
      "personal_chat_id": personalChatId,
      "gift_count": giftCount,
      "group_in_common_count": groupInCommonCount,
      "incoming_paid_message_star_count": incomingPaidMessageStarCount,
      "outgoing_paid_message_star_count": outgoingPaidMessageStarCount,
      "gift_settings": giftSettings.toJson(),
      "bot_verification": botVerification?.toJson(),
      "business_info": businessInfo?.toJson(),
      "bot_info": botInfo?.toJson(),
    };
  }

  UserFullInfo copyWith({
    ChatPhoto? personalPhoto,
    ChatPhoto? photo,
    ChatPhoto? publicPhoto,
    BlockList? blockList,
    bool? canBeCalled,
    bool? supportsVideoCalls,
    bool? hasPrivateCalls,
    bool? hasPrivateForwards,
    bool? hasRestrictedVoiceAndVideoNoteMessages,
    bool? hasPostedToProfileStories,
    bool? hasSponsoredMessagesEnabled,
    bool? needPhoneNumberPrivacyException,
    bool? setChatBackground,
    FormattedText? bio,
    Birthdate? birthdate,
    int? personalChatId,
    int? giftCount,
    int? groupInCommonCount,
    int? incomingPaidMessageStarCount,
    int? outgoingPaidMessageStarCount,
    GiftSettings? giftSettings,
    BotVerification? botVerification,
    BusinessInfo? businessInfo,
    BotInfo? botInfo,
    dynamic extra,
    int? clientId,
  }) {
    return UserFullInfo(
      personalPhoto: personalPhoto ?? this.personalPhoto,
      photo: photo ?? this.photo,
      publicPhoto: publicPhoto ?? this.publicPhoto,
      blockList: blockList ?? this.blockList,
      canBeCalled: canBeCalled ?? this.canBeCalled,
      supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
      hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
      hasPrivateForwards: hasPrivateForwards ?? this.hasPrivateForwards,
      hasRestrictedVoiceAndVideoNoteMessages:
          hasRestrictedVoiceAndVideoNoteMessages ??
              this.hasRestrictedVoiceAndVideoNoteMessages,
      hasPostedToProfileStories:
          hasPostedToProfileStories ?? this.hasPostedToProfileStories,
      hasSponsoredMessagesEnabled:
          hasSponsoredMessagesEnabled ?? this.hasSponsoredMessagesEnabled,
      needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ??
          this.needPhoneNumberPrivacyException,
      setChatBackground: setChatBackground ?? this.setChatBackground,
      bio: bio ?? this.bio,
      birthdate: birthdate ?? this.birthdate,
      personalChatId: personalChatId ?? this.personalChatId,
      giftCount: giftCount ?? this.giftCount,
      groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
      incomingPaidMessageStarCount:
          incomingPaidMessageStarCount ?? this.incomingPaidMessageStarCount,
      outgoingPaidMessageStarCount:
          outgoingPaidMessageStarCount ?? this.outgoingPaidMessageStarCount,
      giftSettings: giftSettings ?? this.giftSettings,
      botVerification: botVerification ?? this.botVerification,
      businessInfo: businessInfo ?? this.businessInfo,
      botInfo: botInfo ?? this.botInfo,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'userFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
