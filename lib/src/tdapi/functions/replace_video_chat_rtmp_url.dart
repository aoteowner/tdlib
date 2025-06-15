import '../tdapi.dart';

class ReplaceVideoChatRtmpUrl extends TdFunction {
  /// Replaces the current RTMP URL for streaming to the video chat of a chat; requires owner privileges in the chat
  const ReplaceVideoChatRtmpUrl({
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

  ReplaceVideoChatRtmpUrl copyWith({
    int? chatId,
  }) {
    return ReplaceVideoChatRtmpUrl(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'replaceVideoChatRtmpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
