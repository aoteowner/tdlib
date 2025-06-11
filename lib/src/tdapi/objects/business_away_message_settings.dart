import '../tdapi.dart';

class BusinessAwayMessageSettings extends TdObject {

  /// Describes settings for messages that are automatically sent by a Telegram Business account when it is away
  const BusinessAwayMessageSettings({
    required this.shortcutId,
    required this.recipients,
    required this.schedule,
    required this.offlineOnly,
  });
  
  /// [shortcutId] Unique quick reply shortcut identifier for the away messages
  final int shortcutId;

  /// [recipients] Chosen recipients of the away messages
  final BusinessRecipients recipients;

  /// [schedule] Settings used to check whether the current user is away
  final BusinessAwayMessageSchedule schedule;

  /// [offlineOnly] True, if the messages must not be sent if the account was online in the last 10 minutes
  final bool offlineOnly;
  
  /// Parse from a json
  factory BusinessAwayMessageSettings.fromJson(Map<String, dynamic> json) => BusinessAwayMessageSettings(
    shortcutId: json['shortcut_id'],
    recipients: BusinessRecipients.fromJson(json['recipients']),
    schedule: BusinessAwayMessageSchedule.fromJson(json['schedule']),
    offlineOnly: json['offline_only'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "recipients": recipients.toJson(),
      "schedule": schedule.toJson(),
      "offline_only": offlineOnly,
    };
  }
  
  BusinessAwayMessageSettings copyWith({
    int? shortcutId,
    BusinessRecipients? recipients,
    BusinessAwayMessageSchedule? schedule,
    bool? offlineOnly,
  }) => BusinessAwayMessageSettings(
    shortcutId: shortcutId ?? this.shortcutId,
    recipients: recipients ?? this.recipients,
    schedule: schedule ?? this.schedule,
    offlineOnly: offlineOnly ?? this.offlineOnly,
  );

  static const CONSTRUCTOR = 'businessAwayMessageSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
