import '../tdapi.dart';

class QuickReplyMessage extends TdObject {
  /// Describes a message that can be used for quick reply
  const QuickReplyMessage({
    required this.id,
    this.sendingState,
    required this.canBeEdited,
    required this.replyToMessageId,
    required this.viaBotUserId,
    required this.mediaAlbumId,
    required this.content,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });

  /// [id] Unique message identifier among all quick replies
  final int id;

  /// [sendingState] The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [canBeEdited] True, if the message can be edited
  final bool canBeEdited;

  /// [replyToMessageId] The identifier of the quick reply message to which the message replies; 0 if none
  final int replyToMessageId;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Inline keyboard reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory QuickReplyMessage.fromJson(Map<String, dynamic> json) =>
      QuickReplyMessage(
        id: json['id'] ?? 0,
        sendingState: MessageSendingState.fromJson(json['sending_state'] ?? {}),
        canBeEdited: json['can_be_edited'] ?? false,
        replyToMessageId: json['reply_to_message_id'] ?? 0,
        viaBotUserId: json['via_bot_user_id'] ?? 0,
        mediaAlbumId: int.tryParse(json['media_album_id'] ?? '') ?? 0,
        content: MessageContent.fromJson(json['content'] ?? {}),
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sending_state": sendingState?.toJson(),
      "can_be_edited": canBeEdited,
      "reply_to_message_id": replyToMessageId,
      "via_bot_user_id": viaBotUserId,
      "media_album_id": mediaAlbumId,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
    };
  }

  QuickReplyMessage copyWith({
    int? id,
    MessageSendingState? sendingState,
    bool? canBeEdited,
    int? replyToMessageId,
    int? viaBotUserId,
    int? mediaAlbumId,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) {
    return QuickReplyMessage(
      id: id ?? this.id,
      sendingState: sendingState ?? this.sendingState,
      canBeEdited: canBeEdited ?? this.canBeEdited,
      replyToMessageId: replyToMessageId ?? this.replyToMessageId,
      viaBotUserId: viaBotUserId ?? this.viaBotUserId,
      mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
      content: content ?? this.content,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'quickReplyMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
