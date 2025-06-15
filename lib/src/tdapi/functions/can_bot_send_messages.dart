import '../tdapi.dart';

class CanBotSendMessages extends TdFunction {
  /// Checks whether the specified bot can send messages to the user. Returns a 404 error if can't and the access can be granted by call to allowBotToSendMessages
  const CanBotSendMessages({
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

  CanBotSendMessages copyWith({
    int? botUserId,
  }) {
    return CanBotSendMessages(
      botUserId: botUserId ?? this.botUserId,
    );
  }

  static const CONSTRUCTOR = 'canBotSendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
