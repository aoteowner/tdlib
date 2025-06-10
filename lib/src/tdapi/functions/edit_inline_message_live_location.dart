part of '../tdapi.dart';

class EditInlineMessageLiveLocation extends TdFunction {

  /// Edits the content of a live location in an inline message sent via a bot; for bots only
  const EditInlineMessageLiveLocation({
    required this.inlineMessageId,
    this.replyMarkup,
    this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [location] New location content of the message; pass null to stop sharing the live location
  final Location? location;

  /// [livePeriod] New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever.. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period
  final int livePeriod;

  /// [heading] The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "location": location?.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "@extra": extra,
    };
  }
  
  EditInlineMessageLiveLocation copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) => EditInlineMessageLiveLocation(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  static const CONSTRUCTOR = 'editInlineMessageLiveLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
