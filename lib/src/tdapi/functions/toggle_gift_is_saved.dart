import '../tdapi.dart';

class ToggleGiftIsSaved extends TdFunction {
  /// Toggles whether a gift is shown on the current user's or the channel's profile page; requires can_post_messages administrator right in the channel chat
  const ToggleGiftIsSaved({
    required this.receivedGiftId,
    required this.isSaved,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [isSaved] Pass true to display the gift on the user's or the channel's profile page; pass false to remove it from the profile page
  final bool isSaved;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "received_gift_id": receivedGiftId,
      "is_saved": isSaved,
      "@extra": extra,
    };
  }

  ToggleGiftIsSaved copyWith({
    String? receivedGiftId,
    bool? isSaved,
  }) {
    return ToggleGiftIsSaved(
      receivedGiftId: receivedGiftId ?? this.receivedGiftId,
      isSaved: isSaved ?? this.isSaved,
    );
  }

  static const CONSTRUCTOR = 'toggleGiftIsSaved';

  @override
  String getConstructor() => CONSTRUCTOR;
}
