import '../tdapi.dart';

class EndGroupCallRecording extends TdFunction {
  /// Ends recording of an active group call; for video chats only. Requires groupCall.can_be_managed right
  const EndGroupCallRecording({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }

  EndGroupCallRecording copyWith({
    int? groupCallId,
  }) {
    return EndGroupCallRecording(
      groupCallId: groupCallId ?? this.groupCallId,
    );
  }

  static const CONSTRUCTOR = 'endGroupCallRecording';

  @override
  String getConstructor() => CONSTRUCTOR;
}
