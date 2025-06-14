import '../tdapi.dart';

class PremiumStoryFeature extends TdObject {
  /// Describes a story feature available to Premium users
  const PremiumStoryFeature();

  factory PremiumStoryFeature.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumStoryFeaturePriorityOrder.CONSTRUCTOR:
        return PremiumStoryFeaturePriorityOrder.fromJson(json);
      case PremiumStoryFeatureStealthMode.CONSTRUCTOR:
        return PremiumStoryFeatureStealthMode.fromJson(json);
      case PremiumStoryFeaturePermanentViewsHistory.CONSTRUCTOR:
        return PremiumStoryFeaturePermanentViewsHistory.fromJson(json);
      case PremiumStoryFeatureCustomExpirationDuration.CONSTRUCTOR:
        return PremiumStoryFeatureCustomExpirationDuration.fromJson(json);
      case PremiumStoryFeatureSaveStories.CONSTRUCTOR:
        return PremiumStoryFeatureSaveStories.fromJson(json);
      case PremiumStoryFeatureLinksAndFormatting.CONSTRUCTOR:
        return PremiumStoryFeatureLinksAndFormatting.fromJson(json);
      case PremiumStoryFeatureVideoQuality.CONSTRUCTOR:
        return PremiumStoryFeatureVideoQuality.fromJson(json);
      default:
        return const PremiumStoryFeature();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PremiumStoryFeature copyWith() {
    return const PremiumStoryFeature();
  }

  static const CONSTRUCTOR = 'premiumStoryFeature';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeaturePriorityOrder extends PremiumStoryFeature {
  /// Stories of the current user are displayed before stories of non-Premium contacts, supergroups, and channels
  const PremiumStoryFeaturePriorityOrder();

  factory PremiumStoryFeaturePriorityOrder.fromJson(
          Map<String, dynamic> json) =>
      const PremiumStoryFeaturePriorityOrder();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeaturePriorityOrder copyWith() {
    return const PremiumStoryFeaturePriorityOrder();
  }

  static const CONSTRUCTOR = 'premiumStoryFeaturePriorityOrder';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeatureStealthMode extends PremiumStoryFeature {
  /// The ability to hide the fact that the user viewed other's stories
  const PremiumStoryFeatureStealthMode();

  factory PremiumStoryFeatureStealthMode.fromJson(Map<String, dynamic> json) =>
      const PremiumStoryFeatureStealthMode();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeatureStealthMode copyWith() {
    return const PremiumStoryFeatureStealthMode();
  }

  static const CONSTRUCTOR = 'premiumStoryFeatureStealthMode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeaturePermanentViewsHistory extends PremiumStoryFeature {
  /// The ability to check who opened the current user's stories after they expire
  const PremiumStoryFeaturePermanentViewsHistory();

  factory PremiumStoryFeaturePermanentViewsHistory.fromJson(
          Map<String, dynamic> json) =>
      const PremiumStoryFeaturePermanentViewsHistory();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeaturePermanentViewsHistory copyWith() {
    return const PremiumStoryFeaturePermanentViewsHistory();
  }

  static const CONSTRUCTOR = 'premiumStoryFeaturePermanentViewsHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeatureCustomExpirationDuration extends PremiumStoryFeature {
  /// The ability to set custom expiration duration for stories
  const PremiumStoryFeatureCustomExpirationDuration();

  factory PremiumStoryFeatureCustomExpirationDuration.fromJson(
          Map<String, dynamic> json) =>
      const PremiumStoryFeatureCustomExpirationDuration();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeatureCustomExpirationDuration copyWith() {
    return const PremiumStoryFeatureCustomExpirationDuration();
  }

  static const CONSTRUCTOR = 'premiumStoryFeatureCustomExpirationDuration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeatureSaveStories extends PremiumStoryFeature {
  /// The ability to save other's unprotected stories
  const PremiumStoryFeatureSaveStories();

  factory PremiumStoryFeatureSaveStories.fromJson(Map<String, dynamic> json) =>
      const PremiumStoryFeatureSaveStories();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeatureSaveStories copyWith() {
    return const PremiumStoryFeatureSaveStories();
  }

  static const CONSTRUCTOR = 'premiumStoryFeatureSaveStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeatureLinksAndFormatting extends PremiumStoryFeature {
  /// The ability to use links and formatting in story caption, and use inputStoryAreaTypeLink areas
  const PremiumStoryFeatureLinksAndFormatting();

  factory PremiumStoryFeatureLinksAndFormatting.fromJson(
          Map<String, dynamic> json) =>
      const PremiumStoryFeatureLinksAndFormatting();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeatureLinksAndFormatting copyWith() {
    return const PremiumStoryFeatureLinksAndFormatting();
  }

  static const CONSTRUCTOR = 'premiumStoryFeatureLinksAndFormatting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumStoryFeatureVideoQuality extends PremiumStoryFeature {
  /// The ability to choose better quality for viewed stories
  const PremiumStoryFeatureVideoQuality();

  factory PremiumStoryFeatureVideoQuality.fromJson(Map<String, dynamic> json) =>
      const PremiumStoryFeatureVideoQuality();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumStoryFeatureVideoQuality copyWith() {
    return const PremiumStoryFeatureVideoQuality();
  }

  static const CONSTRUCTOR = 'premiumStoryFeatureVideoQuality';

  @override
  String getConstructor() => CONSTRUCTOR;
}
