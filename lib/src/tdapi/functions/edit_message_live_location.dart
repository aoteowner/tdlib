import '../tdapi.dart';

class EditMessageLiveLocation extends TdFunction {
  /// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location.. Returns the edited message after the edit is completed on the server side
  const EditMessageLiveLocation({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_be_edited to check whether the message can be edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
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
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "location": location?.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "@extra": extra,
    };
  }

  EditMessageLiveLocation copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) {
    return EditMessageLiveLocation(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      location: location ?? this.location,
      livePeriod: livePeriod ?? this.livePeriod,
      heading: heading ?? this.heading,
      proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
    );
  }

  static const CONSTRUCTOR = 'editMessageLiveLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
