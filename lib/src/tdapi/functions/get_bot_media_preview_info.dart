import '../tdapi.dart';

class GetBotMediaPreviewInfo extends TdFunction {
  /// Returns the list of media previews for the given language and the list of languages for which the bot has dedicated previews
  const GetBotMediaPreviewInfo({
    required this.botUserId,
    required this.languageCode,
  });

  /// [botUserId] Identifier of the target bot. The bot must be owned and must have the main Web App
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code for which to get previews. If empty, then default previews are returned
  final String languageCode;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "@extra": extra,
    };
  }

  GetBotMediaPreviewInfo copyWith({
    int? botUserId,
    String? languageCode,
  }) {
    return GetBotMediaPreviewInfo(
      botUserId: botUserId ?? this.botUserId,
      languageCode: languageCode ?? this.languageCode,
    );
  }

  static const CONSTRUCTOR = 'getBotMediaPreviewInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
