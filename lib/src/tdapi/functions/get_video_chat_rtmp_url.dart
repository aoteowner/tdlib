import '../tdapi.dart';

class GetVideoChatRtmpUrl extends TdFunction {
  /// Returns RTMP URL for streaming to the video chat of a chat; requires can_manage_video_chats administrator right
  const GetVideoChatRtmpUrl({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  GetVideoChatRtmpUrl copyWith({
    int? chatId,
  }) {
    return GetVideoChatRtmpUrl(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getVideoChatRtmpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
