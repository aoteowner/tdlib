import '../tdapi.dart';

class LanguagePackInfo extends TdObject {
  /// Contains information about a language pack
  const LanguagePackInfo({
    required this.id,
    required this.baseLanguagePackId,
    required this.name,
    required this.nativeName,
    required this.pluralCode,
    required this.isOfficial,
    required this.isRtl,
    required this.isBeta,
    required this.isInstalled,
    required this.totalStringCount,
    required this.translatedStringCount,
    required this.localStringCount,
    required this.translationUrl,
    this.extra,
    this.clientId,
  });

  /// [id] Unique language pack identifier
  final String id;

  /// [baseLanguagePackId] Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs
  final String baseLanguagePackId;

  /// [name] Language name
  final String name;

  /// [nativeName] Name of the language in that language
  final String nativeName;

  /// [pluralCode] A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information
  final String pluralCode;

  /// [isOfficial] True, if the language pack is official
  final bool isOfficial;

  /// [isRtl] True, if the language pack strings are RTL
  final bool isRtl;

  /// [isBeta] True, if the language pack is a beta language pack
  final bool isBeta;

  /// [isInstalled] True, if the language pack is installed by the current user
  final bool isInstalled;

  /// [totalStringCount] Total number of non-deleted strings from the language pack
  final int totalStringCount;

  /// [translatedStringCount] Total number of translated strings from the language pack
  final int translatedStringCount;

  /// [localStringCount] Total number of non-deleted strings from the language pack available locally
  final int localStringCount;

  /// [translationUrl] Link to language translation interface; empty for custom local language packs
  final String translationUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LanguagePackInfo.fromJson(Map<String, dynamic> json) =>
      LanguagePackInfo(
        id: json['id'] ?? '',
        baseLanguagePackId: json['base_language_pack_id'] ?? '',
        name: json['name'] ?? '',
        nativeName: json['native_name'] ?? '',
        pluralCode: json['plural_code'] ?? '',
        isOfficial: json['is_official'] ?? false,
        isRtl: json['is_rtl'] ?? false,
        isBeta: json['is_beta'] ?? false,
        isInstalled: json['is_installed'] ?? false,
        totalStringCount: json['total_string_count'] ?? 0,
        translatedStringCount: json['translated_string_count'] ?? 0,
        localStringCount: json['local_string_count'] ?? 0,
        translationUrl: json['translation_url'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "base_language_pack_id": baseLanguagePackId,
      "name": name,
      "native_name": nativeName,
      "plural_code": pluralCode,
      "is_official": isOfficial,
      "is_rtl": isRtl,
      "is_beta": isBeta,
      "is_installed": isInstalled,
      "total_string_count": totalStringCount,
      "translated_string_count": translatedStringCount,
      "local_string_count": localStringCount,
      "translation_url": translationUrl,
    };
  }

  LanguagePackInfo copyWith({
    String? id,
    String? baseLanguagePackId,
    String? name,
    String? nativeName,
    String? pluralCode,
    bool? isOfficial,
    bool? isRtl,
    bool? isBeta,
    bool? isInstalled,
    int? totalStringCount,
    int? translatedStringCount,
    int? localStringCount,
    String? translationUrl,
    dynamic extra,
    int? clientId,
  }) {
    return LanguagePackInfo(
      id: id ?? this.id,
      baseLanguagePackId: baseLanguagePackId ?? this.baseLanguagePackId,
      name: name ?? this.name,
      nativeName: nativeName ?? this.nativeName,
      pluralCode: pluralCode ?? this.pluralCode,
      isOfficial: isOfficial ?? this.isOfficial,
      isRtl: isRtl ?? this.isRtl,
      isBeta: isBeta ?? this.isBeta,
      isInstalled: isInstalled ?? this.isInstalled,
      totalStringCount: totalStringCount ?? this.totalStringCount,
      translatedStringCount:
          translatedStringCount ?? this.translatedStringCount,
      localStringCount: localStringCount ?? this.localStringCount,
      translationUrl: translationUrl ?? this.translationUrl,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'languagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
