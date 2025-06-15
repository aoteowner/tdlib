import '../tdapi.dart';

class TextEntities extends TdObject {
  /// Contains a list of text entities
  const TextEntities({
    required this.entities,
    this.extra,
    this.clientId,
  });

  /// [entities] List of text entities
  final List<TextEntity> entities;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory TextEntities.fromJson(Map<String, dynamic> json) => TextEntities(
        entities: json['entities'] == null
            ? <TextEntity>[]
            : (json['entities'] as List)
                .map((e) => TextEntity.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "entities": entities.map((e) => e.toJson()).toList(),
    };
  }

  TextEntities copyWith({
    List<TextEntity>? entities,
    dynamic extra,
    int? clientId,
  }) {
    return TextEntities(
      entities: entities ?? this.entities,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'textEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
