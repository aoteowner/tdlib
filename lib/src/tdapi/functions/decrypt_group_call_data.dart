import '../tdapi.dart';

class DecryptGroupCallData extends TdFunction {
  /// Decrypts group call data received by tgcalls
  const DecryptGroupCallData({
    required this.groupCallId,
    required this.participantId,
    this.dataChannel,
    required this.data,
  });

  /// [groupCallId] Group call identifier. The call must not be a video chat
  final int groupCallId;

  /// [participantId] Identifier of the group call participant, which sent the data
  final MessageSender participantId;

  /// [dataChannel] Data channel for which data was encrypted; pass null if unknown
  final GroupCallDataChannel? dataChannel;

  /// [data] Data to decrypt
  final String data;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "data_channel": dataChannel?.toJson(),
      "data": data,
      "@extra": extra,
    };
  }

  DecryptGroupCallData copyWith({
    int? groupCallId,
    MessageSender? participantId,
    GroupCallDataChannel? dataChannel,
    String? data,
  }) {
    return DecryptGroupCallData(
      groupCallId: groupCallId ?? this.groupCallId,
      participantId: participantId ?? this.participantId,
      dataChannel: dataChannel ?? this.dataChannel,
      data: data ?? this.data,
    );
  }

  static const CONSTRUCTOR = 'decryptGroupCallData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
