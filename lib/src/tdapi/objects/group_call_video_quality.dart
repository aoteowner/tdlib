import '../tdapi.dart';

class GroupCallVideoQuality extends TdObject {
  /// Describes the quality of a group call video
  const GroupCallVideoQuality();

  factory GroupCallVideoQuality.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case GroupCallVideoQualityThumbnail.CONSTRUCTOR:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.CONSTRUCTOR:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.CONSTRUCTOR:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        return const GroupCallVideoQuality();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  GroupCallVideoQuality copyWith() {
    return const GroupCallVideoQuality();
  }

  static const CONSTRUCTOR = 'groupCallVideoQuality';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  /// The worst available video quality
  const GroupCallVideoQualityThumbnail();

  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) =>
      const GroupCallVideoQualityThumbnail();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GroupCallVideoQualityThumbnail copyWith() {
    return const GroupCallVideoQualityThumbnail();
  }

  static const CONSTRUCTOR = 'groupCallVideoQualityThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  /// The medium video quality
  const GroupCallVideoQualityMedium();

  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) =>
      const GroupCallVideoQualityMedium();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GroupCallVideoQualityMedium copyWith() {
    return const GroupCallVideoQualityMedium();
  }

  static const CONSTRUCTOR = 'groupCallVideoQualityMedium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  /// The best available video quality
  const GroupCallVideoQualityFull();

  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) =>
      const GroupCallVideoQualityFull();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GroupCallVideoQualityFull copyWith() {
    return const GroupCallVideoQualityFull();
  }

  static const CONSTRUCTOR = 'groupCallVideoQualityFull';

  @override
  String getConstructor() => CONSTRUCTOR;
}
