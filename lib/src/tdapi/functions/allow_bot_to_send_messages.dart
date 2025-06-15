import '../tdapi.dart';

class AllowBotToSendMessages extends TdFunction {
  /// Allows the specified bot to send messages to the user
  const AllowBotToSendMessages({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }

  AllowBotToSendMessages copyWith({
    int? botUserId,
  }) {
    return AllowBotToSendMessages(
      botUserId: botUserId ?? this.botUserId,
    );
  }

  static const CONSTRUCTOR = 'allowBotToSendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
