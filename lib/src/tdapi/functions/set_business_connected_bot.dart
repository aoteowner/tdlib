import '../tdapi.dart';

class SetBusinessConnectedBot extends TdFunction {

  /// Adds or changes business bot that is connected to the current user account
  const SetBusinessConnectedBot({
    required this.bot,
  });
  
  /// [bot] Connection settings for the bot
  final BusinessConnectedBot bot;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot": bot.toJson(),
      "@extra": extra,
    };
  }
  
  SetBusinessConnectedBot copyWith({
    BusinessConnectedBot? bot,
  }) => SetBusinessConnectedBot(
    bot: bot ?? this.bot,
  );

  static const CONSTRUCTOR = 'setBusinessConnectedBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
