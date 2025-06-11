import '../tdapi.dart';

class StartScheduledVideoChat extends TdFunction {

  /// Starts a scheduled video chat
  const StartScheduledVideoChat({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier of the video chat
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  StartScheduledVideoChat copyWith({
    int? groupCallId,
  }) => StartScheduledVideoChat(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'startScheduledVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
