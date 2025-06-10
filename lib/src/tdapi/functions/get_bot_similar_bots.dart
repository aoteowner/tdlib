part of '../tdapi.dart';

class GetBotSimilarBots extends TdFunction {

  /// Returns a list of bots similar to the given bot
  const GetBotSimilarBots({
    required this.botUserId,
  });
  
  /// [botUserId] User identifier of the target bot
  final int botUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }
  
  GetBotSimilarBots copyWith({
    int? botUserId,
  }) => GetBotSimilarBots(
    botUserId: botUserId ?? this.botUserId,
  );

  static const CONSTRUCTOR = 'getBotSimilarBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
