part of '../tdapi.dart';

class GetVideoChatStreams extends TdFunction {

  /// Returns information about available video chat streams
  const GetVideoChatStreams({
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
  
  GetVideoChatStreams copyWith({
    int? groupCallId,
  }) => GetVideoChatStreams(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'getVideoChatStreams';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
