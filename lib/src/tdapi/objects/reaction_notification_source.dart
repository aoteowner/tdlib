import '../tdapi.dart';

class ReactionNotificationSource extends TdObject {
  /// Describes sources of reactions for which notifications will be shown
  const ReactionNotificationSource();

  factory ReactionNotificationSource.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReactionNotificationSourceNone.CONSTRUCTOR:
        return ReactionNotificationSourceNone.fromJson(json);
      case ReactionNotificationSourceContacts.CONSTRUCTOR:
        return ReactionNotificationSourceContacts.fromJson(json);
      case ReactionNotificationSourceAll.CONSTRUCTOR:
        return ReactionNotificationSourceAll.fromJson(json);
      default:
        return const ReactionNotificationSource();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ReactionNotificationSource copyWith() {
    return const ReactionNotificationSource();
  }

  static const CONSTRUCTOR = 'reactionNotificationSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReactionNotificationSourceNone extends ReactionNotificationSource {
  /// Notifications for reactions are disabled
  const ReactionNotificationSourceNone();

  factory ReactionNotificationSourceNone.fromJson(Map<String, dynamic> json) =>
      const ReactionNotificationSourceNone();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReactionNotificationSourceNone copyWith() {
    return const ReactionNotificationSourceNone();
  }

  static const CONSTRUCTOR = 'reactionNotificationSourceNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReactionNotificationSourceContacts extends ReactionNotificationSource {
  /// Notifications for reactions are shown only for reactions from contacts
  const ReactionNotificationSourceContacts();

  factory ReactionNotificationSourceContacts.fromJson(
          Map<String, dynamic> json) =>
      const ReactionNotificationSourceContacts();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReactionNotificationSourceContacts copyWith() {
    return const ReactionNotificationSourceContacts();
  }

  static const CONSTRUCTOR = 'reactionNotificationSourceContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReactionNotificationSourceAll extends ReactionNotificationSource {
  /// Notifications for reactions are shown for all reactions
  const ReactionNotificationSourceAll();

  factory ReactionNotificationSourceAll.fromJson(Map<String, dynamic> json) =>
      const ReactionNotificationSourceAll();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReactionNotificationSourceAll copyWith() {
    return const ReactionNotificationSourceAll();
  }

  static const CONSTRUCTOR = 'reactionNotificationSourceAll';

  @override
  String getConstructor() => CONSTRUCTOR;
}
