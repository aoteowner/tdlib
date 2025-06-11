import '../tdapi.dart';

class ToggleHasSponsoredMessagesEnabled extends TdFunction {

  /// Toggles whether the current user has sponsored messages enabled. The setting has no effect for users without Telegram Premium for which sponsored messages are always enabled
  const ToggleHasSponsoredMessagesEnabled({
    required this.hasSponsoredMessagesEnabled,
  });
  
  /// [hasSponsoredMessagesEnabled] Pass true to enable sponsored messages for the current user; false to disable them
  final bool hasSponsoredMessagesEnabled;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_sponsored_messages_enabled": hasSponsoredMessagesEnabled,
      "@extra": extra,
    };
  }
  
  ToggleHasSponsoredMessagesEnabled copyWith({
    bool? hasSponsoredMessagesEnabled,
  }) => ToggleHasSponsoredMessagesEnabled(
    hasSponsoredMessagesEnabled: hasSponsoredMessagesEnabled ?? this.hasSponsoredMessagesEnabled,
  );

  static const CONSTRUCTOR = 'toggleHasSponsoredMessagesEnabled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
