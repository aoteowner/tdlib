import '../tdapi.dart';

class AvailableReactions extends TdObject {

  /// Represents a list of reactions that can be added to a message
  const AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
    required this.areTags,
    this.unavailabilityReason,
    this.extra,
    this.clientId,
  });
  
  /// [topReactions] List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// [recentReactions] List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// [popularReactions] List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// [allowCustomEmoji] True, if any custom emoji reaction can be added by Telegram Premium subscribers
  final bool allowCustomEmoji;

  /// [areTags] True, if the reactions will be tags and the message can be found by them
  final bool areTags;

  /// [unavailabilityReason] The reason why the current user can't add reactions to the message, despite some other users can; may be null if none
  final ReactionUnavailabilityReason? unavailabilityReason;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AvailableReactions.fromJson(Map<String, dynamic> json) => AvailableReactions(
    topReactions: json['top_reactions'] == null ? [] :(json['top_reactions'] as List).map((e) => AvailableReaction.fromJson(e ?? {})).toList(),
    recentReactions: json['recent_reactions'] == null ? [] :(json['recent_reactions'] as List).map((e) => AvailableReaction.fromJson(e ?? {})).toList(),
    popularReactions: json['popular_reactions'] == null ? [] :(json['popular_reactions'] as List).map((e) => AvailableReaction.fromJson(e ?? {})).toList(),
    allowCustomEmoji: json['allow_custom_emoji'] ?? false,
    areTags: json['are_tags'] ?? false,
    unavailabilityReason: ReactionUnavailabilityReason.fromJson(json['unavailability_reason'] ?? {}),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "top_reactions": topReactions.map((e) => e.toJson()).toList(),
      "recent_reactions": recentReactions.map((e) => e.toJson()).toList(),
      "popular_reactions": popularReactions.map((e) => e.toJson()).toList(),
      "allow_custom_emoji": allowCustomEmoji,
      "are_tags": areTags,
      "unavailability_reason": unavailabilityReason?.toJson(),
    };
  }
  
  AvailableReactions copyWith({
    List<AvailableReaction>? topReactions,
    List<AvailableReaction>? recentReactions,
    List<AvailableReaction>? popularReactions,
    bool? allowCustomEmoji,
    bool? areTags,
    ReactionUnavailabilityReason? unavailabilityReason,
    dynamic extra,
    int? clientId,
  }) => AvailableReactions(
    topReactions: topReactions ?? this.topReactions,
    recentReactions: recentReactions ?? this.recentReactions,
    popularReactions: popularReactions ?? this.popularReactions,
    allowCustomEmoji: allowCustomEmoji ?? this.allowCustomEmoji,
    areTags: areTags ?? this.areTags,
    unavailabilityReason: unavailabilityReason ?? this.unavailabilityReason,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'availableReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
