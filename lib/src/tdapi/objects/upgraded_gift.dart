part of '../tdapi.dart';

class UpgradedGift extends TdObject {

  /// Describes an upgraded gift that can be transferred to another owner or transferred to the TON blockchain as an NFT
  const UpgradedGift({
    required this.id,
    required this.title,
    required this.name,
    required this.number,
    required this.totalUpgradedCount,
    required this.maxUpgradedCount,
    this.ownerId,
    required this.ownerAddress,
    required this.ownerName,
    required this.giftAddress,
    required this.model,
    required this.symbol,
    required this.backdrop,
    this.originalDetails,
    required this.resaleStarCount,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique identifier of the gift
  final int id;

  /// [title] The title of the upgraded gift
  final String title;

  /// [name] Unique name of the upgraded gift that can be used with internalLinkTypeUpgradedGift or sendResoldGift
  final String name;

  /// [number] Unique number of the upgraded gift among gifts upgraded from the same gift
  final int number;

  /// [totalUpgradedCount] Total number of gifts that were upgraded from the same gift
  final int totalUpgradedCount;

  /// [maxUpgradedCount] The maximum number of gifts that can be upgraded from the same gift
  final int maxUpgradedCount;

  /// [ownerId] Identifier of the user or the chat that owns the upgraded gift; may be null if none or unknown
  final MessageSender? ownerId;

  /// [ownerAddress] Address of the gift NFT owner in TON blockchain; may be empty if none. Append the address to getOption("ton_blockchain_explorer_url") to get a link with information about the address
  final String ownerAddress;

  /// [ownerName] Name of the owner for the case when owner identifier and address aren't known
  final String ownerName;

  /// [giftAddress] Address of the gift NFT in TON blockchain; may be empty if none. Append the address to getOption("ton_blockchain_explorer_url") to get a link with information about the address
  final String giftAddress;

  /// [model] Model of the upgraded gift
  final UpgradedGiftModel model;

  /// [symbol] Symbol of the upgraded gift
  final UpgradedGiftSymbol symbol;

  /// [backdrop] Backdrop of the upgraded gift
  final UpgradedGiftBackdrop backdrop;

  /// [originalDetails] Information about the originally sent gift; may be null if unknown
  final UpgradedGiftOriginalDetails? originalDetails;

  /// [resaleStarCount] Number of Telegram Stars that must be paid to buy the gift and send it to someone else; 0 if resale isn't possible
  final int resaleStarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpgradedGift.fromJson(Map<String, dynamic> json) => UpgradedGift(
    id: int.parse(json['id']),
    title: json['title'],
    name: json['name'],
    number: json['number'],
    totalUpgradedCount: json['total_upgraded_count'],
    maxUpgradedCount: json['max_upgraded_count'],
    ownerId: json['owner_id'] == null ? null : MessageSender.fromJson(json['owner_id']),
    ownerAddress: json['owner_address'],
    ownerName: json['owner_name'],
    giftAddress: json['gift_address'],
    model: UpgradedGiftModel.fromJson(json['model']),
    symbol: UpgradedGiftSymbol.fromJson(json['symbol']),
    backdrop: UpgradedGiftBackdrop.fromJson(json['backdrop']),
    originalDetails: json['original_details'] == null ? null : UpgradedGiftOriginalDetails.fromJson(json['original_details']),
    resaleStarCount: json['resale_star_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "name": name,
      "number": number,
      "total_upgraded_count": totalUpgradedCount,
      "max_upgraded_count": maxUpgradedCount,
      "owner_id": ownerId?.toJson(),
      "owner_address": ownerAddress,
      "owner_name": ownerName,
      "gift_address": giftAddress,
      "model": model.toJson(),
      "symbol": symbol.toJson(),
      "backdrop": backdrop.toJson(),
      "original_details": originalDetails?.toJson(),
      "resale_star_count": resaleStarCount,
    };
  }
  
  UpgradedGift copyWith({
    int? id,
    String? title,
    String? name,
    int? number,
    int? totalUpgradedCount,
    int? maxUpgradedCount,
    MessageSender? ownerId,
    String? ownerAddress,
    String? ownerName,
    String? giftAddress,
    UpgradedGiftModel? model,
    UpgradedGiftSymbol? symbol,
    UpgradedGiftBackdrop? backdrop,
    UpgradedGiftOriginalDetails? originalDetails,
    int? resaleStarCount,
    dynamic extra,
    int? clientId,
  }) => UpgradedGift(
    id: id ?? this.id,
    title: title ?? this.title,
    name: name ?? this.name,
    number: number ?? this.number,
    totalUpgradedCount: totalUpgradedCount ?? this.totalUpgradedCount,
    maxUpgradedCount: maxUpgradedCount ?? this.maxUpgradedCount,
    ownerId: ownerId ?? this.ownerId,
    ownerAddress: ownerAddress ?? this.ownerAddress,
    ownerName: ownerName ?? this.ownerName,
    giftAddress: giftAddress ?? this.giftAddress,
    model: model ?? this.model,
    symbol: symbol ?? this.symbol,
    backdrop: backdrop ?? this.backdrop,
    originalDetails: originalDetails ?? this.originalDetails,
    resaleStarCount: resaleStarCount ?? this.resaleStarCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'upgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
