import '../tdapi.dart';

class LocalizationTargetInfo extends TdObject {
  /// Contains information about the current localization target
  const LocalizationTargetInfo({
    required this.languagePacks,
    this.extra,
    this.clientId,
  });

  /// [languagePacks] List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LocalizationTargetInfo.fromJson(Map<String, dynamic> json) =>
      LocalizationTargetInfo(
        languagePacks: json['language_packs'] == null
            ? <LanguagePackInfo>[]
            : (json['language_packs'] as List)
                .map((e) => LanguagePackInfo.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_packs": languagePacks.map((e) => e.toJson()).toList(),
    };
  }

  LocalizationTargetInfo copyWith({
    List<LanguagePackInfo>? languagePacks,
    dynamic extra,
    int? clientId,
  }) {
    return LocalizationTargetInfo(
      languagePacks: languagePacks ?? this.languagePacks,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'localizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
