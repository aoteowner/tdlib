part of '../tdapi.dart';

class SetPinnedGifts extends TdFunction {

  /// Changes the list of pinned gifts on the current user's or the channel's profile page; requires can_post_messages administrator right in the channel chat
  const SetPinnedGifts({
    required this.ownerId,
    required this.receivedGiftIds,
  });
  
  /// [ownerId] Identifier of the user or the channel chat that received the gifts
  final MessageSender ownerId;

  /// [receivedGiftIds] New list of pinned gifts. All gifts must be upgraded and saved on the profile page first. There can be up to getOption("pinned_gift_count_max") pinned gifts
  final List<String> receivedGiftIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "received_gift_ids": receivedGiftIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  SetPinnedGifts copyWith({
    MessageSender? ownerId,
    List<String>? receivedGiftIds,
  }) => SetPinnedGifts(
    ownerId: ownerId ?? this.ownerId,
    receivedGiftIds: receivedGiftIds ?? this.receivedGiftIds,
  );

  static const CONSTRUCTOR = 'setPinnedGifts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
