import '../tdapi.dart';

class OpenBotSimilarBot extends TdFunction {
  /// Informs TDLib that a bot was opened from the list of similar bots
  const OpenBotSimilarBot({
    required this.botUserId,
    required this.openedBotUserId,
  });

  /// [botUserId] Identifier of the original bot, which similar bots were requested
  final int botUserId;

  /// [openedBotUserId] Identifier of the opened bot
  final int openedBotUserId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "opened_bot_user_id": openedBotUserId,
      "@extra": extra,
    };
  }

  OpenBotSimilarBot copyWith({
    int? botUserId,
    int? openedBotUserId,
  }) {
    return OpenBotSimilarBot(
      botUserId: botUserId ?? this.botUserId,
      openedBotUserId: openedBotUserId ?? this.openedBotUserId,
    );
  }

  static const CONSTRUCTOR = 'openBotSimilarBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
