import '../tdapi.dart';

class ChatBoostStatus extends TdObject {

  /// Describes current boost status of a chat
  const ChatBoostStatus({
    required this.boostUrl,
    required this.appliedSlotIds,
    required this.level,
    required this.giftCodeBoostCount,
    required this.boostCount,
    required this.currentLevelBoostCount,
    required this.nextLevelBoostCount,
    required this.premiumMemberCount,
    required this.premiumMemberPercentage,
    required this.prepaidGiveaways,
    this.extra,
    this.clientId,
  });
  
  /// [boostUrl] An HTTP URL, which can be used to boost the chat
  final String boostUrl;

  /// [appliedSlotIds] Identifiers of boost slots of the current user applied to the chat
  final List<int> appliedSlotIds;

  /// [level] Current boost level of the chat
  final int level;

  /// [giftCodeBoostCount] The number of boosts received by the chat from created Telegram Premium gift codes and giveaways; always 0 if the current user isn't an administrator in the chat
  final int giftCodeBoostCount;

  /// [boostCount] The number of boosts received by the chat
  final int boostCount;

  /// [currentLevelBoostCount] The number of boosts added to reach the current level
  final int currentLevelBoostCount;

  /// [nextLevelBoostCount] The number of boosts needed to reach the next level; 0 if the next level isn't available
  final int nextLevelBoostCount;

  /// [premiumMemberCount] Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  final int premiumMemberCount;

  /// [premiumMemberPercentage] A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  final double premiumMemberPercentage;

  /// [prepaidGiveaways] The list of prepaid giveaways available for the chat; only for chat administrators
  final List<PrepaidGiveaway> prepaidGiveaways;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatBoostStatus.fromJson(Map<String, dynamic> json) => ChatBoostStatus(
    boostUrl: json['boost_url'] ?? '',
    appliedSlotIds: json['applied_slot_ids']?.cast<int>() ?? [],
    level: json['level'] ?? 0,
    giftCodeBoostCount: json['gift_code_boost_count'] ?? 0,
    boostCount: json['boost_count'] ?? 0,
    currentLevelBoostCount: json['current_level_boost_count'] ?? 0,
    nextLevelBoostCount: json['next_level_boost_count'] ?? 0,
    premiumMemberCount: json['premium_member_count'] ?? 0,
    premiumMemberPercentage: json['premium_member_percentage'] ?? 0,
    prepaidGiveaways: json['prepaid_giveaways'] == null ? [] :(json['prepaid_giveaways'] as List).map((e) => PrepaidGiveaway.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boost_url": boostUrl,
      "applied_slot_ids": appliedSlotIds,
      "level": level,
      "gift_code_boost_count": giftCodeBoostCount,
      "boost_count": boostCount,
      "current_level_boost_count": currentLevelBoostCount,
      "next_level_boost_count": nextLevelBoostCount,
      "premium_member_count": premiumMemberCount,
      "premium_member_percentage": premiumMemberPercentage,
      "prepaid_giveaways": prepaidGiveaways.map((e) => e.toJson()).toList(),
    };
  }
  
  ChatBoostStatus copyWith({
    String? boostUrl,
    List<int>? appliedSlotIds,
    int? level,
    int? giftCodeBoostCount,
    int? boostCount,
    int? currentLevelBoostCount,
    int? nextLevelBoostCount,
    int? premiumMemberCount,
    double? premiumMemberPercentage,
    List<PrepaidGiveaway>? prepaidGiveaways,
    dynamic extra,
    int? clientId,
  }) => ChatBoostStatus(
    boostUrl: boostUrl ?? this.boostUrl,
    appliedSlotIds: appliedSlotIds ?? this.appliedSlotIds,
    level: level ?? this.level,
    giftCodeBoostCount: giftCodeBoostCount ?? this.giftCodeBoostCount,
    boostCount: boostCount ?? this.boostCount,
    currentLevelBoostCount: currentLevelBoostCount ?? this.currentLevelBoostCount,
    nextLevelBoostCount: nextLevelBoostCount ?? this.nextLevelBoostCount,
    premiumMemberCount: premiumMemberCount ?? this.premiumMemberCount,
    premiumMemberPercentage: premiumMemberPercentage ?? this.premiumMemberPercentage,
    prepaidGiveaways: prepaidGiveaways ?? this.prepaidGiveaways,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatBoostStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
