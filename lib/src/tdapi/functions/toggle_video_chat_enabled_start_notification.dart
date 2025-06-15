import '../tdapi.dart';

class ToggleVideoChatEnabledStartNotification extends TdFunction {
  /// Toggles whether the current user will receive a notification when the video chat starts; for scheduled video chats only
  const ToggleVideoChatEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification setting
  final bool enabledStartNotification;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "enabled_start_notification": enabledStartNotification,
      "@extra": extra,
    };
  }

  ToggleVideoChatEnabledStartNotification copyWith({
    int? groupCallId,
    bool? enabledStartNotification,
  }) {
    return ToggleVideoChatEnabledStartNotification(
      groupCallId: groupCallId ?? this.groupCallId,
      enabledStartNotification:
          enabledStartNotification ?? this.enabledStartNotification,
    );
  }

  static const CONSTRUCTOR = 'toggleVideoChatEnabledStartNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
