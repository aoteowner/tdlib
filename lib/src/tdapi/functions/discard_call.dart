part of '../tdapi.dart';

class DiscardCall extends TdFunction {

  /// Discards a call
  const DiscardCall({
    required this.callId,
    required this.isDisconnected,
    required this.inviteLink,
    required this.duration,
    required this.isVideo,
    required this.connectionId,
  });
  
  /// [callId] Call identifier
  final int callId;

  /// [isDisconnected] Pass true if the user was disconnected
  final bool isDisconnected;

  /// [inviteLink] If the call was upgraded to a group call, pass invite link to the group call
  final String inviteLink;

  /// [duration] The call duration, in seconds
  final int duration;

  /// [isVideo] Pass true if the call was a video call
  final bool isVideo;

  /// [connectionId] Identifier of the connection used during the call
  final int connectionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "is_disconnected": isDisconnected,
      "invite_link": inviteLink,
      "duration": duration,
      "is_video": isVideo,
      "connection_id": connectionId,
      "@extra": extra,
    };
  }
  
  DiscardCall copyWith({
    int? callId,
    bool? isDisconnected,
    String? inviteLink,
    int? duration,
    bool? isVideo,
    int? connectionId,
  }) => DiscardCall(
    callId: callId ?? this.callId,
    isDisconnected: isDisconnected ?? this.isDisconnected,
    inviteLink: inviteLink ?? this.inviteLink,
    duration: duration ?? this.duration,
    isVideo: isVideo ?? this.isVideo,
    connectionId: connectionId ?? this.connectionId,
  );

  static const CONSTRUCTOR = 'discardCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
