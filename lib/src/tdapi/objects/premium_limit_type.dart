import '../tdapi.dart';

class PremiumLimitType extends TdObject {
  /// Describes type of limit, increased for Premium users
  const PremiumLimitType();

  factory PremiumLimitType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumLimitTypeSupergroupCount.CONSTRUCTOR:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.CONSTRUCTOR:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.CONSTRUCTOR:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.CONSTRUCTOR:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.CONSTRUCTOR:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypeChatFolderCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderCount.fromJson(json);
      case PremiumLimitTypeChatFolderChosenChatCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.CONSTRUCTOR:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypePinnedSavedMessagesTopicCount.CONSTRUCTOR:
        return PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(json);
      case PremiumLimitTypeCaptionLength.CONSTRUCTOR:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeBioLength.CONSTRUCTOR:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeChatFolderInviteLinkCount.CONSTRUCTOR:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);
      case PremiumLimitTypeShareableChatFolderCount.CONSTRUCTOR:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);
      case PremiumLimitTypeActiveStoryCount.CONSTRUCTOR:
        return PremiumLimitTypeActiveStoryCount.fromJson(json);
      case PremiumLimitTypeWeeklyPostedStoryCount.CONSTRUCTOR:
        return PremiumLimitTypeWeeklyPostedStoryCount.fromJson(json);
      case PremiumLimitTypeMonthlyPostedStoryCount.CONSTRUCTOR:
        return PremiumLimitTypeMonthlyPostedStoryCount.fromJson(json);
      case PremiumLimitTypeStoryCaptionLength.CONSTRUCTOR:
        return PremiumLimitTypeStoryCaptionLength.fromJson(json);
      case PremiumLimitTypeStorySuggestedReactionAreaCount.CONSTRUCTOR:
        return PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(json);
      case PremiumLimitTypeSimilarChatCount.CONSTRUCTOR:
        return PremiumLimitTypeSimilarChatCount.fromJson(json);
      default:
        return const PremiumLimitType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PremiumLimitType copyWith() {
    return const PremiumLimitType();
  }

  static const CONSTRUCTOR = 'premiumLimitType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  /// The maximum number of joined supergroups and channels
  const PremiumLimitTypeSupergroupCount();

  factory PremiumLimitTypeSupergroupCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeSupergroupCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeSupergroupCount copyWith() {
    return const PremiumLimitTypeSupergroupCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeSupergroupCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  /// The maximum number of pinned chats in the main chat list
  const PremiumLimitTypePinnedChatCount();

  factory PremiumLimitTypePinnedChatCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedChatCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypePinnedChatCount copyWith() {
    return const PremiumLimitTypePinnedChatCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypePinnedChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  /// The maximum number of created public chats
  const PremiumLimitTypeCreatedPublicChatCount();

  factory PremiumLimitTypeCreatedPublicChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeCreatedPublicChatCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeCreatedPublicChatCount copyWith() {
    return const PremiumLimitTypeCreatedPublicChatCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeCreatedPublicChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  /// The maximum number of saved animations
  const PremiumLimitTypeSavedAnimationCount();

  factory PremiumLimitTypeSavedAnimationCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeSavedAnimationCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeSavedAnimationCount copyWith() {
    return const PremiumLimitTypeSavedAnimationCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeSavedAnimationCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  /// The maximum number of favorite stickers
  const PremiumLimitTypeFavoriteStickerCount();

  factory PremiumLimitTypeFavoriteStickerCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeFavoriteStickerCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeFavoriteStickerCount copyWith() {
    return const PremiumLimitTypeFavoriteStickerCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeFavoriteStickerCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderCount extends PremiumLimitType {
  /// The maximum number of chat folders
  const PremiumLimitTypeChatFolderCount();

  factory PremiumLimitTypeChatFolderCount.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderCount copyWith() {
    return const PremiumLimitTypeChatFolderCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderChosenChatCount extends PremiumLimitType {
  /// The maximum number of pinned and always included, or always excluded chats in a chat folder
  const PremiumLimitTypeChatFolderChosenChatCount();

  factory PremiumLimitTypeChatFolderChosenChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderChosenChatCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderChosenChatCount copyWith() {
    return const PremiumLimitTypeChatFolderChosenChatCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderChosenChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  /// The maximum number of pinned chats in the archive chat list
  const PremiumLimitTypePinnedArchivedChatCount();

  factory PremiumLimitTypePinnedArchivedChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedArchivedChatCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypePinnedArchivedChatCount copyWith() {
    return const PremiumLimitTypePinnedArchivedChatCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypePinnedArchivedChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypePinnedSavedMessagesTopicCount extends PremiumLimitType {
  /// The maximum number of pinned Saved Messages topics
  const PremiumLimitTypePinnedSavedMessagesTopicCount();

  factory PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypePinnedSavedMessagesTopicCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypePinnedSavedMessagesTopicCount copyWith() {
    return const PremiumLimitTypePinnedSavedMessagesTopicCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypePinnedSavedMessagesTopicCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  /// The maximum length of sent media caption
  const PremiumLimitTypeCaptionLength();

  factory PremiumLimitTypeCaptionLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeCaptionLength();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeCaptionLength copyWith() {
    return const PremiumLimitTypeCaptionLength();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeCaptionLength';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeBioLength extends PremiumLimitType {
  /// The maximum length of the user's bio
  const PremiumLimitTypeBioLength();

  factory PremiumLimitTypeBioLength.fromJson(Map<String, dynamic> json) =>
      const PremiumLimitTypeBioLength();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeBioLength copyWith() {
    return const PremiumLimitTypeBioLength();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeBioLength';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeChatFolderInviteLinkCount extends PremiumLimitType {
  /// The maximum number of invite links for a chat folder
  const PremiumLimitTypeChatFolderInviteLinkCount();

  factory PremiumLimitTypeChatFolderInviteLinkCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeChatFolderInviteLinkCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeChatFolderInviteLinkCount copyWith() {
    return const PremiumLimitTypeChatFolderInviteLinkCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeChatFolderInviteLinkCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  /// The maximum number of added shareable chat folders
  const PremiumLimitTypeShareableChatFolderCount();

  factory PremiumLimitTypeShareableChatFolderCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeShareableChatFolderCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeShareableChatFolderCount copyWith() {
    return const PremiumLimitTypeShareableChatFolderCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeShareableChatFolderCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  /// The maximum number of active stories
  const PremiumLimitTypeActiveStoryCount();

  factory PremiumLimitTypeActiveStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeActiveStoryCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeActiveStoryCount copyWith() {
    return const PremiumLimitTypeActiveStoryCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeActiveStoryCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeWeeklyPostedStoryCount extends PremiumLimitType {
  /// The maximum number of stories posted per week
  const PremiumLimitTypeWeeklyPostedStoryCount();

  factory PremiumLimitTypeWeeklyPostedStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeWeeklyPostedStoryCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeWeeklyPostedStoryCount copyWith() {
    return const PremiumLimitTypeWeeklyPostedStoryCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeWeeklyPostedStoryCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeMonthlyPostedStoryCount extends PremiumLimitType {
  /// The maximum number of stories posted per month
  const PremiumLimitTypeMonthlyPostedStoryCount();

  factory PremiumLimitTypeMonthlyPostedStoryCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeMonthlyPostedStoryCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeMonthlyPostedStoryCount copyWith() {
    return const PremiumLimitTypeMonthlyPostedStoryCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeMonthlyPostedStoryCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeStoryCaptionLength extends PremiumLimitType {
  /// The maximum length of captions of posted stories
  const PremiumLimitTypeStoryCaptionLength();

  factory PremiumLimitTypeStoryCaptionLength.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeStoryCaptionLength();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeStoryCaptionLength copyWith() {
    return const PremiumLimitTypeStoryCaptionLength();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeStoryCaptionLength';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeStorySuggestedReactionAreaCount extends PremiumLimitType {
  /// The maximum number of suggested reaction areas on a story
  const PremiumLimitTypeStorySuggestedReactionAreaCount();

  factory PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeStorySuggestedReactionAreaCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeStorySuggestedReactionAreaCount copyWith() {
    return const PremiumLimitTypeStorySuggestedReactionAreaCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeStorySuggestedReactionAreaCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumLimitTypeSimilarChatCount extends PremiumLimitType {
  /// The maximum number of received similar chats
  const PremiumLimitTypeSimilarChatCount();

  factory PremiumLimitTypeSimilarChatCount.fromJson(
          Map<String, dynamic> json) =>
      const PremiumLimitTypeSimilarChatCount();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumLimitTypeSimilarChatCount copyWith() {
    return const PremiumLimitTypeSimilarChatCount();
  }

  static const CONSTRUCTOR = 'premiumLimitTypeSimilarChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
