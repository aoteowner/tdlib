import '../tdapi.dart';

class GetStarAdAccountUrl extends TdFunction {

  /// Returns a URL for a Telegram Ad platform account that can be used to set up advertisements for the chat paid in the owned Telegram Stars
  const GetStarAdAccountUrl({
    required this.ownerId,
  });
  
  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier of an owned bot, or identifier of an owned channel chat
  final MessageSender ownerId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "@extra": extra,
    };
  }
  
  GetStarAdAccountUrl copyWith({
    MessageSender? ownerId,
  }) => GetStarAdAccountUrl(
    ownerId: ownerId ?? this.ownerId,
  );

  static const CONSTRUCTOR = 'getStarAdAccountUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
