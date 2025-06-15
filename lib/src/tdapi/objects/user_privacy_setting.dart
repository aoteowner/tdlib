import '../tdapi.dart';

class UserPrivacySetting extends TdObject {
  /// Describes available user privacy settings
  const UserPrivacySetting();

  factory UserPrivacySetting.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingShowBio.CONSTRUCTOR:
        return UserPrivacySettingShowBio.fromJson(json);
      case UserPrivacySettingShowBirthdate.CONSTRUCTOR:
        return UserPrivacySettingShowBirthdate.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.CONSTRUCTOR:
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(
            json);
      case UserPrivacySettingAutosaveGifts.CONSTRUCTOR:
        return UserPrivacySettingAutosaveGifts.fromJson(json);
      case UserPrivacySettingAllowUnpaidMessages.CONSTRUCTOR:
        return UserPrivacySettingAllowUnpaidMessages.fromJson(json);
      default:
        return const UserPrivacySetting();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  UserPrivacySetting copyWith() {
    return const UserPrivacySetting();
  }

  static const CONSTRUCTOR = 'userPrivacySetting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowStatus extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's online status is visible
  const UserPrivacySettingShowStatus();

  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) =>
      const UserPrivacySettingShowStatus();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowStatus copyWith() {
    return const UserPrivacySettingShowStatus();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's profile photo is visible
  const UserPrivacySettingShowProfilePhoto();

  factory UserPrivacySettingShowProfilePhoto.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingShowProfilePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowProfilePhoto copyWith() {
    return const UserPrivacySettingShowProfilePhoto();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
  const UserPrivacySettingShowLinkInForwardedMessages();

  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingShowLinkInForwardedMessages();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowLinkInForwardedMessages copyWith() {
    return const UserPrivacySettingShowLinkInForwardedMessages();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's phone number is visible
  const UserPrivacySettingShowPhoneNumber();

  factory UserPrivacySettingShowPhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingShowPhoneNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowPhoneNumber copyWith() {
    return const UserPrivacySettingShowPhoneNumber();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowBio extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's bio is visible
  const UserPrivacySettingShowBio();

  factory UserPrivacySettingShowBio.fromJson(Map<String, dynamic> json) =>
      const UserPrivacySettingShowBio();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowBio copyWith() {
    return const UserPrivacySettingShowBio();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowBio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowBirthdate extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's birthdate is visible
  const UserPrivacySettingShowBirthdate();

  factory UserPrivacySettingShowBirthdate.fromJson(Map<String, dynamic> json) =>
      const UserPrivacySettingShowBirthdate();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingShowBirthdate copyWith() {
    return const UserPrivacySettingShowBirthdate();
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowBirthdate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be invited to chats
  const UserPrivacySettingAllowChatInvites();

  factory UserPrivacySettingAllowChatInvites.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingAllowChatInvites();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowChatInvites copyWith() {
    return const UserPrivacySettingAllowChatInvites();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be called
  const UserPrivacySettingAllowCalls();

  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) =>
      const UserPrivacySettingAllowCalls();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowCalls copyWith() {
    return const UserPrivacySettingAllowCalls();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls
  const UserPrivacySettingAllowPeerToPeerCalls();

  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingAllowPeerToPeerCalls();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowPeerToPeerCalls copyWith() {
    return const UserPrivacySettingAllowPeerToPeerCalls();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
  const UserPrivacySettingAllowFindingByPhoneNumber();

  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingAllowFindingByPhoneNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowFindingByPhoneNumber copyWith() {
    return const UserPrivacySettingAllowFindingByPhoneNumber();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
    extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can receive voice and video messages in private chats; for Telegram Premium users only
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  factory UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages copyWith() {
    return const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  }

  static const CONSTRUCTOR =
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAutosaveGifts extends UserPrivacySetting {
  /// A privacy setting for managing whether received gifts are automatically shown on the user's profile page
  const UserPrivacySettingAutosaveGifts();

  factory UserPrivacySettingAutosaveGifts.fromJson(Map<String, dynamic> json) =>
      const UserPrivacySettingAutosaveGifts();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAutosaveGifts copyWith() {
    return const UserPrivacySettingAutosaveGifts();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAutosaveGifts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowUnpaidMessages extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can receive messages without additional payment
  const UserPrivacySettingAllowUnpaidMessages();

  factory UserPrivacySettingAllowUnpaidMessages.fromJson(
          Map<String, dynamic> json) =>
      const UserPrivacySettingAllowUnpaidMessages();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  UserPrivacySettingAllowUnpaidMessages copyWith() {
    return const UserPrivacySettingAllowUnpaidMessages();
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowUnpaidMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
