part of '../tdapi.dart';

class GroupCallParticipants extends TdObject {

  /// Contains identifiers of group call participants
  const GroupCallParticipants({
    required this.totalCount,
    required this.participantIds,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Total number of group call participants 
  final int totalCount;

  /// [participantIds] Identifiers of the participants
  final List<MessageSender> participantIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GroupCallParticipants.fromJson(Map<String, dynamic> json) => GroupCallParticipants(
    totalCount: json['total_count'],
    participantIds: List<MessageSender>.from((json['participant_ids'] ?? []).map((item) => MessageSender.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "participant_ids": participantIds.map((i) => i.toJson()).toList(),
    };
  }
  
  GroupCallParticipants copyWith({
    int? totalCount,
    List<MessageSender>? participantIds,
    dynamic extra,
    int? clientId,
  }) => GroupCallParticipants(
    totalCount: totalCount ?? this.totalCount,
    participantIds: participantIds ?? this.participantIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'groupCallParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
