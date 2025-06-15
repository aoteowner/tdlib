import '../tdapi.dart';

class AffiliateType extends TdObject {
  /// Describes type of affiliate for an affiliate program
  const AffiliateType();

  factory AffiliateType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AffiliateTypeCurrentUser.CONSTRUCTOR:
        return AffiliateTypeCurrentUser.fromJson(json);
      case AffiliateTypeBot.CONSTRUCTOR:
        return AffiliateTypeBot.fromJson(json);
      case AffiliateTypeChannel.CONSTRUCTOR:
        return AffiliateTypeChannel.fromJson(json);
      default:
        return const AffiliateType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AffiliateType copyWith() {
    return const AffiliateType();
  }

  static const CONSTRUCTOR = 'affiliateType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateTypeCurrentUser extends AffiliateType {
  /// The affiliate is the current user
  const AffiliateTypeCurrentUser();

  factory AffiliateTypeCurrentUser.fromJson(Map<String, dynamic> json) =>
      const AffiliateTypeCurrentUser();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AffiliateTypeCurrentUser copyWith() {
    return const AffiliateTypeCurrentUser();
  }

  static const CONSTRUCTOR = 'affiliateTypeCurrentUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateTypeBot extends AffiliateType {
  /// The affiliate is a bot owned by the current user
  const AffiliateTypeBot({
    required this.userId,
  });

  /// [userId] User identifier of the bot
  final int userId;

  factory AffiliateTypeBot.fromJson(Map<String, dynamic> json) =>
      AffiliateTypeBot(
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  AffiliateTypeBot copyWith({
    int? userId,
  }) {
    return AffiliateTypeBot(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'affiliateTypeBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AffiliateTypeChannel extends AffiliateType {
  /// The affiliate is a channel chat where the current user has can_post_messages administrator right
  const AffiliateTypeChannel({
    required this.chatId,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  factory AffiliateTypeChannel.fromJson(Map<String, dynamic> json) =>
      AffiliateTypeChannel(
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
  AffiliateTypeChannel copyWith({
    int? chatId,
  }) {
    return AffiliateTypeChannel(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'affiliateTypeChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
