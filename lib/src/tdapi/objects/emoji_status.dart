import '../tdapi.dart';

class EmojiStatus extends TdObject {

  /// Describes an emoji to be shown instead of the Telegram Premium badge
  const EmojiStatus({
    required this.type,
    required this.expirationDate,
  });
  
  /// [type] Type of the emoji status
  final EmojiStatusType type;

  /// [expirationDate] Point in time (Unix timestamp) when the status will expire; 0 if never
  final int expirationDate;
  
  /// Parse from a json
  factory EmojiStatus.fromJson(Map<String, dynamic> json) => EmojiStatus(
    type: EmojiStatusType.fromJson(json['type']),
    expirationDate: json['expiration_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "expiration_date": expirationDate,
    };
  }
  
  EmojiStatus copyWith({
    EmojiStatusType? type,
    int? expirationDate,
  }) => EmojiStatus(
    type: type ?? this.type,
    expirationDate: expirationDate ?? this.expirationDate,
  );

  static const CONSTRUCTOR = 'emojiStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
