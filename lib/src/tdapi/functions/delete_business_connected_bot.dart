import '../tdapi.dart';

class DeleteBusinessConnectedBot extends TdFunction {

  /// Deletes the business bot that is connected to the current user account
  const DeleteBusinessConnectedBot({
    required this.botUserId,
  });
  
  /// [botUserId] Unique user identifier for the bot
  final int botUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }
  
  DeleteBusinessConnectedBot copyWith({
    int? botUserId,
  }) => DeleteBusinessConnectedBot(
    botUserId: botUserId ?? this.botUserId,
  );

  static const CONSTRUCTOR = 'deleteBusinessConnectedBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
