import '../tdapi.dart';

class GetMessageEffect extends TdFunction {

  /// Returns information about a message effect. Returns a 404 error if the effect is not found
  const GetMessageEffect({
    required this.effectId,
  });
  
  /// [effectId] Unique identifier of the effect
  final int effectId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "effect_id": effectId,
      "@extra": extra,
    };
  }
  
  GetMessageEffect copyWith({
    int? effectId,
  }) => GetMessageEffect(
    effectId: effectId ?? this.effectId,
  );

  static const CONSTRUCTOR = 'getMessageEffect';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
