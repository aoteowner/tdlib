import '../tdapi.dart';

class GroupCallRecentSpeaker extends TdObject {
  /// Describes a recently speaking participant in a group call
  const GroupCallRecentSpeaker({
    required this.participantId,
    required this.isSpeaking,
  });

  /// [participantId] Group call participant identifier
  final MessageSender participantId;

  /// [isSpeaking] True, is the user has spoken recently
  final bool isSpeaking;

  factory GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) =>
      GroupCallRecentSpeaker(
        participantId: MessageSender.fromJson(json['participant_id'] ?? {}),
        isSpeaking: json['is_speaking'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "is_speaking": isSpeaking,
    };
  }

  GroupCallRecentSpeaker copyWith({
    MessageSender? participantId,
    bool? isSpeaking,
  }) {
    return GroupCallRecentSpeaker(
      participantId: participantId ?? this.participantId,
      isSpeaking: isSpeaking ?? this.isSpeaking,
    );
  }

  static const CONSTRUCTOR = 'groupCallRecentSpeaker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
