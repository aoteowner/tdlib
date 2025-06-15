import '../tdapi.dart';

class Emojis extends TdObject {
  /// Represents a list of emojis
  const Emojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });

  /// [emojis] List of emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Emojis.fromJson(Map<String, dynamic> json) => Emojis(
        emojis: json['emojis'] == null
            ? <String>[]
            : (json['emojis'] as List).map((e) => (e ?? '') as String).toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis,
    };
  }

  Emojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) {
    return Emojis(
      emojis: emojis ?? this.emojis,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'emojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
