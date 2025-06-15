import '../tdapi.dart';

class ToggleSupergroupCanHaveSponsoredMessages extends TdFunction {
  /// Toggles whether sponsored messages are shown in the channel chat; requires owner privileges in the channel. The chat must have at least chatBoostFeatures.min_sponsored_message_disable_boost_level boost level to disable sponsored messages
  const ToggleSupergroupCanHaveSponsoredMessages({
    required this.supergroupId,
    required this.canHaveSponsoredMessages,
  });

  /// [supergroupId] The identifier of the channel
  final int supergroupId;

  /// [canHaveSponsoredMessages] The new value of can_have_sponsored_messages
  final bool canHaveSponsoredMessages;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "can_have_sponsored_messages": canHaveSponsoredMessages,
      "@extra": extra,
    };
  }

  ToggleSupergroupCanHaveSponsoredMessages copyWith({
    int? supergroupId,
    bool? canHaveSponsoredMessages,
  }) {
    return ToggleSupergroupCanHaveSponsoredMessages(
      supergroupId: supergroupId ?? this.supergroupId,
      canHaveSponsoredMessages:
          canHaveSponsoredMessages ?? this.canHaveSponsoredMessages,
    );
  }

  static const CONSTRUCTOR = 'toggleSupergroupCanHaveSponsoredMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
