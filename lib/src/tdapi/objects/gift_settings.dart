part of '../tdapi.dart';

class GiftSettings extends TdObject {

  /// Contains settings for gift receiving for a user
  const GiftSettings({
    required this.showGiftButton,
    required this.acceptedGiftTypes,
  });
  
  /// [showGiftButton] True, if a button for sending a gift to the user or by the user must always be shown in the input field
  final bool showGiftButton;

  /// [acceptedGiftTypes] Types of gifts accepted by the user; for Telegram Premium users only
  final AcceptedGiftTypes acceptedGiftTypes;
  
  /// Parse from a json
  factory GiftSettings.fromJson(Map<String, dynamic> json) => GiftSettings(
    showGiftButton: json['show_gift_button'],
    acceptedGiftTypes: AcceptedGiftTypes.fromJson(json['accepted_gift_types']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "show_gift_button": showGiftButton,
      "accepted_gift_types": acceptedGiftTypes.toJson(),
    };
  }
  
  GiftSettings copyWith({
    bool? showGiftButton,
    AcceptedGiftTypes? acceptedGiftTypes,
  }) => GiftSettings(
    showGiftButton: showGiftButton ?? this.showGiftButton,
    acceptedGiftTypes: acceptedGiftTypes ?? this.acceptedGiftTypes,
  );

  static const CONSTRUCTOR = 'giftSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
