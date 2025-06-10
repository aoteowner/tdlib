part of '../tdapi.dart';

class BusinessGreetingMessageSettings extends TdObject {

  /// Describes settings for greeting messages that are automatically sent by a Telegram Business account as response to incoming messages in an inactive private chat
  const BusinessGreetingMessageSettings({
    required this.shortcutId,
    required this.recipients,
    required this.inactivityDays,
  });
  
  /// [shortcutId] Unique quick reply shortcut identifier for the greeting messages
  final int shortcutId;

  /// [recipients] Chosen recipients of the greeting messages
  final BusinessRecipients recipients;

  /// [inactivityDays] The number of days after which a chat will be considered as inactive; currently, must be on of 7, 14, 21, or 28
  final int inactivityDays;
  
  /// Parse from a json
  factory BusinessGreetingMessageSettings.fromJson(Map<String, dynamic> json) => BusinessGreetingMessageSettings(
    shortcutId: json['shortcut_id'],
    recipients: BusinessRecipients.fromJson(json['recipients']),
    inactivityDays: json['inactivity_days'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "shortcut_id": shortcutId,
      "recipients": recipients.toJson(),
      "inactivity_days": inactivityDays,
    };
  }
  
  BusinessGreetingMessageSettings copyWith({
    int? shortcutId,
    BusinessRecipients? recipients,
    int? inactivityDays,
  }) => BusinessGreetingMessageSettings(
    shortcutId: shortcutId ?? this.shortcutId,
    recipients: recipients ?? this.recipients,
    inactivityDays: inactivityDays ?? this.inactivityDays,
  );

  static const CONSTRUCTOR = 'businessGreetingMessageSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
