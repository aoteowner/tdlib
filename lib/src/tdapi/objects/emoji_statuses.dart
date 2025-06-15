import '../tdapi.dart';

class EmojiStatuses extends TdObject {
  /// Contains a list of emoji statuses
  const EmojiStatuses({
    required this.emojiStatuses,
    this.extra,
    this.clientId,
  });

  /// [emojiStatuses] The list of emoji statuses identifiers
  final List<EmojiStatus> emojiStatuses;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory EmojiStatuses.fromJson(Map<String, dynamic> json) => EmojiStatuses(
        emojiStatuses: json['emoji_statuses'] == null
            ? <EmojiStatus>[]
            : (json['emoji_statuses'] as List)
                .map((e) => EmojiStatus.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji_statuses": emojiStatuses.map((e) => e.toJson()).toList(),
    };
  }

  EmojiStatuses copyWith({
    List<EmojiStatus>? emojiStatuses,
    dynamic extra,
    int? clientId,
  }) {
    return EmojiStatuses(
      emojiStatuses: emojiStatuses ?? this.emojiStatuses,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'emojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
