import '../tdapi.dart';

class UpgradeGiftResult extends TdObject {
  /// Contains result of gift upgrading
  const UpgradeGiftResult({
    required this.gift,
    required this.receivedGiftId,
    required this.isSaved,
    required this.canBeTransferred,
    required this.transferStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
    this.extra,
    this.clientId,
  });

  /// [gift] The upgraded gift
  final UpgradedGift gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current user
  final String receivedGiftId;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's profile page
  final bool isSaved;

  /// [canBeTransferred] True, if the gift can be transferred to another owner
  final bool canBeTransferred;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer the upgraded gift
  final int transferStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be transferred to another owner; 0 if the gift can be transferred immediately or transfer isn't possible
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be resold to another user; 0 if the gift can't be resold; only for the receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the gift can be transferred to the TON blockchain as an NFT
  final int exportDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UpgradeGiftResult.fromJson(Map<String, dynamic> json) =>
      UpgradeGiftResult(
        gift: UpgradedGift.fromJson(json['gift'] ?? {}),
        receivedGiftId: json['received_gift_id'] ?? '',
        isSaved: json['is_saved'] ?? false,
        canBeTransferred: json['can_be_transferred'] ?? false,
        transferStarCount: json['transfer_star_count'] ?? 0,
        nextTransferDate: json['next_transfer_date'] ?? 0,
        nextResaleDate: json['next_resale_date'] ?? 0,
        exportDate: json['export_date'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "received_gift_id": receivedGiftId,
      "is_saved": isSaved,
      "can_be_transferred": canBeTransferred,
      "transfer_star_count": transferStarCount,
      "next_transfer_date": nextTransferDate,
      "next_resale_date": nextResaleDate,
      "export_date": exportDate,
    };
  }

  UpgradeGiftResult copyWith({
    UpgradedGift? gift,
    String? receivedGiftId,
    bool? isSaved,
    bool? canBeTransferred,
    int? transferStarCount,
    int? nextTransferDate,
    int? nextResaleDate,
    int? exportDate,
    dynamic extra,
    int? clientId,
  }) {
    return UpgradeGiftResult(
      gift: gift ?? this.gift,
      receivedGiftId: receivedGiftId ?? this.receivedGiftId,
      isSaved: isSaved ?? this.isSaved,
      canBeTransferred: canBeTransferred ?? this.canBeTransferred,
      transferStarCount: transferStarCount ?? this.transferStarCount,
      nextTransferDate: nextTransferDate ?? this.nextTransferDate,
      nextResaleDate: nextResaleDate ?? this.nextResaleDate,
      exportDate: exportDate ?? this.exportDate,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'upgradeGiftResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}
