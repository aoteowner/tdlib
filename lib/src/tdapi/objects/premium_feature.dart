part of '../tdapi.dart';

class PremiumFeature extends TdObject {

  /// Describes a feature available to Premium users
  const PremiumFeature();
  
  /// a PremiumFeature return type can be :
  /// * [PremiumFeatureIncreasedLimits]
  /// * [PremiumFeatureIncreasedUploadFileSize]
  /// * [PremiumFeatureImprovedDownloadSpeed]
  /// * [PremiumFeatureVoiceRecognition]
  /// * [PremiumFeatureDisabledAds]
  /// * [PremiumFeatureUniqueReactions]
  /// * [PremiumFeatureUniqueStickers]
  /// * [PremiumFeatureCustomEmoji]
  /// * [PremiumFeatureAdvancedChatManagement]
  /// * [PremiumFeatureProfileBadge]
  /// * [PremiumFeatureEmojiStatus]
  /// * [PremiumFeatureAnimatedProfilePhoto]
  /// * [PremiumFeatureForumTopicIcon]
  /// * [PremiumFeatureAppIcons]
  /// * [PremiumFeatureRealTimeChatTranslation]
  /// * [PremiumFeatureUpgradedStories]
  /// * [PremiumFeatureChatBoost]
  /// * [PremiumFeatureAccentColor]
  /// * [PremiumFeatureBackgroundForBoth]
  /// * [PremiumFeatureSavedMessagesTags]
  /// * [PremiumFeatureMessagePrivacy]
  /// * [PremiumFeatureLastSeenTimes]
  /// * [PremiumFeatureBusiness]
  /// * [PremiumFeatureMessageEffects]
  factory PremiumFeature.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumFeatureIncreasedLimits.CONSTRUCTOR:
        return PremiumFeatureIncreasedLimits.fromJson(json);
      case PremiumFeatureIncreasedUploadFileSize.CONSTRUCTOR:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);
      case PremiumFeatureImprovedDownloadSpeed.CONSTRUCTOR:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);
      case PremiumFeatureVoiceRecognition.CONSTRUCTOR:
        return PremiumFeatureVoiceRecognition.fromJson(json);
      case PremiumFeatureDisabledAds.CONSTRUCTOR:
        return PremiumFeatureDisabledAds.fromJson(json);
      case PremiumFeatureUniqueReactions.CONSTRUCTOR:
        return PremiumFeatureUniqueReactions.fromJson(json);
      case PremiumFeatureUniqueStickers.CONSTRUCTOR:
        return PremiumFeatureUniqueStickers.fromJson(json);
      case PremiumFeatureCustomEmoji.CONSTRUCTOR:
        return PremiumFeatureCustomEmoji.fromJson(json);
      case PremiumFeatureAdvancedChatManagement.CONSTRUCTOR:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);
      case PremiumFeatureProfileBadge.CONSTRUCTOR:
        return PremiumFeatureProfileBadge.fromJson(json);
      case PremiumFeatureEmojiStatus.CONSTRUCTOR:
        return PremiumFeatureEmojiStatus.fromJson(json);
      case PremiumFeatureAnimatedProfilePhoto.CONSTRUCTOR:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);
      case PremiumFeatureForumTopicIcon.CONSTRUCTOR:
        return PremiumFeatureForumTopicIcon.fromJson(json);
      case PremiumFeatureAppIcons.CONSTRUCTOR:
        return PremiumFeatureAppIcons.fromJson(json);
      case PremiumFeatureRealTimeChatTranslation.CONSTRUCTOR:
        return PremiumFeatureRealTimeChatTranslation.fromJson(json);
      case PremiumFeatureUpgradedStories.CONSTRUCTOR:
        return PremiumFeatureUpgradedStories.fromJson(json);
      case PremiumFeatureChatBoost.CONSTRUCTOR:
        return PremiumFeatureChatBoost.fromJson(json);
      case PremiumFeatureAccentColor.CONSTRUCTOR:
        return PremiumFeatureAccentColor.fromJson(json);
      case PremiumFeatureBackgroundForBoth.CONSTRUCTOR:
        return PremiumFeatureBackgroundForBoth.fromJson(json);
      case PremiumFeatureSavedMessagesTags.CONSTRUCTOR:
        return PremiumFeatureSavedMessagesTags.fromJson(json);
      case PremiumFeatureMessagePrivacy.CONSTRUCTOR:
        return PremiumFeatureMessagePrivacy.fromJson(json);
      case PremiumFeatureLastSeenTimes.CONSTRUCTOR:
        return PremiumFeatureLastSeenTimes.fromJson(json);
      case PremiumFeatureBusiness.CONSTRUCTOR:
        return PremiumFeatureBusiness.fromJson(json);
      case PremiumFeatureMessageEffects.CONSTRUCTOR:
        return PremiumFeatureMessageEffects.fromJson(json);
      default:
        return const PremiumFeature();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PremiumFeature copyWith() => const PremiumFeature();

  static const CONSTRUCTOR = 'premiumFeature';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureIncreasedLimits extends PremiumFeature {

  /// Increased limits
  const PremiumFeatureIncreasedLimits();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedLimits.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedLimits();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureIncreasedLimits copyWith() => const PremiumFeatureIncreasedLimits();

  static const CONSTRUCTOR = 'premiumFeatureIncreasedLimits';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {

  /// Increased maximum upload file size
  const PremiumFeatureIncreasedUploadFileSize();
  
  /// Parse from a json
  factory PremiumFeatureIncreasedUploadFileSize.fromJson(Map<String, dynamic> json) => const PremiumFeatureIncreasedUploadFileSize();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureIncreasedUploadFileSize copyWith() => const PremiumFeatureIncreasedUploadFileSize();

  static const CONSTRUCTOR = 'premiumFeatureIncreasedUploadFileSize';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {

  /// Improved download speed
  const PremiumFeatureImprovedDownloadSpeed();
  
  /// Parse from a json
  factory PremiumFeatureImprovedDownloadSpeed.fromJson(Map<String, dynamic> json) => const PremiumFeatureImprovedDownloadSpeed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureImprovedDownloadSpeed copyWith() => const PremiumFeatureImprovedDownloadSpeed();

  static const CONSTRUCTOR = 'premiumFeatureImprovedDownloadSpeed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureVoiceRecognition extends PremiumFeature {

  /// The ability to convert voice notes to text
  const PremiumFeatureVoiceRecognition();
  
  /// Parse from a json
  factory PremiumFeatureVoiceRecognition.fromJson(Map<String, dynamic> json) => const PremiumFeatureVoiceRecognition();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureVoiceRecognition copyWith() => const PremiumFeatureVoiceRecognition();

  static const CONSTRUCTOR = 'premiumFeatureVoiceRecognition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureDisabledAds extends PremiumFeature {

  /// Disabled ads
  const PremiumFeatureDisabledAds();
  
  /// Parse from a json
  factory PremiumFeatureDisabledAds.fromJson(Map<String, dynamic> json) => const PremiumFeatureDisabledAds();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureDisabledAds copyWith() => const PremiumFeatureDisabledAds();

  static const CONSTRUCTOR = 'premiumFeatureDisabledAds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureUniqueReactions extends PremiumFeature {

  /// Allowed to use more reactions
  const PremiumFeatureUniqueReactions();
  
  /// Parse from a json
  factory PremiumFeatureUniqueReactions.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueReactions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureUniqueReactions copyWith() => const PremiumFeatureUniqueReactions();

  static const CONSTRUCTOR = 'premiumFeatureUniqueReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureUniqueStickers extends PremiumFeature {

  /// Allowed to use premium stickers with unique effects
  const PremiumFeatureUniqueStickers();
  
  /// Parse from a json
  factory PremiumFeatureUniqueStickers.fromJson(Map<String, dynamic> json) => const PremiumFeatureUniqueStickers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureUniqueStickers copyWith() => const PremiumFeatureUniqueStickers();

  static const CONSTRUCTOR = 'premiumFeatureUniqueStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureCustomEmoji extends PremiumFeature {

  /// Allowed to use custom emoji stickers in message texts and captions
  const PremiumFeatureCustomEmoji();
  
  /// Parse from a json
  factory PremiumFeatureCustomEmoji.fromJson(Map<String, dynamic> json) => const PremiumFeatureCustomEmoji();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureCustomEmoji copyWith() => const PremiumFeatureCustomEmoji();

  static const CONSTRUCTOR = 'premiumFeatureCustomEmoji';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureAdvancedChatManagement extends PremiumFeature {

  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram
  const PremiumFeatureAdvancedChatManagement();
  
  /// Parse from a json
  factory PremiumFeatureAdvancedChatManagement.fromJson(Map<String, dynamic> json) => const PremiumFeatureAdvancedChatManagement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureAdvancedChatManagement copyWith() => const PremiumFeatureAdvancedChatManagement();

  static const CONSTRUCTOR = 'premiumFeatureAdvancedChatManagement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureProfileBadge extends PremiumFeature {

  /// A badge in the user's profile
  const PremiumFeatureProfileBadge();
  
  /// Parse from a json
  factory PremiumFeatureProfileBadge.fromJson(Map<String, dynamic> json) => const PremiumFeatureProfileBadge();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureProfileBadge copyWith() => const PremiumFeatureProfileBadge();

  static const CONSTRUCTOR = 'premiumFeatureProfileBadge';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureEmojiStatus extends PremiumFeature {

  /// The ability to show an emoji status along with the user's name
  const PremiumFeatureEmojiStatus();
  
  /// Parse from a json
  factory PremiumFeatureEmojiStatus.fromJson(Map<String, dynamic> json) => const PremiumFeatureEmojiStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureEmojiStatus copyWith() => const PremiumFeatureEmojiStatus();

  static const CONSTRUCTOR = 'premiumFeatureEmojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {

  /// Profile photo animation on message and chat screens
  const PremiumFeatureAnimatedProfilePhoto();
  
  /// Parse from a json
  factory PremiumFeatureAnimatedProfilePhoto.fromJson(Map<String, dynamic> json) => const PremiumFeatureAnimatedProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureAnimatedProfilePhoto copyWith() => const PremiumFeatureAnimatedProfilePhoto();

  static const CONSTRUCTOR = 'premiumFeatureAnimatedProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureForumTopicIcon extends PremiumFeature {

  /// The ability to set a custom emoji as a forum topic icon
  const PremiumFeatureForumTopicIcon();
  
  /// Parse from a json
  factory PremiumFeatureForumTopicIcon.fromJson(Map<String, dynamic> json) => const PremiumFeatureForumTopicIcon();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureForumTopicIcon copyWith() => const PremiumFeatureForumTopicIcon();

  static const CONSTRUCTOR = 'premiumFeatureForumTopicIcon';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureAppIcons extends PremiumFeature {

  /// Allowed to set a premium application icons
  const PremiumFeatureAppIcons();
  
  /// Parse from a json
  factory PremiumFeatureAppIcons.fromJson(Map<String, dynamic> json) => const PremiumFeatureAppIcons();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureAppIcons copyWith() => const PremiumFeatureAppIcons();

  static const CONSTRUCTOR = 'premiumFeatureAppIcons';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureRealTimeChatTranslation extends PremiumFeature {

  /// Allowed to translate chat messages real-time
  const PremiumFeatureRealTimeChatTranslation();
  
  /// Parse from a json
  factory PremiumFeatureRealTimeChatTranslation.fromJson(Map<String, dynamic> json) => const PremiumFeatureRealTimeChatTranslation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureRealTimeChatTranslation copyWith() => const PremiumFeatureRealTimeChatTranslation();

  static const CONSTRUCTOR = 'premiumFeatureRealTimeChatTranslation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureUpgradedStories extends PremiumFeature {

  /// Allowed to use many additional features for stories
  const PremiumFeatureUpgradedStories();
  
  /// Parse from a json
  factory PremiumFeatureUpgradedStories.fromJson(Map<String, dynamic> json) => const PremiumFeatureUpgradedStories();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureUpgradedStories copyWith() => const PremiumFeatureUpgradedStories();

  static const CONSTRUCTOR = 'premiumFeatureUpgradedStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureChatBoost extends PremiumFeature {

  /// The ability to boost chats
  const PremiumFeatureChatBoost();
  
  /// Parse from a json
  factory PremiumFeatureChatBoost.fromJson(Map<String, dynamic> json) => const PremiumFeatureChatBoost();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureChatBoost copyWith() => const PremiumFeatureChatBoost();

  static const CONSTRUCTOR = 'premiumFeatureChatBoost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureAccentColor extends PremiumFeature {

  /// The ability to choose accent color for replies and user profile
  const PremiumFeatureAccentColor();
  
  /// Parse from a json
  factory PremiumFeatureAccentColor.fromJson(Map<String, dynamic> json) => const PremiumFeatureAccentColor();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureAccentColor copyWith() => const PremiumFeatureAccentColor();

  static const CONSTRUCTOR = 'premiumFeatureAccentColor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureBackgroundForBoth extends PremiumFeature {

  /// The ability to set private chat background for both users
  const PremiumFeatureBackgroundForBoth();
  
  /// Parse from a json
  factory PremiumFeatureBackgroundForBoth.fromJson(Map<String, dynamic> json) => const PremiumFeatureBackgroundForBoth();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureBackgroundForBoth copyWith() => const PremiumFeatureBackgroundForBoth();

  static const CONSTRUCTOR = 'premiumFeatureBackgroundForBoth';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureSavedMessagesTags extends PremiumFeature {

  /// The ability to use tags in Saved Messages
  const PremiumFeatureSavedMessagesTags();
  
  /// Parse from a json
  factory PremiumFeatureSavedMessagesTags.fromJson(Map<String, dynamic> json) => const PremiumFeatureSavedMessagesTags();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureSavedMessagesTags copyWith() => const PremiumFeatureSavedMessagesTags();

  static const CONSTRUCTOR = 'premiumFeatureSavedMessagesTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureMessagePrivacy extends PremiumFeature {

  /// The ability to disallow incoming voice and video note messages in private chats using setUserPrivacySettingRules with userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages. and to restrict incoming messages from non-contacts using setNewChatPrivacySettings
  const PremiumFeatureMessagePrivacy();
  
  /// Parse from a json
  factory PremiumFeatureMessagePrivacy.fromJson(Map<String, dynamic> json) => const PremiumFeatureMessagePrivacy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureMessagePrivacy copyWith() => const PremiumFeatureMessagePrivacy();

  static const CONSTRUCTOR = 'premiumFeatureMessagePrivacy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureLastSeenTimes extends PremiumFeature {

  /// The ability to view last seen and read times of other users even they can't view last seen or read time for the current user
  const PremiumFeatureLastSeenTimes();
  
  /// Parse from a json
  factory PremiumFeatureLastSeenTimes.fromJson(Map<String, dynamic> json) => const PremiumFeatureLastSeenTimes();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureLastSeenTimes copyWith() => const PremiumFeatureLastSeenTimes();

  static const CONSTRUCTOR = 'premiumFeatureLastSeenTimes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureBusiness extends PremiumFeature {

  /// The ability to use Business features
  const PremiumFeatureBusiness();
  
  /// Parse from a json
  factory PremiumFeatureBusiness.fromJson(Map<String, dynamic> json) => const PremiumFeatureBusiness();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureBusiness copyWith() => const PremiumFeatureBusiness();

  static const CONSTRUCTOR = 'premiumFeatureBusiness';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PremiumFeatureMessageEffects extends PremiumFeature {

  /// The ability to use all available message effects
  const PremiumFeatureMessageEffects();
  
  /// Parse from a json
  factory PremiumFeatureMessageEffects.fromJson(Map<String, dynamic> json) => const PremiumFeatureMessageEffects();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PremiumFeatureMessageEffects copyWith() => const PremiumFeatureMessageEffects();

  static const CONSTRUCTOR = 'premiumFeatureMessageEffects';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
