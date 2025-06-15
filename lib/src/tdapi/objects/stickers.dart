import '../tdapi.dart';

class Stickers extends TdObject {
  /// Represents a list of stickers
  const Stickers({
    required this.stickers,
    this.extra,
    this.clientId,
  });

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory Stickers.fromJson(Map<String, dynamic> json) => Stickers(
        stickers: json['stickers'] == null
            ? <Sticker>[]
            : (json['stickers'] as List)
                .map((e) => Sticker.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "stickers": stickers.map((e) => e.toJson()).toList(),
    };
  }

  Stickers copyWith({
    List<Sticker>? stickers,
    dynamic extra,
    int? clientId,
  }) {
    return Stickers(
      stickers: stickers ?? this.stickers,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'stickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
