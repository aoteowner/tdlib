import '../tdapi.dart';

class SuggestedAction extends TdObject {
  /// Describes an action suggested to the current user
  const SuggestedAction();

  factory SuggestedAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.CONSTRUCTOR:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.CONSTRUCTOR:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.CONSTRUCTOR:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.CONSTRUCTOR:
        return SuggestedActionSetPassword.fromJson(json);
      case SuggestedActionUpgradePremium.CONSTRUCTOR:
        return SuggestedActionUpgradePremium.fromJson(json);
      case SuggestedActionRestorePremium.CONSTRUCTOR:
        return SuggestedActionRestorePremium.fromJson(json);
      case SuggestedActionSubscribeToAnnualPremium.CONSTRUCTOR:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);
      case SuggestedActionGiftPremiumForChristmas.CONSTRUCTOR:
        return SuggestedActionGiftPremiumForChristmas.fromJson(json);
      case SuggestedActionSetBirthdate.CONSTRUCTOR:
        return SuggestedActionSetBirthdate.fromJson(json);
      case SuggestedActionSetProfilePhoto.CONSTRUCTOR:
        return SuggestedActionSetProfilePhoto.fromJson(json);
      case SuggestedActionExtendPremium.CONSTRUCTOR:
        return SuggestedActionExtendPremium.fromJson(json);
      case SuggestedActionExtendStarSubscriptions.CONSTRUCTOR:
        return SuggestedActionExtendStarSubscriptions.fromJson(json);
      case SuggestedActionCustom.CONSTRUCTOR:
        return SuggestedActionCustom.fromJson(json);
      default:
        return const SuggestedAction();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SuggestedAction copyWith() {
    return const SuggestedAction();
  }

  static const CONSTRUCTOR = 'suggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  /// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings
  const SuggestedActionEnableArchiveAndMuteNewChats();

  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionEnableArchiveAndMuteNewChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionEnableArchiveAndMuteNewChats copyWith() {
    return const SuggestedActionEnableArchiveAndMuteNewChats();
  }

  static const CONSTRUCTOR = 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCheckPassword extends SuggestedAction {
  /// Suggests the user to check whether they still remember their 2-step verification password
  const SuggestedActionCheckPassword();

  factory SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionCheckPassword();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionCheckPassword copyWith() {
    return const SuggestedActionCheckPassword();
  }

  static const CONSTRUCTOR = 'suggestedActionCheckPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
  const SuggestedActionCheckPhoneNumber();

  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionCheckPhoneNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionCheckPhoneNumber copyWith() {
    return const SuggestedActionCheckPhoneNumber();
  }

  static const CONSTRUCTOR = 'suggestedActionCheckPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionViewChecksHint extends SuggestedAction {
  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
  const SuggestedActionViewChecksHint();

  factory SuggestedActionViewChecksHint.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionViewChecksHint();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionViewChecksHint copyWith() {
    return const SuggestedActionViewChecksHint();
  }

  static const CONSTRUCTOR = 'suggestedActionViewChecksHint';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  /// Suggests the user to convert specified supergroup to a broadcast group
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  factory SuggestedActionConvertToBroadcastGroup.fromJson(
          Map<String, dynamic> json) =>
      SuggestedActionConvertToBroadcastGroup(
        supergroupId: json['supergroup_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
    };
  }

  @override
  SuggestedActionConvertToBroadcastGroup copyWith({
    int? supergroupId,
  }) {
    return SuggestedActionConvertToBroadcastGroup(
      supergroupId: supergroupId ?? this.supergroupId,
    );
  }

  static const CONSTRUCTOR = 'suggestedActionConvertToBroadcastGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSetPassword extends SuggestedAction {
  /// Suggests the user to set a 2-step verification password to be able to log in again
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });

  /// [authorizationDelay] The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons
  final int authorizationDelay;

  factory SuggestedActionSetPassword.fromJson(Map<String, dynamic> json) =>
      SuggestedActionSetPassword(
        authorizationDelay: json['authorization_delay'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_delay": authorizationDelay,
    };
  }

  @override
  SuggestedActionSetPassword copyWith({
    int? authorizationDelay,
  }) {
    return SuggestedActionSetPassword(
      authorizationDelay: authorizationDelay ?? this.authorizationDelay,
    );
  }

  static const CONSTRUCTOR = 'suggestedActionSetPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionUpgradePremium extends SuggestedAction {
  /// Suggests the user to upgrade the Premium subscription from monthly payments to annual payments
  const SuggestedActionUpgradePremium();

  factory SuggestedActionUpgradePremium.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionUpgradePremium();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionUpgradePremium copyWith() {
    return const SuggestedActionUpgradePremium();
  }

  static const CONSTRUCTOR = 'suggestedActionUpgradePremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionRestorePremium extends SuggestedAction {
  /// Suggests the user to restore a recently expired Premium subscription
  const SuggestedActionRestorePremium();

  factory SuggestedActionRestorePremium.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionRestorePremium();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionRestorePremium copyWith() {
    return const SuggestedActionRestorePremium();
  }

  static const CONSTRUCTOR = 'suggestedActionRestorePremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSubscribeToAnnualPremium extends SuggestedAction {
  /// Suggests the user to subscribe to the Premium subscription with annual payments
  const SuggestedActionSubscribeToAnnualPremium();

  factory SuggestedActionSubscribeToAnnualPremium.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionSubscribeToAnnualPremium();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionSubscribeToAnnualPremium copyWith() {
    return const SuggestedActionSubscribeToAnnualPremium();
  }

  static const CONSTRUCTOR = 'suggestedActionSubscribeToAnnualPremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionGiftPremiumForChristmas extends SuggestedAction {
  /// Suggests the user to gift Telegram Premium to friends for Christmas
  const SuggestedActionGiftPremiumForChristmas();

  factory SuggestedActionGiftPremiumForChristmas.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionGiftPremiumForChristmas();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionGiftPremiumForChristmas copyWith() {
    return const SuggestedActionGiftPremiumForChristmas();
  }

  static const CONSTRUCTOR = 'suggestedActionGiftPremiumForChristmas';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSetBirthdate extends SuggestedAction {
  /// Suggests the user to set birthdate
  const SuggestedActionSetBirthdate();

  factory SuggestedActionSetBirthdate.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionSetBirthdate();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionSetBirthdate copyWith() {
    return const SuggestedActionSetBirthdate();
  }

  static const CONSTRUCTOR = 'suggestedActionSetBirthdate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionSetProfilePhoto extends SuggestedAction {
  /// Suggests the user to set profile photo
  const SuggestedActionSetProfilePhoto();

  factory SuggestedActionSetProfilePhoto.fromJson(Map<String, dynamic> json) =>
      const SuggestedActionSetProfilePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionSetProfilePhoto copyWith() {
    return const SuggestedActionSetProfilePhoto();
  }

  static const CONSTRUCTOR = 'suggestedActionSetProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionExtendPremium extends SuggestedAction {
  /// Suggests the user to extend their expiring Telegram Premium subscription
  const SuggestedActionExtendPremium({
    required this.managePremiumSubscriptionUrl,
  });

  /// [managePremiumSubscriptionUrl] A URL for managing Telegram Premium subscription
  final String managePremiumSubscriptionUrl;

  factory SuggestedActionExtendPremium.fromJson(Map<String, dynamic> json) =>
      SuggestedActionExtendPremium(
        managePremiumSubscriptionUrl:
            json['manage_premium_subscription_url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "manage_premium_subscription_url": managePremiumSubscriptionUrl,
    };
  }

  @override
  SuggestedActionExtendPremium copyWith({
    String? managePremiumSubscriptionUrl,
  }) {
    return SuggestedActionExtendPremium(
      managePremiumSubscriptionUrl:
          managePremiumSubscriptionUrl ?? this.managePremiumSubscriptionUrl,
    );
  }

  static const CONSTRUCTOR = 'suggestedActionExtendPremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionExtendStarSubscriptions extends SuggestedAction {
  /// Suggests the user to extend their expiring Telegram Star subscriptions. Call getStarSubscriptions with only_expiring == true. to get the number of expiring subscriptions and the number of required to buy Telegram Stars
  const SuggestedActionExtendStarSubscriptions();

  factory SuggestedActionExtendStarSubscriptions.fromJson(
          Map<String, dynamic> json) =>
      const SuggestedActionExtendStarSubscriptions();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SuggestedActionExtendStarSubscriptions copyWith() {
    return const SuggestedActionExtendStarSubscriptions();
  }

  static const CONSTRUCTOR = 'suggestedActionExtendStarSubscriptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCustom extends SuggestedAction {
  /// A custom suggestion to be shown at the top of the chat list
  const SuggestedActionCustom({
    required this.name,
    required this.title,
    required this.description,
    required this.url,
  });

  /// [name] Unique name of the suggestion
  final String name;

  /// [title] Title of the suggestion
  final FormattedText title;

  /// [description] Description of the suggestion
  final FormattedText description;

  /// [url] The link to open when the suggestion is clicked
  final String url;

  factory SuggestedActionCustom.fromJson(Map<String, dynamic> json) =>
      SuggestedActionCustom(
        name: json['name'] ?? '',
        title: FormattedText.fromJson(json['title'] ?? {}),
        description: FormattedText.fromJson(json['description'] ?? {}),
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "title": title.toJson(),
      "description": description.toJson(),
      "url": url,
    };
  }

  @override
  SuggestedActionCustom copyWith({
    String? name,
    FormattedText? title,
    FormattedText? description,
    String? url,
  }) {
    return SuggestedActionCustom(
      name: name ?? this.name,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'suggestedActionCustom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
