import '../tdapi.dart';

class ChatPhotoStickerType extends TdObject {
  /// Describes type of sticker, which was used to create a chat photo
  const ChatPhotoStickerType();

  factory ChatPhotoStickerType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatPhotoStickerTypeRegularOrMask.CONSTRUCTOR:
        return ChatPhotoStickerTypeRegularOrMask.fromJson(json);
      case ChatPhotoStickerTypeCustomEmoji.CONSTRUCTOR:
        return ChatPhotoStickerTypeCustomEmoji.fromJson(json);
      default:
        return const ChatPhotoStickerType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatPhotoStickerType copyWith() {
    return const ChatPhotoStickerType();
  }

  static const CONSTRUCTOR = 'chatPhotoStickerType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatPhotoStickerTypeRegularOrMask extends ChatPhotoStickerType {
  /// Information about the sticker, which was used to create the chat photo
  const ChatPhotoStickerTypeRegularOrMask({
    required this.stickerSetId,
    required this.stickerId,
  });

  /// [stickerSetId] Sticker set identifier
  final int stickerSetId;

  /// [stickerId] Identifier of the sticker in the set
  final int stickerId;

  factory ChatPhotoStickerTypeRegularOrMask.fromJson(
          Map<String, dynamic> json) =>
      ChatPhotoStickerTypeRegularOrMask(
        stickerSetId: int.tryParse(json['sticker_set_id'] ?? '') ?? 0,
        stickerId: int.tryParse(json['sticker_id'] ?? '') ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_id": stickerSetId,
      "sticker_id": stickerId,
    };
  }

  @override
  ChatPhotoStickerTypeRegularOrMask copyWith({
    int? stickerSetId,
    int? stickerId,
  }) {
    return ChatPhotoStickerTypeRegularOrMask(
      stickerSetId: stickerSetId ?? this.stickerSetId,
      stickerId: stickerId ?? this.stickerId,
    );
  }

  static const CONSTRUCTOR = 'chatPhotoStickerTypeRegularOrMask';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatPhotoStickerTypeCustomEmoji extends ChatPhotoStickerType {
  /// Information about the custom emoji, which was used to create the chat photo
  const ChatPhotoStickerTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  factory ChatPhotoStickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      ChatPhotoStickerTypeCustomEmoji(
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
  ChatPhotoStickerTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) {
    return ChatPhotoStickerTypeCustomEmoji(
      customEmojiId: customEmojiId ?? this.customEmojiId,
    );
  }

  static const CONSTRUCTOR = 'chatPhotoStickerTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
