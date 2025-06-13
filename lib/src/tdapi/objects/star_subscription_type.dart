import '../tdapi.dart';

class StarSubscriptionType extends TdObject {

  /// Describes type of subscription paid in Telegram Stars
  const StarSubscriptionType();
  
  /// a StarSubscriptionType return type can be :
  /// * [StarSubscriptionTypeChannel]
  /// * [StarSubscriptionTypeBot]
  factory StarSubscriptionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StarSubscriptionTypeChannel.CONSTRUCTOR:
        return StarSubscriptionTypeChannel.fromJson(json);
      case StarSubscriptionTypeBot.CONSTRUCTOR:
        return StarSubscriptionTypeBot.fromJson(json);
      default:
        return const StarSubscriptionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StarSubscriptionType copyWith() => const StarSubscriptionType();

  static const CONSTRUCTOR = 'starSubscriptionType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarSubscriptionTypeChannel extends StarSubscriptionType {

  /// Describes a subscription to a channel chat
  const StarSubscriptionTypeChannel({
    required this.canReuse,
    required this.inviteLink,
  });
  
  /// [canReuse] True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again
  final bool canReuse;

  /// [inviteLink] The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore
  final String inviteLink;
  
  /// Parse from a json
  factory StarSubscriptionTypeChannel.fromJson(Map<String, dynamic> json) => StarSubscriptionTypeChannel(
    canReuse: json['can_reuse'] ?? false,
    inviteLink: json['invite_link'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_reuse": canReuse,
      "invite_link": inviteLink,
    };
  }
  
  @override
  StarSubscriptionTypeChannel copyWith({
    bool? canReuse,
    String? inviteLink,
  }) => StarSubscriptionTypeChannel(
    canReuse: canReuse ?? this.canReuse,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const CONSTRUCTOR = 'starSubscriptionTypeChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StarSubscriptionTypeBot extends StarSubscriptionType {

  /// Describes a subscription in a bot or a business account
  const StarSubscriptionTypeBot({
    required this.isCanceledByBot,
    required this.title,
    required this.photo,
    required this.invoiceLink,
  });
  
  /// [isCanceledByBot] True, if the subscription was canceled by the bot and can't be extended
  final bool isCanceledByBot;

  /// [title] Subscription invoice title
  final String title;

  /// [photo] Subscription invoice photo
  final Photo photo;

  /// [invoiceLink] The link to the subscription invoice
  final String invoiceLink;
  
  /// Parse from a json
  factory StarSubscriptionTypeBot.fromJson(Map<String, dynamic> json) => StarSubscriptionTypeBot(
    isCanceledByBot: json['is_canceled_by_bot'] ?? false,
    title: json['title'] ?? '',
    photo: Photo.fromJson(json['photo'] ?? {}),
    invoiceLink: json['invoice_link'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_canceled_by_bot": isCanceledByBot,
      "title": title,
      "photo": photo.toJson(),
      "invoice_link": invoiceLink,
    };
  }
  
  @override
  StarSubscriptionTypeBot copyWith({
    bool? isCanceledByBot,
    String? title,
    Photo? photo,
    String? invoiceLink,
  }) => StarSubscriptionTypeBot(
    isCanceledByBot: isCanceledByBot ?? this.isCanceledByBot,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    invoiceLink: invoiceLink ?? this.invoiceLink,
  );

  static const CONSTRUCTOR = 'starSubscriptionTypeBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
