import '../tdapi.dart';

class GiveawayParticipantStatus extends TdObject {
  /// Contains information about status of a user in a giveaway
  const GiveawayParticipantStatus();

  factory GiveawayParticipantStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case GiveawayParticipantStatusEligible.CONSTRUCTOR:
        return GiveawayParticipantStatusEligible.fromJson(json);
      case GiveawayParticipantStatusParticipating.CONSTRUCTOR:
        return GiveawayParticipantStatusParticipating.fromJson(json);
      case GiveawayParticipantStatusAlreadyWasMember.CONSTRUCTOR:
        return GiveawayParticipantStatusAlreadyWasMember.fromJson(json);
      case GiveawayParticipantStatusAdministrator.CONSTRUCTOR:
        return GiveawayParticipantStatusAdministrator.fromJson(json);
      case GiveawayParticipantStatusDisallowedCountry.CONSTRUCTOR:
        return GiveawayParticipantStatusDisallowedCountry.fromJson(json);
      default:
        return const GiveawayParticipantStatus();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  GiveawayParticipantStatus copyWith() {
    return const GiveawayParticipantStatus();
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayParticipantStatusEligible extends GiveawayParticipantStatus {
  /// The user is eligible for the giveaway
  const GiveawayParticipantStatusEligible();

  factory GiveawayParticipantStatusEligible.fromJson(
          Map<String, dynamic> json) =>
      const GiveawayParticipantStatusEligible();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GiveawayParticipantStatusEligible copyWith() {
    return const GiveawayParticipantStatusEligible();
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatusEligible';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayParticipantStatusParticipating extends GiveawayParticipantStatus {
  /// The user participates in the giveaway
  const GiveawayParticipantStatusParticipating();

  factory GiveawayParticipantStatusParticipating.fromJson(
          Map<String, dynamic> json) =>
      const GiveawayParticipantStatusParticipating();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  GiveawayParticipantStatusParticipating copyWith() {
    return const GiveawayParticipantStatusParticipating();
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatusParticipating';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayParticipantStatusAlreadyWasMember
    extends GiveawayParticipantStatus {
  /// The user can't participate in the giveaway, because they have already been member of the chat
  const GiveawayParticipantStatusAlreadyWasMember({
    required this.joinedChatDate,
  });

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the chat
  final int joinedChatDate;

  factory GiveawayParticipantStatusAlreadyWasMember.fromJson(
          Map<String, dynamic> json) =>
      GiveawayParticipantStatusAlreadyWasMember(
        joinedChatDate: json['joined_chat_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "joined_chat_date": joinedChatDate,
    };
  }

  @override
  GiveawayParticipantStatusAlreadyWasMember copyWith({
    int? joinedChatDate,
  }) {
    return GiveawayParticipantStatusAlreadyWasMember(
      joinedChatDate: joinedChatDate ?? this.joinedChatDate,
    );
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatusAlreadyWasMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayParticipantStatusAdministrator extends GiveawayParticipantStatus {
  /// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway
  const GiveawayParticipantStatusAdministrator({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat administered by the user
  final int chatId;

  factory GiveawayParticipantStatusAdministrator.fromJson(
          Map<String, dynamic> json) =>
      GiveawayParticipantStatusAdministrator(
        chatId: json['chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  GiveawayParticipantStatusAdministrator copyWith({
    int? chatId,
  }) {
    return GiveawayParticipantStatusAdministrator(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatusAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class GiveawayParticipantStatusDisallowedCountry
    extends GiveawayParticipantStatus {
  /// The user can't participate in the giveaway, because they phone number is from a disallowed country
  const GiveawayParticipantStatusDisallowedCountry({
    required this.userCountryCode,
  });

  /// [userCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's country
  final String userCountryCode;

  factory GiveawayParticipantStatusDisallowedCountry.fromJson(
          Map<String, dynamic> json) =>
      GiveawayParticipantStatusDisallowedCountry(
        userCountryCode: json['user_country_code'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_country_code": userCountryCode,
    };
  }

  @override
  GiveawayParticipantStatusDisallowedCountry copyWith({
    String? userCountryCode,
  }) {
    return GiveawayParticipantStatusDisallowedCountry(
      userCountryCode: userCountryCode ?? this.userCountryCode,
    );
  }

  static const CONSTRUCTOR = 'giveawayParticipantStatusDisallowedCountry';

  @override
  String getConstructor() => CONSTRUCTOR;
}
