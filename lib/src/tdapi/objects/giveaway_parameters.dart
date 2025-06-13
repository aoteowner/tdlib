import '../tdapi.dart';

class GiveawayParameters extends TdObject {

  /// Describes parameters of a giveaway
  const GiveawayParameters({
    required this.boostedChatId,
    required this.additionalChatIds,
    required this.winnersSelectionDate,
    required this.onlyNewMembers,
    required this.hasPublicWinners,
    required this.countryCodes,
    required this.prizeDescription,
  });
  
  /// [boostedChatId] Identifier of the supergroup or channel chat, which will be automatically boosted by the winners of the giveaway for duration of the Telegram Premium subscription,. or for the specified time. If the chat is a channel, then can_post_messages right is required in the channel, otherwise, the user must be an administrator in the supergroup
  final int boostedChatId;

  /// [additionalChatIds] Identifiers of other supergroup or channel chats that must be subscribed by the users to be eligible for the giveaway. There can be up to getOption("giveaway_additional_chat_count_max") additional chats
  final List<int> additionalChatIds;

  /// [winnersSelectionDate] Point in time (Unix timestamp) when the giveaway is expected to be performed; must be 60-getOption("giveaway_duration_max") seconds in the future in scheduled giveaways
  final int winnersSelectionDate;

  /// [onlyNewMembers] True, if only new members of the chats will be eligible for the giveaway
  final bool onlyNewMembers;

  /// [hasPublicWinners] True, if the list of winners of the giveaway will be available to everyone
  final bool hasPublicWinners;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of countries, users from which will be eligible for the giveaway. If empty, then all users can participate in the giveaway.. There can be up to getOption("giveaway_country_count_max") chosen countries. Users with phone number that was bought at https://fragment.com can participate in any giveaway and the country code "FT" must not be specified in the list
  final List<String> countryCodes;

  /// [prizeDescription] Additional description of the giveaway prize; 0-128 characters
  final String prizeDescription;
  
  /// Parse from a json
  factory GiveawayParameters.fromJson(Map<String, dynamic> json) => GiveawayParameters(
    boostedChatId: json['boosted_chat_id'] ?? 0,
    additionalChatIds: json['additional_chat_ids'] == null ? <int>[] :(json['additional_chat_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    winnersSelectionDate: json['winners_selection_date'] ?? 0,
    onlyNewMembers: json['only_new_members'] ?? false,
    hasPublicWinners: json['has_public_winners'] ?? false,
    countryCodes: json['country_codes'] == null ? <String>[] :(json['country_codes'] as List).map((e) => (e  ?? '') as String).toList(),
    prizeDescription: json['prize_description'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boosted_chat_id": boostedChatId,
      "additional_chat_ids": additionalChatIds,
      "winners_selection_date": winnersSelectionDate,
      "only_new_members": onlyNewMembers,
      "has_public_winners": hasPublicWinners,
      "country_codes": countryCodes,
      "prize_description": prizeDescription,
    };
  }
  
  GiveawayParameters copyWith({
    int? boostedChatId,
    List<int>? additionalChatIds,
    int? winnersSelectionDate,
    bool? onlyNewMembers,
    bool? hasPublicWinners,
    List<String>? countryCodes,
    String? prizeDescription,
  }) => GiveawayParameters(
    boostedChatId: boostedChatId ?? this.boostedChatId,
    additionalChatIds: additionalChatIds ?? this.additionalChatIds,
    winnersSelectionDate: winnersSelectionDate ?? this.winnersSelectionDate,
    onlyNewMembers: onlyNewMembers ?? this.onlyNewMembers,
    hasPublicWinners: hasPublicWinners ?? this.hasPublicWinners,
    countryCodes: countryCodes ?? this.countryCodes,
    prizeDescription: prizeDescription ?? this.prizeDescription,
  );

  static const CONSTRUCTOR = 'giveawayParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
