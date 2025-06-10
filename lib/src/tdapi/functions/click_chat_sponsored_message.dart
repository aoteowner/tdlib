part of '../tdapi.dart';

class ClickChatSponsoredMessage extends TdFunction {

  /// Informs TDLib that the user opened the sponsored chat via the button, the name, the chat photo, a mention in the sponsored message text, or the media in the sponsored message
  const ClickChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
    required this.isMediaClick,
    required this.fromFullscreen,
  });
  
  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  /// [isMediaClick] Pass true if the media was clicked in the sponsored message
  final bool isMediaClick;

  /// [fromFullscreen] Pass true if the user expanded the video from the sponsored message fullscreen before the click
  final bool fromFullscreen;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_media_click": isMediaClick,
      "from_fullscreen": fromFullscreen,
      "@extra": extra,
    };
  }
  
  ClickChatSponsoredMessage copyWith({
    int? chatId,
    int? messageId,
    bool? isMediaClick,
    bool? fromFullscreen,
  }) => ClickChatSponsoredMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isMediaClick: isMediaClick ?? this.isMediaClick,
    fromFullscreen: fromFullscreen ?? this.fromFullscreen,
  );

  static const CONSTRUCTOR = 'clickChatSponsoredMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
