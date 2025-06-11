import '../tdapi.dart';

class ChatInviteLinkSubscriptionInfo extends TdObject {

  /// Contains information about subscription plan that must be paid by the user to use a chat invite link
  const ChatInviteLinkSubscriptionInfo({
    required this.pricing,
    required this.canReuse,
    required this.formId,
  });
  
  /// [pricing] Information about subscription plan that must be paid by the user to use the link
  final StarSubscriptionPricing pricing;

  /// [canReuse] True, if the user has already paid for the subscription and can use joinChatByInviteLink to join the subscribed chat again
  final bool canReuse;

  /// [formId] Identifier of the payment form to use for subscription payment; 0 if the subscription can't be paid
  final int formId;
  
  /// Parse from a json
  factory ChatInviteLinkSubscriptionInfo.fromJson(Map<String, dynamic> json) => ChatInviteLinkSubscriptionInfo(
    pricing: StarSubscriptionPricing.fromJson(json['pricing']),
    canReuse: json['can_reuse'],
    formId: int.parse(json['form_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pricing": pricing.toJson(),
      "can_reuse": canReuse,
      "form_id": formId,
    };
  }
  
  ChatInviteLinkSubscriptionInfo copyWith({
    StarSubscriptionPricing? pricing,
    bool? canReuse,
    int? formId,
  }) => ChatInviteLinkSubscriptionInfo(
    pricing: pricing ?? this.pricing,
    canReuse: canReuse ?? this.canReuse,
    formId: formId ?? this.formId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkSubscriptionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
