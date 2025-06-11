import '../tdapi.dart';

class GetBotSimilarBotCount extends TdFunction {

  /// Returns approximate number of bots similar to the given bot
  const GetBotSimilarBotCount({
    required this.botUserId,
    required this.returnLocal,
  });
  
  /// [botUserId] User identifier of the target bot
  final int botUserId;

  /// [returnLocal] Pass true to get the number of bots without sending network requests, or -1 if the number of bots is unknown locally
  final bool returnLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "return_local": returnLocal,
      "@extra": extra,
    };
  }
  
  GetBotSimilarBotCount copyWith({
    int? botUserId,
    bool? returnLocal,
  }) => GetBotSimilarBotCount(
    botUserId: botUserId ?? this.botUserId,
    returnLocal: returnLocal ?? this.returnLocal,
  );

  static const CONSTRUCTOR = 'getBotSimilarBotCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
