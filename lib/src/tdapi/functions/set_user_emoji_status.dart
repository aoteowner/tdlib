import '../tdapi.dart';

class SetUserEmojiStatus extends TdFunction {

  /// Changes the emoji status of a user; for bots only
  const SetUserEmojiStatus({
    required this.userId,
    this.emojiStatus,
  });
  
  /// [userId] Identifier of the user 
  final int userId;

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "emoji_status": emojiStatus?.toJson(),
      "@extra": extra,
    };
  }
  
  SetUserEmojiStatus copyWith({
    int? userId,
    EmojiStatus? emojiStatus,
  }) => SetUserEmojiStatus(
    userId: userId ?? this.userId,
    emojiStatus: emojiStatus ?? this.emojiStatus,
  );

  static const CONSTRUCTOR = 'setUserEmojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
