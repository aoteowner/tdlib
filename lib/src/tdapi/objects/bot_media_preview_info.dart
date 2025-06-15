import '../tdapi.dart';

class BotMediaPreviewInfo extends TdObject {
  /// Contains a list of media previews of a bot for the given language and the list of languages for which the bot has dedicated previews
  const BotMediaPreviewInfo({
    required this.previews,
    required this.languageCodes,
    this.extra,
    this.clientId,
  });

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  /// [languageCodes] List of language codes for which the bot has dedicated previews
  final List<String> languageCodes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory BotMediaPreviewInfo.fromJson(Map<String, dynamic> json) =>
      BotMediaPreviewInfo(
        previews: json['previews'] == null
            ? <BotMediaPreview>[]
            : (json['previews'] as List)
                .map((e) => BotMediaPreview.fromJson(e ?? {}))
                .toList(),
        languageCodes: json['language_codes'] == null
            ? <String>[]
            : (json['language_codes'] as List)
                .map((e) => (e ?? '') as String)
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "previews": previews.map((e) => e.toJson()).toList(),
      "language_codes": languageCodes,
    };
  }

  BotMediaPreviewInfo copyWith({
    List<BotMediaPreview>? previews,
    List<String>? languageCodes,
    dynamic extra,
    int? clientId,
  }) {
    return BotMediaPreviewInfo(
      previews: previews ?? this.previews,
      languageCodes: languageCodes ?? this.languageCodes,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'botMediaPreviewInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
