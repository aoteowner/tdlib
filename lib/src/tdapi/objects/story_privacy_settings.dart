import '../tdapi.dart';

class StoryPrivacySettings extends TdObject {
  /// Describes privacy settings of a story
  const StoryPrivacySettings();

  factory StoryPrivacySettings.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryPrivacySettingsEveryone.CONSTRUCTOR:
        return StoryPrivacySettingsEveryone.fromJson(json);
      case StoryPrivacySettingsContacts.CONSTRUCTOR:
        return StoryPrivacySettingsContacts.fromJson(json);
      case StoryPrivacySettingsCloseFriends.CONSTRUCTOR:
        return StoryPrivacySettingsCloseFriends.fromJson(json);
      case StoryPrivacySettingsSelectedUsers.CONSTRUCTOR:
        return StoryPrivacySettingsSelectedUsers.fromJson(json);
      default:
        return const StoryPrivacySettings();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryPrivacySettings copyWith() {
    return const StoryPrivacySettings();
  }

  static const CONSTRUCTOR = 'storyPrivacySettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsEveryone extends StoryPrivacySettings {
  /// The story can be viewed by everyone
  const StoryPrivacySettingsEveryone({
    required this.exceptUserIds,
  });

  /// [exceptUserIds] Identifiers of the users that can't see the story; always unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  factory StoryPrivacySettingsEveryone.fromJson(Map<String, dynamic> json) =>
      StoryPrivacySettingsEveryone(
        exceptUserIds: json['except_user_ids'] == null
            ? <int>[]
            : (json['except_user_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "except_user_ids": exceptUserIds,
    };
  }

  @override
  StoryPrivacySettingsEveryone copyWith({
    List<int>? exceptUserIds,
  }) {
    return StoryPrivacySettingsEveryone(
      exceptUserIds: exceptUserIds ?? this.exceptUserIds,
    );
  }

  static const CONSTRUCTOR = 'storyPrivacySettingsEveryone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsContacts extends StoryPrivacySettings {
  /// The story can be viewed by all contacts except chosen users
  const StoryPrivacySettingsContacts({
    required this.exceptUserIds,
  });

  /// [exceptUserIds] User identifiers of the contacts that can't see the story; always unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  factory StoryPrivacySettingsContacts.fromJson(Map<String, dynamic> json) =>
      StoryPrivacySettingsContacts(
        exceptUserIds: json['except_user_ids'] == null
            ? <int>[]
            : (json['except_user_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "except_user_ids": exceptUserIds,
    };
  }

  @override
  StoryPrivacySettingsContacts copyWith({
    List<int>? exceptUserIds,
  }) {
    return StoryPrivacySettingsContacts(
      exceptUserIds: exceptUserIds ?? this.exceptUserIds,
    );
  }

  static const CONSTRUCTOR = 'storyPrivacySettingsContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsCloseFriends extends StoryPrivacySettings {
  /// The story can be viewed by all close friends
  const StoryPrivacySettingsCloseFriends();

  factory StoryPrivacySettingsCloseFriends.fromJson(
          Map<String, dynamic> json) =>
      const StoryPrivacySettingsCloseFriends();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryPrivacySettingsCloseFriends copyWith() {
    return const StoryPrivacySettingsCloseFriends();
  }

  static const CONSTRUCTOR = 'storyPrivacySettingsCloseFriends';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsSelectedUsers extends StoryPrivacySettings {
  /// The story can be viewed by certain specified users
  const StoryPrivacySettingsSelectedUsers({
    required this.userIds,
  });

  /// [userIds] Identifiers of the users; always unknown and empty for non-owned stories
  final List<int> userIds;

  factory StoryPrivacySettingsSelectedUsers.fromJson(
          Map<String, dynamic> json) =>
      StoryPrivacySettingsSelectedUsers(
        userIds: json['user_ids'] == null
            ? <int>[]
            : (json['user_ids'] as List).map((e) => (e ?? 0) as int).toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds,
    };
  }

  @override
  StoryPrivacySettingsSelectedUsers copyWith({
    List<int>? userIds,
  }) {
    return StoryPrivacySettingsSelectedUsers(
      userIds: userIds ?? this.userIds,
    );
  }

  static const CONSTRUCTOR = 'storyPrivacySettingsSelectedUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
