import '../tdapi.dart';

class RemoveMessageSenderBotVerification extends TdFunction {
  /// Removes the verification status of a user or a chat by an owned bot
  const RemoveMessageSenderBotVerification({
    required this.botUserId,
    required this.verifiedId,
  });

  /// [botUserId] Identifier of the owned bot, which verified the user or the chat
  final int botUserId;

  /// [verifiedId] Identifier of the user or the supergroup or channel chat, which verification is removed
  final MessageSender verifiedId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "verified_id": verifiedId.toJson(),
      "@extra": extra,
    };
  }

  RemoveMessageSenderBotVerification copyWith({
    int? botUserId,
    MessageSender? verifiedId,
  }) {
    return RemoveMessageSenderBotVerification(
      botUserId: botUserId ?? this.botUserId,
      verifiedId: verifiedId ?? this.verifiedId,
    );
  }

  static const CONSTRUCTOR = 'removeMessageSenderBotVerification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
