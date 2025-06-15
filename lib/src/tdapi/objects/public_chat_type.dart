import '../tdapi.dart';

class PublicChatType extends TdObject {
  /// Describes type of public chat
  const PublicChatType();

  factory PublicChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return const PublicChatType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PublicChatType copyWith() {
    return const PublicChatType();
  }

  static const CONSTRUCTOR = 'publicChatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeHasUsername extends PublicChatType {
  /// The chat is public, because it has an active username
  const PublicChatTypeHasUsername();

  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) =>
      const PublicChatTypeHasUsername();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PublicChatTypeHasUsername copyWith() {
    return const PublicChatTypeHasUsername();
  }

  static const CONSTRUCTOR = 'publicChatTypeHasUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PublicChatTypeIsLocationBased extends PublicChatType {
  /// The chat is public, because it is a location-based supergroup
  const PublicChatTypeIsLocationBased();

  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) =>
      const PublicChatTypeIsLocationBased();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PublicChatTypeIsLocationBased copyWith() {
    return const PublicChatTypeIsLocationBased();
  }

  static const CONSTRUCTOR = 'publicChatTypeIsLocationBased';

  @override
  String getConstructor() => CONSTRUCTOR;
}
