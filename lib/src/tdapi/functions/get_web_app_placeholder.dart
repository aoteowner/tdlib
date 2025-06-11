import '../tdapi.dart';

class GetWebAppPlaceholder extends TdFunction {

  /// Returns a default placeholder for Web Apps of a bot. This is an offline method. Returns a 404 error if the placeholder isn't known
  const GetWebAppPlaceholder({
    required this.botUserId,
  });
  
  /// [botUserId] Identifier of the target bot
  final int botUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }
  
  GetWebAppPlaceholder copyWith({
    int? botUserId,
  }) => GetWebAppPlaceholder(
    botUserId: botUserId ?? this.botUserId,
  );

  static const CONSTRUCTOR = 'getWebAppPlaceholder';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
