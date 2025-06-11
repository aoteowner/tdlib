import '../tdapi.dart';

class MessageSendOptions extends TdObject {

  /// Options to be used when a message is sent
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    required this.protectContent,
    required this.allowPaidBroadcast,
    required this.paidMessageStarCount,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
    required this.effectId,
    required this.sendingId,
    required this.onlyPreview,
  });
  
  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected from forwarding and saving; for bots only
  final bool protectContent;

  /// [allowPaidBroadcast] Pass true to allow the message to ignore regular broadcast limits for a small fee; for bots only
  final bool allowPaidBroadcast;

  /// [paidMessageStarCount] The number of Telegram Stars the user agreed to pay to send the messages
  final int paidMessageStarCount;

  /// [updateOrderOfInstalledStickerSets] Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// [schedulingState] Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, to a chat with paid messages, live location messages and self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  /// [effectId] Identifier of the effect to apply to the message; pass 0 if none; applicable only to sendMessage and sendMessageAlbum in private chats
  final int effectId;

  /// [sendingId] Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
  final int sendingId;

  /// [onlyPreview] Pass true to get a fake message instead of actually sending them
  final bool onlyPreview;
  
  /// Parse from a json
  factory MessageSendOptions.fromJson(Map<String, dynamic> json) => MessageSendOptions(
    disableNotification: json['disable_notification'],
    fromBackground: json['from_background'],
    protectContent: json['protect_content'],
    allowPaidBroadcast: json['allow_paid_broadcast'],
    paidMessageStarCount: json['paid_message_star_count'],
    updateOrderOfInstalledStickerSets: json['update_order_of_installed_sticker_sets'],
    schedulingState: json['scheduling_state'] == null ? null : MessageSchedulingState.fromJson(json['scheduling_state']),
    effectId: int.tryParse(json['effect_id'] ?? "") ?? 0,
    sendingId: json['sending_id'],
    onlyPreview: json['only_preview'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "disable_notification": disableNotification,
      "from_background": fromBackground,
      "protect_content": protectContent,
      "allow_paid_broadcast": allowPaidBroadcast,
      "paid_message_star_count": paidMessageStarCount,
      "update_order_of_installed_sticker_sets": updateOrderOfInstalledStickerSets,
      "scheduling_state": schedulingState?.toJson(),
      "effect_id": effectId,
      "sending_id": sendingId,
      "only_preview": onlyPreview,
    };
  }
  
  MessageSendOptions copyWith({
    bool? disableNotification,
    bool? fromBackground,
    bool? protectContent,
    bool? allowPaidBroadcast,
    int? paidMessageStarCount,
    bool? updateOrderOfInstalledStickerSets,
    MessageSchedulingState? schedulingState,
    int? effectId,
    int? sendingId,
    bool? onlyPreview,
  }) => MessageSendOptions(
    disableNotification: disableNotification ?? this.disableNotification,
    fromBackground: fromBackground ?? this.fromBackground,
    protectContent: protectContent ?? this.protectContent,
    allowPaidBroadcast: allowPaidBroadcast ?? this.allowPaidBroadcast,
    paidMessageStarCount: paidMessageStarCount ?? this.paidMessageStarCount,
    updateOrderOfInstalledStickerSets: updateOrderOfInstalledStickerSets ?? this.updateOrderOfInstalledStickerSets,
    schedulingState: schedulingState ?? this.schedulingState,
    effectId: effectId ?? this.effectId,
    sendingId: sendingId ?? this.sendingId,
    onlyPreview: onlyPreview ?? this.onlyPreview,
  );

  static const CONSTRUCTOR = 'messageSendOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
