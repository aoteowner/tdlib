import '../tdapi.dart';

class GetVideoChatAvailableParticipants extends TdFunction {
  /// Returns the list of participant identifiers, on whose behalf a video chat in the chat can be joined
  const GetVideoChatAvailableParticipants({
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

  GetVideoChatAvailableParticipants copyWith({
    int? chatId,
  }) {
    return GetVideoChatAvailableParticipants(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'getVideoChatAvailableParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
