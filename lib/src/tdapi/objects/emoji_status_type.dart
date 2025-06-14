import '../tdapi.dart';

class EmojiStatusType extends TdObject {
  /// Describes type of emoji status
  const EmojiStatusType();

  factory EmojiStatusType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case EmojiStatusTypeCustomEmoji.CONSTRUCTOR:
        return EmojiStatusTypeCustomEmoji.fromJson(json);
      case EmojiStatusTypeUpgradedGift.CONSTRUCTOR:
        return EmojiStatusTypeUpgradedGift.fromJson(json);
      default:
        return const EmojiStatusType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  EmojiStatusType copyWith() {
    return const EmojiStatusType();
  }

  static const CONSTRUCTOR = 'emojiStatusType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class EmojiStatusTypeCustomEmoji extends EmojiStatusType {
  /// A custom emoji set as emoji status
  const EmojiStatusTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  factory EmojiStatusTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      EmojiStatusTypeCustomEmoji(
        customEmojiId: int.tryParse(json['custom_emoji_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_id": customEmojiId,
    };
  }

  @override
  EmojiStatusTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) {
    return EmojiStatusTypeCustomEmoji(
      customEmojiId: customEmojiId ?? this.customEmojiId,
    );
  }

  static const CONSTRUCTOR = 'emojiStatusTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class EmojiStatusTypeUpgradedGift extends EmojiStatusType {
  /// An upgraded gift set as emoji status
  const EmojiStatusTypeUpgradedGift({
    required this.upgradedGiftId,
    required this.giftTitle,
    required this.giftName,
    required this.modelCustomEmojiId,
    required this.symbolCustomEmojiId,
    required this.backdropColors,
  });

  /// [upgradedGiftId] Identifier of the upgraded gift
  final int upgradedGiftId;

  /// [giftTitle] The title of the upgraded gift
  final String giftTitle;

  /// [giftName] Unique name of the upgraded gift that can be used with internalLinkTypeUpgradedGift
  final String giftName;

  /// [modelCustomEmojiId] Custom emoji identifier of the model of the upgraded gift
  final int modelCustomEmojiId;

  /// [symbolCustomEmojiId] Custom emoji identifier of the symbol of the upgraded gift
  final int symbolCustomEmojiId;

  /// [backdropColors] Colors of the backdrop of the upgraded gift
  final UpgradedGiftBackdropColors backdropColors;

  factory EmojiStatusTypeUpgradedGift.fromJson(Map<String, dynamic> json) =>
      EmojiStatusTypeUpgradedGift(
        upgradedGiftId: int.tryParse(json['upgraded_gift_id'] ?? '') ?? 0,
        giftTitle: json['gift_title'] ?? '',
        giftName: json['gift_name'] ?? '',
        modelCustomEmojiId:
            int.tryParse(json['model_custom_emoji_id'] ?? '') ?? 0,
        symbolCustomEmojiId:
            int.tryParse(json['symbol_custom_emoji_id'] ?? '') ?? 0,
        backdropColors:
            UpgradedGiftBackdropColors.fromJson(json['backdrop_colors'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "upgraded_gift_id": upgradedGiftId,
      "gift_title": giftTitle,
      "gift_name": giftName,
      "model_custom_emoji_id": modelCustomEmojiId,
      "symbol_custom_emoji_id": symbolCustomEmojiId,
      "backdrop_colors": backdropColors.toJson(),
    };
  }

  @override
  EmojiStatusTypeUpgradedGift copyWith({
    int? upgradedGiftId,
    String? giftTitle,
    String? giftName,
    int? modelCustomEmojiId,
    int? symbolCustomEmojiId,
    UpgradedGiftBackdropColors? backdropColors,
  }) {
    return EmojiStatusTypeUpgradedGift(
      upgradedGiftId: upgradedGiftId ?? this.upgradedGiftId,
      giftTitle: giftTitle ?? this.giftTitle,
      giftName: giftName ?? this.giftName,
      modelCustomEmojiId: modelCustomEmojiId ?? this.modelCustomEmojiId,
      symbolCustomEmojiId: symbolCustomEmojiId ?? this.symbolCustomEmojiId,
      backdropColors: backdropColors ?? this.backdropColors,
    );
  }

  static const CONSTRUCTOR = 'emojiStatusTypeUpgradedGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}
