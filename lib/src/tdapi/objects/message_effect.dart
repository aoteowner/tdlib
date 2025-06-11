import '../tdapi.dart';

class MessageEffect extends TdObject {

  /// Contains information about an effect added to a message
  const MessageEffect({
    required this.id,
    this.staticIcon,
    required this.emoji,
    required this.isPremium,
    required this.type,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique identifier of the effect
  final int id;

  /// [staticIcon] Static icon for the effect in WEBP format; may be null if none
  final Sticker? staticIcon;

  /// [emoji] Emoji corresponding to the effect that can be used if static icon isn't available
  final String emoji;

  /// [isPremium] True, if Telegram Premium subscription is required to use the effect
  final bool isPremium;

  /// [type] Type of the effect
  final MessageEffectType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageEffect.fromJson(Map<String, dynamic> json) => MessageEffect(
    id: int.parse(json['id']),
    staticIcon: json['static_icon'] == null ? null : Sticker.fromJson(json['static_icon']),
    emoji: json['emoji'],
    isPremium: json['is_premium'],
    type: MessageEffectType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "static_icon": staticIcon?.toJson(),
      "emoji": emoji,
      "is_premium": isPremium,
      "type": type.toJson(),
    };
  }
  
  MessageEffect copyWith({
    int? id,
    Sticker? staticIcon,
    String? emoji,
    bool? isPremium,
    MessageEffectType? type,
    dynamic extra,
    int? clientId,
  }) => MessageEffect(
    id: id ?? this.id,
    staticIcon: staticIcon ?? this.staticIcon,
    emoji: emoji ?? this.emoji,
    isPremium: isPremium ?? this.isPremium,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageEffect';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
