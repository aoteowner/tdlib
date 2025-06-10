part of '../tdapi.dart';

class CreateChatSubscriptionInviteLink extends TdFunction {

  /// Creates a new subscription invite link for a channel chat. Requires can_invite_users right in the chat
  const CreateChatSubscriptionInviteLink({
    required this.chatId,
    required this.name,
    required this.subscriptionPricing,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [subscriptionPricing] Information about subscription plan that will be applied to the users joining the chat via the link.. Subscription period must be 2592000 in production environment, and 60 or 300 if Telegram test environment is used
  final StarSubscriptionPricing subscriptionPricing;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "name": name,
      "subscription_pricing": subscriptionPricing.toJson(),
      "@extra": extra,
    };
  }
  
  CreateChatSubscriptionInviteLink copyWith({
    int? chatId,
    String? name,
    StarSubscriptionPricing? subscriptionPricing,
  }) => CreateChatSubscriptionInviteLink(
    chatId: chatId ?? this.chatId,
    name: name ?? this.name,
    subscriptionPricing: subscriptionPricing ?? this.subscriptionPricing,
  );

  static const CONSTRUCTOR = 'createChatSubscriptionInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
