import '../tdapi.dart';

class BusinessFeature extends TdObject {

  /// Describes a feature available to Business user accounts
  const BusinessFeature();
  
  /// a BusinessFeature return type can be :
  /// * [BusinessFeatureLocation]
  /// * [BusinessFeatureOpeningHours]
  /// * [BusinessFeatureQuickReplies]
  /// * [BusinessFeatureGreetingMessage]
  /// * [BusinessFeatureAwayMessage]
  /// * [BusinessFeatureAccountLinks]
  /// * [BusinessFeatureStartPage]
  /// * [BusinessFeatureBots]
  /// * [BusinessFeatureEmojiStatus]
  /// * [BusinessFeatureChatFolderTags]
  /// * [BusinessFeatureUpgradedStories]
  factory BusinessFeature.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BusinessFeatureLocation.CONSTRUCTOR:
        return BusinessFeatureLocation.fromJson(json);
      case BusinessFeatureOpeningHours.CONSTRUCTOR:
        return BusinessFeatureOpeningHours.fromJson(json);
      case BusinessFeatureQuickReplies.CONSTRUCTOR:
        return BusinessFeatureQuickReplies.fromJson(json);
      case BusinessFeatureGreetingMessage.CONSTRUCTOR:
        return BusinessFeatureGreetingMessage.fromJson(json);
      case BusinessFeatureAwayMessage.CONSTRUCTOR:
        return BusinessFeatureAwayMessage.fromJson(json);
      case BusinessFeatureAccountLinks.CONSTRUCTOR:
        return BusinessFeatureAccountLinks.fromJson(json);
      case BusinessFeatureStartPage.CONSTRUCTOR:
        return BusinessFeatureStartPage.fromJson(json);
      case BusinessFeatureBots.CONSTRUCTOR:
        return BusinessFeatureBots.fromJson(json);
      case BusinessFeatureEmojiStatus.CONSTRUCTOR:
        return BusinessFeatureEmojiStatus.fromJson(json);
      case BusinessFeatureChatFolderTags.CONSTRUCTOR:
        return BusinessFeatureChatFolderTags.fromJson(json);
      case BusinessFeatureUpgradedStories.CONSTRUCTOR:
        return BusinessFeatureUpgradedStories.fromJson(json);
      default:
        return const BusinessFeature();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BusinessFeature copyWith() => const BusinessFeature();

  static const CONSTRUCTOR = 'businessFeature';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureLocation extends BusinessFeature {

  /// The ability to set location
  const BusinessFeatureLocation();
  
  /// Parse from a json
  factory BusinessFeatureLocation.fromJson(Map<String, dynamic> json) => const BusinessFeatureLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureLocation copyWith() => const BusinessFeatureLocation();

  static const CONSTRUCTOR = 'businessFeatureLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureOpeningHours extends BusinessFeature {

  /// The ability to set opening hours
  const BusinessFeatureOpeningHours();
  
  /// Parse from a json
  factory BusinessFeatureOpeningHours.fromJson(Map<String, dynamic> json) => const BusinessFeatureOpeningHours();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureOpeningHours copyWith() => const BusinessFeatureOpeningHours();

  static const CONSTRUCTOR = 'businessFeatureOpeningHours';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureQuickReplies extends BusinessFeature {

  /// The ability to use quick replies
  const BusinessFeatureQuickReplies();
  
  /// Parse from a json
  factory BusinessFeatureQuickReplies.fromJson(Map<String, dynamic> json) => const BusinessFeatureQuickReplies();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureQuickReplies copyWith() => const BusinessFeatureQuickReplies();

  static const CONSTRUCTOR = 'businessFeatureQuickReplies';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureGreetingMessage extends BusinessFeature {

  /// The ability to set up a greeting message
  const BusinessFeatureGreetingMessage();
  
  /// Parse from a json
  factory BusinessFeatureGreetingMessage.fromJson(Map<String, dynamic> json) => const BusinessFeatureGreetingMessage();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureGreetingMessage copyWith() => const BusinessFeatureGreetingMessage();

  static const CONSTRUCTOR = 'businessFeatureGreetingMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureAwayMessage extends BusinessFeature {

  /// The ability to set up an away message
  const BusinessFeatureAwayMessage();
  
  /// Parse from a json
  factory BusinessFeatureAwayMessage.fromJson(Map<String, dynamic> json) => const BusinessFeatureAwayMessage();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureAwayMessage copyWith() => const BusinessFeatureAwayMessage();

  static const CONSTRUCTOR = 'businessFeatureAwayMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureAccountLinks extends BusinessFeature {

  /// The ability to create links to the business account with predefined message text
  const BusinessFeatureAccountLinks();
  
  /// Parse from a json
  factory BusinessFeatureAccountLinks.fromJson(Map<String, dynamic> json) => const BusinessFeatureAccountLinks();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureAccountLinks copyWith() => const BusinessFeatureAccountLinks();

  static const CONSTRUCTOR = 'businessFeatureAccountLinks';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureStartPage extends BusinessFeature {

  /// The ability to customize start page
  const BusinessFeatureStartPage();
  
  /// Parse from a json
  factory BusinessFeatureStartPage.fromJson(Map<String, dynamic> json) => const BusinessFeatureStartPage();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureStartPage copyWith() => const BusinessFeatureStartPage();

  static const CONSTRUCTOR = 'businessFeatureStartPage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureBots extends BusinessFeature {

  /// The ability to connect a bot to the account
  const BusinessFeatureBots();
  
  /// Parse from a json
  factory BusinessFeatureBots.fromJson(Map<String, dynamic> json) => const BusinessFeatureBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureBots copyWith() => const BusinessFeatureBots();

  static const CONSTRUCTOR = 'businessFeatureBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureEmojiStatus extends BusinessFeature {

  /// The ability to show an emoji status along with the business name
  const BusinessFeatureEmojiStatus();
  
  /// Parse from a json
  factory BusinessFeatureEmojiStatus.fromJson(Map<String, dynamic> json) => const BusinessFeatureEmojiStatus();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureEmojiStatus copyWith() => const BusinessFeatureEmojiStatus();

  static const CONSTRUCTOR = 'businessFeatureEmojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureChatFolderTags extends BusinessFeature {

  /// The ability to display folder names for each chat in the chat list
  const BusinessFeatureChatFolderTags();
  
  /// Parse from a json
  factory BusinessFeatureChatFolderTags.fromJson(Map<String, dynamic> json) => const BusinessFeatureChatFolderTags();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureChatFolderTags copyWith() => const BusinessFeatureChatFolderTags();

  static const CONSTRUCTOR = 'businessFeatureChatFolderTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BusinessFeatureUpgradedStories extends BusinessFeature {

  /// Allowed to use many additional features for stories
  const BusinessFeatureUpgradedStories();
  
  /// Parse from a json
  factory BusinessFeatureUpgradedStories.fromJson(Map<String, dynamic> json) => const BusinessFeatureUpgradedStories();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BusinessFeatureUpgradedStories copyWith() => const BusinessFeatureUpgradedStories();

  static const CONSTRUCTOR = 'businessFeatureUpgradedStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
