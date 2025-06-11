import '../tdapi.dart';

class ReceivedGift extends TdObject {

  /// Represents a gift received by a user or a chat
  const ReceivedGift({
    required this.receivedGiftId,
    this.senderId,
    required this.text,
    required this.isPrivate,
    required this.isSaved,
    required this.isPinned,
    required this.canBeUpgraded,
    required this.canBeTransferred,
    required this.wasRefunded,
    required this.date,
    required this.gift,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.transferStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
    this.extra,
    this.clientId,
  });
  
  /// [receivedGiftId] Unique identifier of the received gift for the current user; only for the receiver of the gift
  final String receivedGiftId;

  /// [senderId] Identifier of a user or a chat that sent the gift; may be null if unknown
  final MessageSender? senderId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone are able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the chat's profile page; only for the receiver of the gift
  final bool isSaved;

  /// [isPinned] True, if the gift is pinned to the top of the chat's profile page
  final bool isPinned;

  /// [canBeUpgraded] True, if the gift is a regular gift that can be upgraded to a unique gift; only for the receiver of the gift
  final bool canBeUpgraded;

  /// [canBeTransferred] True, if the gift is an upgraded gift that can be transferred to another owner; only for the receiver of the gift
  final bool canBeTransferred;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [date] Point in time (Unix timestamp) when the gift was sent
  final int date;

  /// [gift] The gift
  final SentGift gift;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the receiver instead of the regular gift; 0 if the gift can't be sold by the current user
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer the upgraded gift; only for the receiver of the gift
  final int transferStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be transferred to another owner; 0 if the gift can be transferred immediately or transfer isn't possible; only for the receiver of the gift
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be resold to another user; 0 if the gift can't be resold; only for the receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the upgraded gift can be transferred to the TON blockchain as an NFT; 0 if NFT export isn't possible; only for the receiver of the gift
  final int exportDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ReceivedGift.fromJson(Map<String, dynamic> json) => ReceivedGift(
    receivedGiftId: json['received_gift_id'],
    senderId: json['sender_id'] == null ? null : MessageSender.fromJson(json['sender_id']),
    text: FormattedText.fromJson(json['text']),
    isPrivate: json['is_private'],
    isSaved: json['is_saved'],
    isPinned: json['is_pinned'],
    canBeUpgraded: json['can_be_upgraded'],
    canBeTransferred: json['can_be_transferred'],
    wasRefunded: json['was_refunded'],
    date: json['date'],
    gift: SentGift.fromJson(json['gift']),
    sellStarCount: json['sell_star_count'],
    prepaidUpgradeStarCount: json['prepaid_upgrade_star_count'],
    transferStarCount: json['transfer_star_count'],
    nextTransferDate: json['next_transfer_date'],
    nextResaleDate: json['next_resale_date'],
    exportDate: json['export_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "received_gift_id": receivedGiftId,
      "sender_id": senderId?.toJson(),
      "text": text.toJson(),
      "is_private": isPrivate,
      "is_saved": isSaved,
      "is_pinned": isPinned,
      "can_be_upgraded": canBeUpgraded,
      "can_be_transferred": canBeTransferred,
      "was_refunded": wasRefunded,
      "date": date,
      "gift": gift.toJson(),
      "sell_star_count": sellStarCount,
      "prepaid_upgrade_star_count": prepaidUpgradeStarCount,
      "transfer_star_count": transferStarCount,
      "next_transfer_date": nextTransferDate,
      "next_resale_date": nextResaleDate,
      "export_date": exportDate,
    };
  }
  
  ReceivedGift copyWith({
    String? receivedGiftId,
    MessageSender? senderId,
    FormattedText? text,
    bool? isPrivate,
    bool? isSaved,
    bool? isPinned,
    bool? canBeUpgraded,
    bool? canBeTransferred,
    bool? wasRefunded,
    int? date,
    SentGift? gift,
    int? sellStarCount,
    int? prepaidUpgradeStarCount,
    int? transferStarCount,
    int? nextTransferDate,
    int? nextResaleDate,
    int? exportDate,
    dynamic extra,
    int? clientId,
  }) => ReceivedGift(
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
    senderId: senderId ?? this.senderId,
    text: text ?? this.text,
    isPrivate: isPrivate ?? this.isPrivate,
    isSaved: isSaved ?? this.isSaved,
    isPinned: isPinned ?? this.isPinned,
    canBeUpgraded: canBeUpgraded ?? this.canBeUpgraded,
    canBeTransferred: canBeTransferred ?? this.canBeTransferred,
    wasRefunded: wasRefunded ?? this.wasRefunded,
    date: date ?? this.date,
    gift: gift ?? this.gift,
    sellStarCount: sellStarCount ?? this.sellStarCount,
    prepaidUpgradeStarCount: prepaidUpgradeStarCount ?? this.prepaidUpgradeStarCount,
    transferStarCount: transferStarCount ?? this.transferStarCount,
    nextTransferDate: nextTransferDate ?? this.nextTransferDate,
    nextResaleDate: nextResaleDate ?? this.nextResaleDate,
    exportDate: exportDate ?? this.exportDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'receivedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
