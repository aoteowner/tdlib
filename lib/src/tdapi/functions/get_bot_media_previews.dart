import '../tdapi.dart';

class GetBotMediaPreviews extends TdFunction {
  /// Returns the list of media previews of a bot
  const GetBotMediaPreviews({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot. The bot must have the main Web App
  final int botUserId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }

  GetBotMediaPreviews copyWith({
    int? botUserId,
  }) {
    return GetBotMediaPreviews(
      botUserId: botUserId ?? this.botUserId,
    );
  }

  static const CONSTRUCTOR = 'getBotMediaPreviews';

  @override
  String getConstructor() => CONSTRUCTOR;
}
