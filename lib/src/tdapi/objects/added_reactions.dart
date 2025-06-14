import '../tdapi.dart';

class AddedReactions extends TdObject {
  /// Represents a list of reactions added to a message
  const AddedReactions({
    required this.totalCount,
    required this.reactions,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [totalCount] The total number of found reactions
  final int totalCount;

  /// [reactions] The list of added reactions
  final List<AddedReaction> reactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory AddedReactions.fromJson(Map<String, dynamic> json) => AddedReactions(
        totalCount: json['total_count'] ?? 0,
        reactions: json['reactions'] == null
            ? <AddedReaction>[]
            : (json['reactions'] as List)
                .map((e) => AddedReaction.fromJson(e ?? {}))
                .toList(),
        nextOffset: json['next_offset'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "reactions": reactions.map((e) => e.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  AddedReactions copyWith({
    int? totalCount,
    List<AddedReaction>? reactions,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) {
    return AddedReactions(
      totalCount: totalCount ?? this.totalCount,
      reactions: reactions ?? this.reactions,
      nextOffset: nextOffset ?? this.nextOffset,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'addedReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
