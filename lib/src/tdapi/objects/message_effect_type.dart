import '../tdapi.dart';

class MessageEffectType extends TdObject {

  /// Describes type of emoji effect
  const MessageEffectType();
  
  /// a MessageEffectType return type can be :
  /// * [MessageEffectTypeEmojiReaction]
  /// * [MessageEffectTypePremiumSticker]
  factory MessageEffectType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageEffectTypeEmojiReaction.CONSTRUCTOR:
        return MessageEffectTypeEmojiReaction.fromJson(json);
      case MessageEffectTypePremiumSticker.CONSTRUCTOR:
        return MessageEffectTypePremiumSticker.fromJson(json);
      default:
        return const MessageEffectType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageEffectType copyWith() => const MessageEffectType();

  static const CONSTRUCTOR = 'messageEffectType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageEffectTypeEmojiReaction extends MessageEffectType {

  /// An effect from an emoji reaction
  const MessageEffectTypeEmojiReaction({
    required this.selectAnimation,
    required this.effectAnimation,
  });
  
  /// [selectAnimation] Select animation for the effect in TGS format 
  final Sticker selectAnimation;

  /// [effectAnimation] Effect animation for the effect in TGS format
  final Sticker effectAnimation;
  
  /// Parse from a json
  factory MessageEffectTypeEmojiReaction.fromJson(Map<String, dynamic> json) => MessageEffectTypeEmojiReaction(
    selectAnimation: Sticker.fromJson(json['select_animation']),
    effectAnimation: Sticker.fromJson(json['effect_animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "select_animation": selectAnimation.toJson(),
      "effect_animation": effectAnimation.toJson(),
    };
  }
  
  @override
  MessageEffectTypeEmojiReaction copyWith({
    Sticker? selectAnimation,
    Sticker? effectAnimation,
  }) => MessageEffectTypeEmojiReaction(
    selectAnimation: selectAnimation ?? this.selectAnimation,
    effectAnimation: effectAnimation ?? this.effectAnimation,
  );

  static const CONSTRUCTOR = 'messageEffectTypeEmojiReaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageEffectTypePremiumSticker extends MessageEffectType {

  /// An effect from a premium sticker
  const MessageEffectTypePremiumSticker({
    required this.sticker,
  });
  
  /// [sticker] The premium sticker. The effect can be found at sticker.full_type.premium_animation
  final Sticker sticker;
  
  /// Parse from a json
  factory MessageEffectTypePremiumSticker.fromJson(Map<String, dynamic> json) => MessageEffectTypePremiumSticker(
    sticker: Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  MessageEffectTypePremiumSticker copyWith({
    Sticker? sticker,
  }) => MessageEffectTypePremiumSticker(
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'messageEffectTypePremiumSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
