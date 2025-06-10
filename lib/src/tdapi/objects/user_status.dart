part of '../tdapi.dart';

class UserStatus extends TdObject {

  /// Describes the last time the user was online
  const UserStatus();
  
  /// a UserStatus return type can be :
  /// * [UserStatusEmpty]
  /// * [UserStatusOnline]
  /// * [UserStatusOffline]
  /// * [UserStatusRecently]
  /// * [UserStatusLastWeek]
  /// * [UserStatusLastMonth]
  factory UserStatus.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserStatusEmpty.CONSTRUCTOR:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.CONSTRUCTOR:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.CONSTRUCTOR:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.CONSTRUCTOR:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.CONSTRUCTOR:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.CONSTRUCTOR:
        return UserStatusLastMonth.fromJson(json);
      default:
        return const UserStatus();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserStatus copyWith() => const UserStatus();

  static const CONSTRUCTOR = 'userStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusEmpty extends UserStatus {

  /// The user's status has never been changed
  const UserStatusEmpty();
  
  /// Parse from a json
  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) => const UserStatusEmpty();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserStatusEmpty copyWith() => const UserStatusEmpty();

  static const CONSTRUCTOR = 'userStatusEmpty';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusOnline extends UserStatus {

  /// The user is online
  const UserStatusOnline({
    required this.expires,
  });
  
  /// [expires] Point in time (Unix timestamp) when the user's online status will expire
  final int expires;
  
  /// Parse from a json
  factory UserStatusOnline.fromJson(Map<String, dynamic> json) => UserStatusOnline(
    expires: json['expires'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "expires": expires,
    };
  }
  
  @override
  UserStatusOnline copyWith({
    int? expires,
  }) => UserStatusOnline(
    expires: expires ?? this.expires,
  );

  static const CONSTRUCTOR = 'userStatusOnline';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusOffline extends UserStatus {

  /// The user is offline
  const UserStatusOffline({
    required this.wasOnline,
  });
  
  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;
  
  /// Parse from a json
  factory UserStatusOffline.fromJson(Map<String, dynamic> json) => UserStatusOffline(
    wasOnline: json['was_online'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "was_online": wasOnline,
    };
  }
  
  @override
  UserStatusOffline copyWith({
    int? wasOnline,
  }) => UserStatusOffline(
    wasOnline: wasOnline ?? this.wasOnline,
  );

  static const CONSTRUCTOR = 'userStatusOffline';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusRecently extends UserStatus {

  /// The user was online recently
  const UserStatusRecently({
    required this.byMyPrivacySettings,
  });
  
  /// [byMyPrivacySettings] Exact user's status is hidden because the current user enabled userPrivacySettingShowStatus privacy setting for the user and has no Telegram Premium
  final bool byMyPrivacySettings;
  
  /// Parse from a json
  factory UserStatusRecently.fromJson(Map<String, dynamic> json) => UserStatusRecently(
    byMyPrivacySettings: json['by_my_privacy_settings'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "by_my_privacy_settings": byMyPrivacySettings,
    };
  }
  
  @override
  UserStatusRecently copyWith({
    bool? byMyPrivacySettings,
  }) => UserStatusRecently(
    byMyPrivacySettings: byMyPrivacySettings ?? this.byMyPrivacySettings,
  );

  static const CONSTRUCTOR = 'userStatusRecently';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusLastWeek extends UserStatus {

  /// The user is offline, but was online last week
  const UserStatusLastWeek({
    required this.byMyPrivacySettings,
  });
  
  /// [byMyPrivacySettings] Exact user's status is hidden because the current user enabled userPrivacySettingShowStatus privacy setting for the user and has no Telegram Premium
  final bool byMyPrivacySettings;
  
  /// Parse from a json
  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) => UserStatusLastWeek(
    byMyPrivacySettings: json['by_my_privacy_settings'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "by_my_privacy_settings": byMyPrivacySettings,
    };
  }
  
  @override
  UserStatusLastWeek copyWith({
    bool? byMyPrivacySettings,
  }) => UserStatusLastWeek(
    byMyPrivacySettings: byMyPrivacySettings ?? this.byMyPrivacySettings,
  );

  static const CONSTRUCTOR = 'userStatusLastWeek';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserStatusLastMonth extends UserStatus {

  /// The user is offline, but was online last month
  const UserStatusLastMonth({
    required this.byMyPrivacySettings,
  });
  
  /// [byMyPrivacySettings] Exact user's status is hidden because the current user enabled userPrivacySettingShowStatus privacy setting for the user and has no Telegram Premium
  final bool byMyPrivacySettings;
  
  /// Parse from a json
  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) => UserStatusLastMonth(
    byMyPrivacySettings: json['by_my_privacy_settings'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "by_my_privacy_settings": byMyPrivacySettings,
    };
  }
  
  @override
  UserStatusLastMonth copyWith({
    bool? byMyPrivacySettings,
  }) => UserStatusLastMonth(
    byMyPrivacySettings: byMyPrivacySettings ?? this.byMyPrivacySettings,
  );

  static const CONSTRUCTOR = 'userStatusLastMonth';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
