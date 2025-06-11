import '../tdapi.dart';

class GetUpgradedGiftEmojiStatuses extends TdFunction {

  /// Returns available upgraded gift emoji statuses for self status
  const GetUpgradedGiftEmojiStatuses();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetUpgradedGiftEmojiStatuses copyWith() => const GetUpgradedGiftEmojiStatuses();

  static const CONSTRUCTOR = 'getUpgradedGiftEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
