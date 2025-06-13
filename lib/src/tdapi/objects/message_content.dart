import '../tdapi.dart';

class MessageContent extends TdObject {

  /// Contains the content of a message
  const MessageContent();
  
  /// a MessageContent return type can be :
  /// * [MessageText]
  /// * [MessageAnimation]
  /// * [MessageAudio]
  /// * [MessageDocument]
  /// * [MessagePaidMedia]
  /// * [MessagePhoto]
  /// * [MessageSticker]
  /// * [MessageVideo]
  /// * [MessageVideoNote]
  /// * [MessageVoiceNote]
  /// * [MessageExpiredPhoto]
  /// * [MessageExpiredVideo]
  /// * [MessageExpiredVideoNote]
  /// * [MessageExpiredVoiceNote]
  /// * [MessageLocation]
  /// * [MessageVenue]
  /// * [MessageContact]
  /// * [MessageAnimatedEmoji]
  /// * [MessageDice]
  /// * [MessageGame]
  /// * [MessagePoll]
  /// * [MessageStory]
  /// * [MessageInvoice]
  /// * [MessageCall]
  /// * [MessageGroupCall]
  /// * [MessageVideoChatScheduled]
  /// * [MessageVideoChatStarted]
  /// * [MessageVideoChatEnded]
  /// * [MessageInviteVideoChatParticipants]
  /// * [MessageBasicGroupChatCreate]
  /// * [MessageSupergroupChatCreate]
  /// * [MessageChatChangeTitle]
  /// * [MessageChatChangePhoto]
  /// * [MessageChatDeletePhoto]
  /// * [MessageChatAddMembers]
  /// * [MessageChatJoinByLink]
  /// * [MessageChatJoinByRequest]
  /// * [MessageChatDeleteMember]
  /// * [MessageChatUpgradeTo]
  /// * [MessageChatUpgradeFrom]
  /// * [MessagePinMessage]
  /// * [MessageScreenshotTaken]
  /// * [MessageChatSetBackground]
  /// * [MessageChatSetTheme]
  /// * [MessageChatSetMessageAutoDeleteTime]
  /// * [MessageChatBoost]
  /// * [MessageForumTopicCreated]
  /// * [MessageForumTopicEdited]
  /// * [MessageForumTopicIsClosedToggled]
  /// * [MessageForumTopicIsHiddenToggled]
  /// * [MessageSuggestProfilePhoto]
  /// * [MessageCustomServiceAction]
  /// * [MessageGameScore]
  /// * [MessagePaymentSuccessful]
  /// * [MessagePaymentSuccessfulBot]
  /// * [MessagePaymentRefunded]
  /// * [MessageGiftedPremium]
  /// * [MessagePremiumGiftCode]
  /// * [MessageGiveawayCreated]
  /// * [MessageGiveaway]
  /// * [MessageGiveawayCompleted]
  /// * [MessageGiveawayWinners]
  /// * [MessageGiftedStars]
  /// * [MessageGiveawayPrizeStars]
  /// * [MessageGift]
  /// * [MessageUpgradedGift]
  /// * [MessageRefundedUpgradedGift]
  /// * [MessagePaidMessagesRefunded]
  /// * [MessagePaidMessagePriceChanged]
  /// * [MessageContactRegistered]
  /// * [MessageUsersShared]
  /// * [MessageChatShared]
  /// * [MessageBotWriteAccessAllowed]
  /// * [MessageWebAppDataSent]
  /// * [MessageWebAppDataReceived]
  /// * [MessagePassportDataSent]
  /// * [MessagePassportDataReceived]
  /// * [MessageProximityAlertTriggered]
  /// * [MessageUnsupported]
  factory MessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessagePaidMedia.CONSTRUCTOR:
        return MessagePaidMedia.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageExpiredVideoNote.CONSTRUCTOR:
        return MessageExpiredVideoNote.fromJson(json);
      case MessageExpiredVoiceNote.CONSTRUCTOR:
        return MessageExpiredVoiceNote.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessageAnimatedEmoji.CONSTRUCTOR:
        return MessageAnimatedEmoji.fromJson(json);
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageStory.CONSTRUCTOR:
        return MessageStory.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageGroupCall.CONSTRUCTOR:
        return MessageGroupCall.fromJson(json);
      case MessageVideoChatScheduled.CONSTRUCTOR:
        return MessageVideoChatScheduled.fromJson(json);
      case MessageVideoChatStarted.CONSTRUCTOR:
        return MessageVideoChatStarted.fromJson(json);
      case MessageVideoChatEnded.CONSTRUCTOR:
        return MessageVideoChatEnded.fromJson(json);
      case MessageInviteVideoChatParticipants.CONSTRUCTOR:
        return MessageInviteVideoChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatJoinByRequest.CONSTRUCTOR:
        return MessageChatJoinByRequest.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetBackground.CONSTRUCTOR:
        return MessageChatSetBackground.fromJson(json);
      case MessageChatSetTheme.CONSTRUCTOR:
        return MessageChatSetTheme.fromJson(json);
      case MessageChatSetMessageAutoDeleteTime.CONSTRUCTOR:
        return MessageChatSetMessageAutoDeleteTime.fromJson(json);
      case MessageChatBoost.CONSTRUCTOR:
        return MessageChatBoost.fromJson(json);
      case MessageForumTopicCreated.CONSTRUCTOR:
        return MessageForumTopicCreated.fromJson(json);
      case MessageForumTopicEdited.CONSTRUCTOR:
        return MessageForumTopicEdited.fromJson(json);
      case MessageForumTopicIsClosedToggled.CONSTRUCTOR:
        return MessageForumTopicIsClosedToggled.fromJson(json);
      case MessageForumTopicIsHiddenToggled.CONSTRUCTOR:
        return MessageForumTopicIsHiddenToggled.fromJson(json);
      case MessageSuggestProfilePhoto.CONSTRUCTOR:
        return MessageSuggestProfilePhoto.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessagePaymentRefunded.CONSTRUCTOR:
        return MessagePaymentRefunded.fromJson(json);
      case MessageGiftedPremium.CONSTRUCTOR:
        return MessageGiftedPremium.fromJson(json);
      case MessagePremiumGiftCode.CONSTRUCTOR:
        return MessagePremiumGiftCode.fromJson(json);
      case MessageGiveawayCreated.CONSTRUCTOR:
        return MessageGiveawayCreated.fromJson(json);
      case MessageGiveaway.CONSTRUCTOR:
        return MessageGiveaway.fromJson(json);
      case MessageGiveawayCompleted.CONSTRUCTOR:
        return MessageGiveawayCompleted.fromJson(json);
      case MessageGiveawayWinners.CONSTRUCTOR:
        return MessageGiveawayWinners.fromJson(json);
      case MessageGiftedStars.CONSTRUCTOR:
        return MessageGiftedStars.fromJson(json);
      case MessageGiveawayPrizeStars.CONSTRUCTOR:
        return MessageGiveawayPrizeStars.fromJson(json);
      case MessageGift.CONSTRUCTOR:
        return MessageGift.fromJson(json);
      case MessageUpgradedGift.CONSTRUCTOR:
        return MessageUpgradedGift.fromJson(json);
      case MessageRefundedUpgradedGift.CONSTRUCTOR:
        return MessageRefundedUpgradedGift.fromJson(json);
      case MessagePaidMessagesRefunded.CONSTRUCTOR:
        return MessagePaidMessagesRefunded.fromJson(json);
      case MessagePaidMessagePriceChanged.CONSTRUCTOR:
        return MessagePaidMessagePriceChanged.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageUsersShared.CONSTRUCTOR:
        return MessageUsersShared.fromJson(json);
      case MessageChatShared.CONSTRUCTOR:
        return MessageChatShared.fromJson(json);
      case MessageBotWriteAccessAllowed.CONSTRUCTOR:
        return MessageBotWriteAccessAllowed.fromJson(json);
      case MessageWebAppDataSent.CONSTRUCTOR:
        return MessageWebAppDataSent.fromJson(json);
      case MessageWebAppDataReceived.CONSTRUCTOR:
        return MessageWebAppDataReceived.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return const MessageContent();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageContent copyWith() => const MessageContent();

  static const CONSTRUCTOR = 'messageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageText extends MessageContent {

  /// A text message
  const MessageText({
    required this.text,
    this.linkPreview,
    this.linkPreviewOptions,
  });
  
  /// [text] Text of the message
  final FormattedText text;

  /// [linkPreview] A link preview attached to the message; may be null
  final LinkPreview? linkPreview;

  /// [linkPreviewOptions] Options which were used for generation of the link preview; may be null if default options were used
  final LinkPreviewOptions? linkPreviewOptions;
  
  /// Parse from a json
  factory MessageText.fromJson(Map<String, dynamic> json) => MessageText(
    text: FormattedText.fromJson(json['text'] ?? {}),
    linkPreview: LinkPreview.fromJson(json['link_preview'] ?? {}),
    linkPreviewOptions: LinkPreviewOptions.fromJson(json['link_preview_options'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "link_preview": linkPreview?.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
    };
  }
  
  @override
  MessageText copyWith({
    FormattedText? text,
    LinkPreview? linkPreview,
    LinkPreviewOptions? linkPreviewOptions,
  }) => MessageText(
    text: text ?? this.text,
    linkPreview: linkPreview ?? this.linkPreview,
    linkPreviewOptions: linkPreviewOptions ?? this.linkPreviewOptions,
  );

  static const CONSTRUCTOR = 'messageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageAnimation extends MessageContent {

  /// An animation message (GIF-style).
  const MessageAnimation({
    required this.animation,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// [animation] The animation description
  final Animation animation;

  /// [caption] Animation caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageAnimation.fromJson(Map<String, dynamic> json) => MessageAnimation(
    animation: Animation.fromJson(json['animation'] ?? {}),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
    hasSpoiler: json['has_spoiler'] ?? false,
    isSecret: json['is_secret'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "caption": caption.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }
  
  @override
  MessageAnimation copyWith({
    Animation? animation,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessageAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const CONSTRUCTOR = 'messageAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageAudio extends MessageContent {

  /// An audio message
  const MessageAudio({
    required this.audio,
    required this.caption,
  });
  
  /// [audio] The audio description 
  final Audio audio;

  /// [caption] Audio caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageAudio.fromJson(Map<String, dynamic> json) => MessageAudio(
    audio: Audio.fromJson(json['audio'] ?? {}),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  MessageAudio copyWith({
    Audio? audio,
    FormattedText? caption,
  }) => MessageAudio(
    audio: audio ?? this.audio,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'messageAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageDocument extends MessageContent {

  /// A document message (general file)
  const MessageDocument({
    required this.document,
    required this.caption,
  });
  
  /// [document] The document description 
  final Document document;

  /// [caption] Document caption
  final FormattedText caption;
  
  /// Parse from a json
  factory MessageDocument.fromJson(Map<String, dynamic> json) => MessageDocument(
    document: Document.fromJson(json['document'] ?? {}),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "caption": caption.toJson(),
    };
  }
  
  @override
  MessageDocument copyWith({
    Document? document,
    FormattedText? caption,
  }) => MessageDocument(
    document: document ?? this.document,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'messageDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaidMedia extends MessageContent {

  /// A message with paid media
  const MessagePaidMedia({
    required this.starCount,
    required this.media,
    required this.caption,
    required this.showCaptionAboveMedia,
  });
  
  /// [starCount] Number of Telegram Stars needed to buy access to the media in the message
  final int starCount;

  /// [media] Information about the media
  final List<PaidMedia> media;

  /// [caption] Media caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the media; otherwise, the caption must be shown below the media
  final bool showCaptionAboveMedia;
  
  /// Parse from a json
  factory MessagePaidMedia.fromJson(Map<String, dynamic> json) => MessagePaidMedia(
    starCount: json['star_count'] ?? 0,
    media: json['media'] == null ? [] :(json['media'] as List).map((e) => PaidMedia.fromJson(e ?? {})).toList(),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "media": media.map((e) => e.toJson()).toList(),
      "caption": caption.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
    };
  }
  
  @override
  MessagePaidMedia copyWith({
    int? starCount,
    List<PaidMedia>? media,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
  }) => MessagePaidMedia(
    starCount: starCount ?? this.starCount,
    media: media ?? this.media,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
  );

  static const CONSTRUCTOR = 'messagePaidMedia';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePhoto extends MessageContent {

  /// A photo message
  const MessagePhoto({
    required this.photo,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// [photo] The photo
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessagePhoto.fromJson(Map<String, dynamic> json) => MessagePhoto(
    photo: Photo.fromJson(json['photo'] ?? {}),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
    hasSpoiler: json['has_spoiler'] ?? false,
    isSecret: json['is_secret'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }
  
  @override
  MessagePhoto copyWith({
    Photo? photo,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessagePhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const CONSTRUCTOR = 'messagePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSticker extends MessageContent {

  /// A sticker message
  const MessageSticker({
    required this.sticker,
    required this.isPremium,
  });
  
  /// [sticker] The sticker description 
  final Sticker sticker;

  /// [isPremium] True, if premium animation of the sticker must be played
  final bool isPremium;
  
  /// Parse from a json
  factory MessageSticker.fromJson(Map<String, dynamic> json) => MessageSticker(
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
    isPremium: json['is_premium'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "is_premium": isPremium,
    };
  }
  
  @override
  MessageSticker copyWith({
    Sticker? sticker,
    bool? isPremium,
  }) => MessageSticker(
    sticker: sticker ?? this.sticker,
    isPremium: isPremium ?? this.isPremium,
  );

  static const CONSTRUCTOR = 'messageSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVideo extends MessageContent {

  /// A video message
  const MessageVideo({
    required this.video,
    required this.alternativeVideos,
    this.cover,
    required this.startTimestamp,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });
  
  /// [video] The video description
  final Video video;

  /// [alternativeVideos] Alternative qualities of the video
  final List<AlternativeVideo> alternativeVideos;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in seconds
  final int startTimestamp;

  /// [caption] Video caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the video; otherwise, the caption must be shown below the video
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageVideo.fromJson(Map<String, dynamic> json) => MessageVideo(
    video: Video.fromJson(json['video'] ?? {}),
    alternativeVideos: json['alternative_videos'] == null ? [] :(json['alternative_videos'] as List).map((e) => AlternativeVideo.fromJson(e ?? {})).toList(),
    cover: Photo.fromJson(json['cover'] ?? {}),
    startTimestamp: json['start_timestamp'] ?? 0,
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
    hasSpoiler: json['has_spoiler'] ?? false,
    isSecret: json['is_secret'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "alternative_videos": alternativeVideos.map((e) => e.toJson()).toList(),
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
      "caption": caption.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }
  
  @override
  MessageVideo copyWith({
    Video? video,
    List<AlternativeVideo>? alternativeVideos,
    Photo? cover,
    int? startTimestamp,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    bool? hasSpoiler,
    bool? isSecret,
  }) => MessageVideo(
    video: video ?? this.video,
    alternativeVideos: alternativeVideos ?? this.alternativeVideos,
    cover: cover ?? this.cover,
    startTimestamp: startTimestamp ?? this.startTimestamp,
    caption: caption ?? this.caption,
    showCaptionAboveMedia: showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    isSecret: isSecret ?? this.isSecret,
  );

  static const CONSTRUCTOR = 'messageVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVideoNote extends MessageContent {

  /// A video note message
  const MessageVideoNote({
    required this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });
  
  /// [videoNote] The video note description 
  final VideoNote videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video note 
  final bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  final bool isSecret;
  
  /// Parse from a json
  factory MessageVideoNote.fromJson(Map<String, dynamic> json) => MessageVideoNote(
    videoNote: VideoNote.fromJson(json['video_note'] ?? {}),
    isViewed: json['is_viewed'] ?? false,
    isSecret: json['is_secret'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote.toJson(),
      "is_viewed": isViewed,
      "is_secret": isSecret,
    };
  }
  
  @override
  MessageVideoNote copyWith({
    VideoNote? videoNote,
    bool? isViewed,
    bool? isSecret,
  }) => MessageVideoNote(
    videoNote: videoNote ?? this.videoNote,
    isViewed: isViewed ?? this.isViewed,
    isSecret: isSecret ?? this.isSecret,
  );

  static const CONSTRUCTOR = 'messageVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVoiceNote extends MessageContent {

  /// A voice note message
  const MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });
  
  /// [voiceNote] The voice note description 
  final VoiceNote voiceNote;

  /// [caption] Voice note caption 
  final FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the voice note
  final bool isListened;
  
  /// Parse from a json
  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) => MessageVoiceNote(
    voiceNote: VoiceNote.fromJson(json['voice_note'] ?? {}),
    caption: FormattedText.fromJson(json['caption'] ?? {}),
    isListened: json['is_listened'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote.toJson(),
      "caption": caption.toJson(),
      "is_listened": isListened,
    };
  }
  
  @override
  MessageVoiceNote copyWith({
    VoiceNote? voiceNote,
    FormattedText? caption,
    bool? isListened,
  }) => MessageVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    caption: caption ?? this.caption,
    isListened: isListened ?? this.isListened,
  );

  static const CONSTRUCTOR = 'messageVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageExpiredPhoto extends MessageContent {

  /// A self-destructed photo message
  const MessageExpiredPhoto();
  
  /// Parse from a json
  factory MessageExpiredPhoto.fromJson(Map<String, dynamic> json) => const MessageExpiredPhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageExpiredPhoto copyWith() => const MessageExpiredPhoto();

  static const CONSTRUCTOR = 'messageExpiredPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageExpiredVideo extends MessageContent {

  /// A self-destructed video message
  const MessageExpiredVideo();
  
  /// Parse from a json
  factory MessageExpiredVideo.fromJson(Map<String, dynamic> json) => const MessageExpiredVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageExpiredVideo copyWith() => const MessageExpiredVideo();

  static const CONSTRUCTOR = 'messageExpiredVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageExpiredVideoNote extends MessageContent {

  /// A self-destructed video note message
  const MessageExpiredVideoNote();
  
  /// Parse from a json
  factory MessageExpiredVideoNote.fromJson(Map<String, dynamic> json) => const MessageExpiredVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageExpiredVideoNote copyWith() => const MessageExpiredVideoNote();

  static const CONSTRUCTOR = 'messageExpiredVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageExpiredVoiceNote extends MessageContent {

  /// A self-destructed voice note message
  const MessageExpiredVoiceNote();
  
  /// Parse from a json
  factory MessageExpiredVoiceNote.fromJson(Map<String, dynamic> json) => const MessageExpiredVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageExpiredVoiceNote copyWith() => const MessageExpiredVoiceNote();

  static const CONSTRUCTOR = 'messageExpiredVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageLocation extends MessageContent {

  /// A message with a location
  const MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// [location] The location description
  final Location location;

  /// [livePeriod] Time relative to the message send date, for which the location can be updated, in seconds; if 0x7FFFFFFF, then location can be updated forever
  final int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds. If 0, then the location can't be updated anymore. The update updateMessageContent is not sent when this field changes
  final int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender
  final int proximityAlertRadius;
  
  /// Parse from a json
  factory MessageLocation.fromJson(Map<String, dynamic> json) => MessageLocation(
    location: Location.fromJson(json['location'] ?? {}),
    livePeriod: json['live_period'] ?? 0,
    expiresIn: json['expires_in'] ?? 0,
    heading: json['heading'] ?? 0,
    proximityAlertRadius: json['proximity_alert_radius'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "live_period": livePeriod,
      "expires_in": expiresIn,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }
  
  @override
  MessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? expiresIn,
    int? heading,
    int? proximityAlertRadius,
  }) => MessageLocation(
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    expiresIn: expiresIn ?? this.expiresIn,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  static const CONSTRUCTOR = 'messageLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVenue extends MessageContent {

  /// A message with information about a venue
  const MessageVenue({
    required this.venue,
  });
  
  /// [venue] The venue description
  final Venue venue;
  
  /// Parse from a json
  factory MessageVenue.fromJson(Map<String, dynamic> json) => MessageVenue(
    venue: Venue.fromJson(json['venue'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "venue": venue.toJson(),
    };
  }
  
  @override
  MessageVenue copyWith({
    Venue? venue,
  }) => MessageVenue(
    venue: venue ?? this.venue,
  );

  static const CONSTRUCTOR = 'messageVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageContact extends MessageContent {

  /// A message with a user contact
  const MessageContact({
    required this.contact,
  });
  
  /// [contact] The contact description
  final Contact contact;
  
  /// Parse from a json
  factory MessageContact.fromJson(Map<String, dynamic> json) => MessageContact(
    contact: Contact.fromJson(json['contact'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "contact": contact.toJson(),
    };
  }
  
  @override
  MessageContact copyWith({
    Contact? contact,
  }) => MessageContact(
    contact: contact ?? this.contact,
  );

  static const CONSTRUCTOR = 'messageContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageAnimatedEmoji extends MessageContent {

  /// A message with an animated emoji
  const MessageAnimatedEmoji({
    required this.animatedEmoji,
    required this.emoji,
  });
  
  /// [animatedEmoji] The animated emoji 
  final AnimatedEmoji animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;
  
  /// Parse from a json
  factory MessageAnimatedEmoji.fromJson(Map<String, dynamic> json) => MessageAnimatedEmoji(
    animatedEmoji: AnimatedEmoji.fromJson(json['animated_emoji'] ?? {}),
    emoji: json['emoji'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animated_emoji": animatedEmoji.toJson(),
      "emoji": emoji,
    };
  }
  
  @override
  MessageAnimatedEmoji copyWith({
    AnimatedEmoji? animatedEmoji,
    String? emoji,
  }) => MessageAnimatedEmoji(
    animatedEmoji: animatedEmoji ?? this.animatedEmoji,
    emoji: emoji ?? this.emoji,
  );

  static const CONSTRUCTOR = 'messageAnimatedEmoji';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageDice extends MessageContent {

  /// A dice message. The dice value is randomly generated by the server
  const MessageDice({
    this.initialState,
    this.finalState,
    required this.emoji,
    required this.value,
    required this.successAnimationFrameNumber,
  });
  
  /// [initialState] The animated stickers with the initial dice animation; may be null if unknown. The update updateMessageContent will be sent when the sticker became known
  final DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be null if unknown. The update updateMessageContent will be sent when the sticker became known
  final DiceStickers? finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [value] The dice value. If the value is 0, the dice don't have final state yet
  final int value;

  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  final int successAnimationFrameNumber;
  
  /// Parse from a json
  factory MessageDice.fromJson(Map<String, dynamic> json) => MessageDice(
    initialState: DiceStickers.fromJson(json['initial_state'] ?? {}),
    finalState: DiceStickers.fromJson(json['final_state'] ?? {}),
    emoji: json['emoji'] ?? '',
    value: json['value'] ?? 0,
    successAnimationFrameNumber: json['success_animation_frame_number'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "initial_state": initialState?.toJson(),
      "final_state": finalState?.toJson(),
      "emoji": emoji,
      "value": value,
      "success_animation_frame_number": successAnimationFrameNumber,
    };
  }
  
  @override
  MessageDice copyWith({
    DiceStickers? initialState,
    DiceStickers? finalState,
    String? emoji,
    int? value,
    int? successAnimationFrameNumber,
  }) => MessageDice(
    initialState: initialState ?? this.initialState,
    finalState: finalState ?? this.finalState,
    emoji: emoji ?? this.emoji,
    value: value ?? this.value,
    successAnimationFrameNumber: successAnimationFrameNumber ?? this.successAnimationFrameNumber,
  );

  static const CONSTRUCTOR = 'messageDice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGame extends MessageContent {

  /// A message with a game
  const MessageGame({
    required this.game,
  });
  
  /// [game] The game description
  final Game game;
  
  /// Parse from a json
  factory MessageGame.fromJson(Map<String, dynamic> json) => MessageGame(
    game: Game.fromJson(json['game'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "game": game.toJson(),
    };
  }
  
  @override
  MessageGame copyWith({
    Game? game,
  }) => MessageGame(
    game: game ?? this.game,
  );

  static const CONSTRUCTOR = 'messageGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePoll extends MessageContent {

  /// A message with a poll
  const MessagePoll({
    required this.poll,
  });
  
  /// [poll] The poll description
  final Poll poll;
  
  /// Parse from a json
  factory MessagePoll.fromJson(Map<String, dynamic> json) => MessagePoll(
    poll: Poll.fromJson(json['poll'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll": poll.toJson(),
    };
  }
  
  @override
  MessagePoll copyWith({
    Poll? poll,
  }) => MessagePoll(
    poll: poll ?? this.poll,
  );

  static const CONSTRUCTOR = 'messagePoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageStory extends MessageContent {

  /// A message with a forwarded story
  const MessageStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.viaMention,
  });
  
  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [viaMention] True, if the story was automatically forwarded because of a mention of the user
  final bool viaMention;
  
  /// Parse from a json
  factory MessageStory.fromJson(Map<String, dynamic> json) => MessageStory(
    storyPosterChatId: json['story_poster_chat_id'] ?? 0,
    storyId: json['story_id'] ?? 0,
    viaMention: json['via_mention'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
      "via_mention": viaMention,
    };
  }
  
  @override
  MessageStory copyWith({
    int? storyPosterChatId,
    int? storyId,
    bool? viaMention,
  }) => MessageStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
    viaMention: viaMention ?? this.viaMention,
  );

  static const CONSTRUCTOR = 'messageStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageInvoice extends MessageContent {

  /// A message with an invoice from a bot. Use getInternalLink with internalLinkTypeBotStart to share the invoice
  const MessageInvoice({
    required this.productInfo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.paidMedia,
    this.paidMediaCaption,
  });
  
  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Product total price in the smallest units of the currency
  final int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter to be passed to getInternalLink
  final String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  final bool isTest;

  /// [needShippingAddress] True, if the shipping address must be specified
  final bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  final int receiptMessageId;

  /// [paidMedia] Extended media attached to the invoice; may be null if none
  final PaidMedia? paidMedia;

  /// [paidMediaCaption] Extended media caption; may be null if none
  final FormattedText? paidMediaCaption;
  
  /// Parse from a json
  factory MessageInvoice.fromJson(Map<String, dynamic> json) => MessageInvoice(
    productInfo: ProductInfo.fromJson(json['product_info'] ?? {}),
    currency: json['currency'] ?? '',
    totalAmount: json['total_amount'] ?? 0,
    startParameter: json['start_parameter'] ?? '',
    isTest: json['is_test'] ?? false,
    needShippingAddress: json['need_shipping_address'] ?? false,
    receiptMessageId: json['receipt_message_id'] ?? 0,
    paidMedia: PaidMedia.fromJson(json['paid_media'] ?? {}),
    paidMediaCaption: FormattedText.fromJson(json['paid_media_caption'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "product_info": productInfo.toJson(),
      "currency": currency,
      "total_amount": totalAmount,
      "start_parameter": startParameter,
      "is_test": isTest,
      "need_shipping_address": needShippingAddress,
      "receipt_message_id": receiptMessageId,
      "paid_media": paidMedia?.toJson(),
      "paid_media_caption": paidMediaCaption?.toJson(),
    };
  }
  
  @override
  MessageInvoice copyWith({
    ProductInfo? productInfo,
    String? currency,
    int? totalAmount,
    String? startParameter,
    bool? isTest,
    bool? needShippingAddress,
    int? receiptMessageId,
    PaidMedia? paidMedia,
    FormattedText? paidMediaCaption,
  }) => MessageInvoice(
    productInfo: productInfo ?? this.productInfo,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    startParameter: startParameter ?? this.startParameter,
    isTest: isTest ?? this.isTest,
    needShippingAddress: needShippingAddress ?? this.needShippingAddress,
    receiptMessageId: receiptMessageId ?? this.receiptMessageId,
    paidMedia: paidMedia ?? this.paidMedia,
    paidMediaCaption: paidMediaCaption ?? this.paidMediaCaption,
  );

  static const CONSTRUCTOR = 'messageInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageCall extends MessageContent {

  /// A message with information about an ended call
  const MessageCall({
    required this.isVideo,
    required this.discardReason,
    required this.duration,
  });
  
  /// [isVideo] True, if the call was a video call 
  final bool isVideo;

  /// [discardReason] Reason why the call was discarded 
  final CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  final int duration;
  
  /// Parse from a json
  factory MessageCall.fromJson(Map<String, dynamic> json) => MessageCall(
    isVideo: json['is_video'] ?? false,
    discardReason: CallDiscardReason.fromJson(json['discard_reason'] ?? {}),
    duration: json['duration'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_video": isVideo,
      "discard_reason": discardReason.toJson(),
      "duration": duration,
    };
  }
  
  @override
  MessageCall copyWith({
    bool? isVideo,
    CallDiscardReason? discardReason,
    int? duration,
  }) => MessageCall(
    isVideo: isVideo ?? this.isVideo,
    discardReason: discardReason ?? this.discardReason,
    duration: duration ?? this.duration,
  );

  static const CONSTRUCTOR = 'messageCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGroupCall extends MessageContent {

  /// A message with information about a group call not bound to a chat. If the message is incoming, the call isn't active, isn't missed, and has no duration,. and getOption("can_accept_calls") is true, then incoming call screen must be shown to the user. Use joinGroupCall to accept the call or declineGroupCallInvitation to decline it.. If the call become active or missed, then the call screen must be hidden
  const MessageGroupCall({
    required this.isActive,
    required this.wasMissed,
    required this.isVideo,
    required this.duration,
    required this.otherParticipantIds,
  });
  
  /// [isActive] True, if the call is active, i.e. the called user joined the call
  final bool isActive;

  /// [wasMissed] True, if the called user missed or declined the call
  final bool wasMissed;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [duration] Call duration, in seconds; for left calls only
  final int duration;

  /// [otherParticipantIds] Identifiers of some other call participants
  final List<MessageSender> otherParticipantIds;
  
  /// Parse from a json
  factory MessageGroupCall.fromJson(Map<String, dynamic> json) => MessageGroupCall(
    isActive: json['is_active'] ?? false,
    wasMissed: json['was_missed'] ?? false,
    isVideo: json['is_video'] ?? false,
    duration: json['duration'] ?? 0,
    otherParticipantIds: json['other_participant_ids'] == null ? [] :(json['other_participant_ids'] as List).map((e) => MessageSender.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_active": isActive,
      "was_missed": wasMissed,
      "is_video": isVideo,
      "duration": duration,
      "other_participant_ids": otherParticipantIds.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  MessageGroupCall copyWith({
    bool? isActive,
    bool? wasMissed,
    bool? isVideo,
    int? duration,
    List<MessageSender>? otherParticipantIds,
  }) => MessageGroupCall(
    isActive: isActive ?? this.isActive,
    wasMissed: wasMissed ?? this.wasMissed,
    isVideo: isVideo ?? this.isVideo,
    duration: duration ?? this.duration,
    otherParticipantIds: otherParticipantIds ?? this.otherParticipantIds,
  );

  static const CONSTRUCTOR = 'messageGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVideoChatScheduled extends MessageContent {

  /// A new video chat was scheduled
  const MessageVideoChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });
  
  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall 
  final int groupCallId;

  /// [startDate] Point in time (Unix timestamp) when the group call is expected to be started by an administrator
  final int startDate;
  
  /// Parse from a json
  factory MessageVideoChatScheduled.fromJson(Map<String, dynamic> json) => MessageVideoChatScheduled(
    groupCallId: json['group_call_id'] ?? 0,
    startDate: json['start_date'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "start_date": startDate,
    };
  }
  
  @override
  MessageVideoChatScheduled copyWith({
    int? groupCallId,
    int? startDate,
  }) => MessageVideoChatScheduled(
    groupCallId: groupCallId ?? this.groupCallId,
    startDate: startDate ?? this.startDate,
  );

  static const CONSTRUCTOR = 'messageVideoChatScheduled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVideoChatStarted extends MessageContent {

  /// A newly created video chat
  const MessageVideoChatStarted({
    required this.groupCallId,
  });
  
  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;
  
  /// Parse from a json
  factory MessageVideoChatStarted.fromJson(Map<String, dynamic> json) => MessageVideoChatStarted(
    groupCallId: json['group_call_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }
  
  @override
  MessageVideoChatStarted copyWith({
    int? groupCallId,
  }) => MessageVideoChatStarted(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'messageVideoChatStarted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageVideoChatEnded extends MessageContent {

  /// A message with information about an ended video chat
  const MessageVideoChatEnded({
    required this.duration,
  });
  
  /// [duration] Call duration, in seconds
  final int duration;
  
  /// Parse from a json
  factory MessageVideoChatEnded.fromJson(Map<String, dynamic> json) => MessageVideoChatEnded(
    duration: json['duration'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
    };
  }
  
  @override
  MessageVideoChatEnded copyWith({
    int? duration,
  }) => MessageVideoChatEnded(
    duration: duration ?? this.duration,
  );

  static const CONSTRUCTOR = 'messageVideoChatEnded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageInviteVideoChatParticipants extends MessageContent {

  /// A message with information about an invitation to a video chat
  const MessageInviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });
  
  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall 
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;
  
  /// Parse from a json
  factory MessageInviteVideoChatParticipants.fromJson(Map<String, dynamic> json) => MessageInviteVideoChatParticipants(
    groupCallId: json['group_call_id'] ?? 0,
    userIds: json['user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_ids": userIds,
    };
  }
  
  @override
  MessageInviteVideoChatParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) => MessageInviteVideoChatParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'messageInviteVideoChatParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageBasicGroupChatCreate extends MessageContent {

  /// A newly created basic group
  const MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });
  
  /// [title] Title of the basic group 
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;
  
  /// Parse from a json
  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => MessageBasicGroupChatCreate(
    title: json['title'] ?? '',
    memberUserIds: json['member_user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "member_user_ids": memberUserIds,
    };
  }
  
  @override
  MessageBasicGroupChatCreate copyWith({
    String? title,
    List<int>? memberUserIds,
  }) => MessageBasicGroupChatCreate(
    title: title ?? this.title,
    memberUserIds: memberUserIds ?? this.memberUserIds,
  );

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSupergroupChatCreate extends MessageContent {

  /// A newly created supergroup or channel
  const MessageSupergroupChatCreate({
    required this.title,
  });
  
  /// [title] Title of the supergroup or channel
  final String title;
  
  /// Parse from a json
  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) => MessageSupergroupChatCreate(
    title: json['title'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
    };
  }
  
  @override
  MessageSupergroupChatCreate copyWith({
    String? title,
  }) => MessageSupergroupChatCreate(
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'messageSupergroupChatCreate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatChangeTitle extends MessageContent {

  /// An updated chat title
  const MessageChatChangeTitle({
    required this.title,
  });
  
  /// [title] New chat title
  final String title;
  
  /// Parse from a json
  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) => MessageChatChangeTitle(
    title: json['title'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
    };
  }
  
  @override
  MessageChatChangeTitle copyWith({
    String? title,
  }) => MessageChatChangeTitle(
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'messageChatChangeTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatChangePhoto extends MessageContent {

  /// An updated chat photo
  const MessageChatChangePhoto({
    required this.photo,
  });
  
  /// [photo] New chat photo
  final ChatPhoto photo;
  
  /// Parse from a json
  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) => MessageChatChangePhoto(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  MessageChatChangePhoto copyWith({
    ChatPhoto? photo,
  }) => MessageChatChangePhoto(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'messageChatChangePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatDeletePhoto extends MessageContent {

  /// A deleted chat photo
  const MessageChatDeletePhoto();
  
  /// Parse from a json
  factory MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) => const MessageChatDeletePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageChatDeletePhoto copyWith() => const MessageChatDeletePhoto();

  static const CONSTRUCTOR = 'messageChatDeletePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatAddMembers extends MessageContent {

  /// New chat members were added
  const MessageChatAddMembers({
    required this.memberUserIds,
  });
  
  /// [memberUserIds] User identifiers of the new members
  final List<int> memberUserIds;
  
  /// Parse from a json
  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) => MessageChatAddMembers(
    memberUserIds: json['member_user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": memberUserIds,
    };
  }
  
  @override
  MessageChatAddMembers copyWith({
    List<int>? memberUserIds,
  }) => MessageChatAddMembers(
    memberUserIds: memberUserIds ?? this.memberUserIds,
  );

  static const CONSTRUCTOR = 'messageChatAddMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatJoinByLink extends MessageContent {

  /// A new member joined the chat via an invite link
  const MessageChatJoinByLink();
  
  /// Parse from a json
  factory MessageChatJoinByLink.fromJson(Map<String, dynamic> json) => const MessageChatJoinByLink();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageChatJoinByLink copyWith() => const MessageChatJoinByLink();

  static const CONSTRUCTOR = 'messageChatJoinByLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatJoinByRequest extends MessageContent {

  /// A new member was accepted to the chat by an administrator
  const MessageChatJoinByRequest();
  
  /// Parse from a json
  factory MessageChatJoinByRequest.fromJson(Map<String, dynamic> json) => const MessageChatJoinByRequest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageChatJoinByRequest copyWith() => const MessageChatJoinByRequest();

  static const CONSTRUCTOR = 'messageChatJoinByRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatDeleteMember extends MessageContent {

  /// A chat member was deleted
  const MessageChatDeleteMember({
    required this.userId,
  });
  
  /// [userId] User identifier of the deleted chat member
  final int userId;
  
  /// Parse from a json
  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) => MessageChatDeleteMember(
    userId: json['user_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }
  
  @override
  MessageChatDeleteMember copyWith({
    int? userId,
  }) => MessageChatDeleteMember(
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'messageChatDeleteMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatUpgradeTo extends MessageContent {

  /// A basic group was upgraded to a supergroup and was deactivated as the result
  const MessageChatUpgradeTo({
    required this.supergroupId,
  });
  
  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  final int supergroupId;
  
  /// Parse from a json
  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) => MessageChatUpgradeTo(
    supergroupId: json['supergroup_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
    };
  }
  
  @override
  MessageChatUpgradeTo copyWith({
    int? supergroupId,
  }) => MessageChatUpgradeTo(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const CONSTRUCTOR = 'messageChatUpgradeTo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatUpgradeFrom extends MessageContent {

  /// A supergroup has been created from a basic group
  const MessageChatUpgradeFrom({
    required this.title,
    required this.basicGroupId,
  });
  
  /// [title] Title of the newly created supergroup 
  final String title;

  /// [basicGroupId] The identifier of the original basic group
  final int basicGroupId;
  
  /// Parse from a json
  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) => MessageChatUpgradeFrom(
    title: json['title'] ?? '',
    basicGroupId: json['basic_group_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "basic_group_id": basicGroupId,
    };
  }
  
  @override
  MessageChatUpgradeFrom copyWith({
    String? title,
    int? basicGroupId,
  }) => MessageChatUpgradeFrom(
    title: title ?? this.title,
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const CONSTRUCTOR = 'messageChatUpgradeFrom';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePinMessage extends MessageContent {

  /// A message has been pinned
  const MessagePinMessage({
    required this.messageId,
  });
  
  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  final int messageId;
  
  /// Parse from a json
  factory MessagePinMessage.fromJson(Map<String, dynamic> json) => MessagePinMessage(
    messageId: json['message_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
    };
  }
  
  @override
  MessagePinMessage copyWith({
    int? messageId,
  }) => MessagePinMessage(
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'messagePinMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageScreenshotTaken extends MessageContent {

  /// A screenshot of a message in the chat has been taken
  const MessageScreenshotTaken();
  
  /// Parse from a json
  factory MessageScreenshotTaken.fromJson(Map<String, dynamic> json) => const MessageScreenshotTaken();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageScreenshotTaken copyWith() => const MessageScreenshotTaken();

  static const CONSTRUCTOR = 'messageScreenshotTaken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatSetBackground extends MessageContent {

  /// A new background was set in the chat
  const MessageChatSetBackground({
    required this.oldBackgroundMessageId,
    required this.background,
    required this.onlyForSelf,
  });
  
  /// [oldBackgroundMessageId] Identifier of the message with a previously set same background; 0 if none. Can be an identifier of a deleted message
  final int oldBackgroundMessageId;

  /// [background] The new background
  final ChatBackground background;

  /// [onlyForSelf] True, if the background was set only for self
  final bool onlyForSelf;
  
  /// Parse from a json
  factory MessageChatSetBackground.fromJson(Map<String, dynamic> json) => MessageChatSetBackground(
    oldBackgroundMessageId: json['old_background_message_id'] ?? 0,
    background: ChatBackground.fromJson(json['background'] ?? {}),
    onlyForSelf: json['only_for_self'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_background_message_id": oldBackgroundMessageId,
      "background": background.toJson(),
      "only_for_self": onlyForSelf,
    };
  }
  
  @override
  MessageChatSetBackground copyWith({
    int? oldBackgroundMessageId,
    ChatBackground? background,
    bool? onlyForSelf,
  }) => MessageChatSetBackground(
    oldBackgroundMessageId: oldBackgroundMessageId ?? this.oldBackgroundMessageId,
    background: background ?? this.background,
    onlyForSelf: onlyForSelf ?? this.onlyForSelf,
  );

  static const CONSTRUCTOR = 'messageChatSetBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatSetTheme extends MessageContent {

  /// A theme in the chat has been changed
  const MessageChatSetTheme({
    required this.themeName,
  });
  
  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one
  final String themeName;
  
  /// Parse from a json
  factory MessageChatSetTheme.fromJson(Map<String, dynamic> json) => MessageChatSetTheme(
    themeName: json['theme_name'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }
  
  @override
  MessageChatSetTheme copyWith({
    String? themeName,
  }) => MessageChatSetTheme(
    themeName: themeName ?? this.themeName,
  );

  static const CONSTRUCTOR = 'messageChatSetTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatSetMessageAutoDeleteTime extends MessageContent {

  /// The auto-delete or self-destruct timer for messages in the chat has been changed
  const MessageChatSetMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
    required this.fromUserId,
  });
  
  /// [messageAutoDeleteTime] New value auto-delete or self-destruct time, in seconds; 0 if disabled 
  final int messageAutoDeleteTime;

  /// [fromUserId] If not 0, a user identifier, which default setting was automatically applied
  final int fromUserId;
  
  /// Parse from a json
  factory MessageChatSetMessageAutoDeleteTime.fromJson(Map<String, dynamic> json) => MessageChatSetMessageAutoDeleteTime(
    messageAutoDeleteTime: json['message_auto_delete_time'] ?? 0,
    fromUserId: json['from_user_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_auto_delete_time": messageAutoDeleteTime,
      "from_user_id": fromUserId,
    };
  }
  
  @override
  MessageChatSetMessageAutoDeleteTime copyWith({
    int? messageAutoDeleteTime,
    int? fromUserId,
  }) => MessageChatSetMessageAutoDeleteTime(
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
    fromUserId: fromUserId ?? this.fromUserId,
  );

  static const CONSTRUCTOR = 'messageChatSetMessageAutoDeleteTime';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatBoost extends MessageContent {

  /// The chat was boosted by the sender of the message
  const MessageChatBoost({
    required this.boostCount,
  });
  
  /// [boostCount] Number of times the chat was boosted
  final int boostCount;
  
  /// Parse from a json
  factory MessageChatBoost.fromJson(Map<String, dynamic> json) => MessageChatBoost(
    boostCount: json['boost_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boost_count": boostCount,
    };
  }
  
  @override
  MessageChatBoost copyWith({
    int? boostCount,
  }) => MessageChatBoost(
    boostCount: boostCount ?? this.boostCount,
  );

  static const CONSTRUCTOR = 'messageChatBoost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForumTopicCreated extends MessageContent {

  /// A forum topic has been created
  const MessageForumTopicCreated({
    required this.name,
    required this.icon,
  });
  
  /// [name] Name of the topic 
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;
  
  /// Parse from a json
  factory MessageForumTopicCreated.fromJson(Map<String, dynamic> json) => MessageForumTopicCreated(
    name: json['name'] ?? '',
    icon: ForumTopicIcon.fromJson(json['icon'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "icon": icon.toJson(),
    };
  }
  
  @override
  MessageForumTopicCreated copyWith({
    String? name,
    ForumTopicIcon? icon,
  }) => MessageForumTopicCreated(
    name: name ?? this.name,
    icon: icon ?? this.icon,
  );

  static const CONSTRUCTOR = 'messageForumTopicCreated';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForumTopicEdited extends MessageContent {

  /// A forum topic has been edited
  const MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });
  
  /// [name] If non-empty, the new name of the topic
  final String name;

  /// [editIconCustomEmojiId] True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// [iconCustomEmojiId] New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false
  final int iconCustomEmojiId;
  
  /// Parse from a json
  factory MessageForumTopicEdited.fromJson(Map<String, dynamic> json) => MessageForumTopicEdited(
    name: json['name'] ?? '',
    editIconCustomEmojiId: json['edit_icon_custom_emoji_id'] ?? false,
    iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id'] ?? '') ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "edit_icon_custom_emoji_id": editIconCustomEmojiId,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
  }
  
  @override
  MessageForumTopicEdited copyWith({
    String? name,
    bool? editIconCustomEmojiId,
    int? iconCustomEmojiId,
  }) => MessageForumTopicEdited(
    name: name ?? this.name,
    editIconCustomEmojiId: editIconCustomEmojiId ?? this.editIconCustomEmojiId,
    iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
  );

  static const CONSTRUCTOR = 'messageForumTopicEdited';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForumTopicIsClosedToggled extends MessageContent {

  /// A forum topic has been closed or opened
  const MessageForumTopicIsClosedToggled({
    required this.isClosed,
  });
  
  /// [isClosed] True, if the topic was closed; otherwise, the topic was reopened
  final bool isClosed;
  
  /// Parse from a json
  factory MessageForumTopicIsClosedToggled.fromJson(Map<String, dynamic> json) => MessageForumTopicIsClosedToggled(
    isClosed: json['is_closed'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_closed": isClosed,
    };
  }
  
  @override
  MessageForumTopicIsClosedToggled copyWith({
    bool? isClosed,
  }) => MessageForumTopicIsClosedToggled(
    isClosed: isClosed ?? this.isClosed,
  );

  static const CONSTRUCTOR = 'messageForumTopicIsClosedToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForumTopicIsHiddenToggled extends MessageContent {

  /// A General forum topic has been hidden or unhidden
  const MessageForumTopicIsHiddenToggled({
    required this.isHidden,
  });
  
  /// [isHidden] True, if the topic was hidden; otherwise, the topic was unhidden
  final bool isHidden;
  
  /// Parse from a json
  factory MessageForumTopicIsHiddenToggled.fromJson(Map<String, dynamic> json) => MessageForumTopicIsHiddenToggled(
    isHidden: json['is_hidden'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_hidden": isHidden,
    };
  }
  
  @override
  MessageForumTopicIsHiddenToggled copyWith({
    bool? isHidden,
  }) => MessageForumTopicIsHiddenToggled(
    isHidden: isHidden ?? this.isHidden,
  );

  static const CONSTRUCTOR = 'messageForumTopicIsHiddenToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageSuggestProfilePhoto extends MessageContent {

  /// A profile photo was suggested to a user in a private chat
  const MessageSuggestProfilePhoto({
    required this.photo,
  });
  
  /// [photo] The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo
  final ChatPhoto photo;
  
  /// Parse from a json
  factory MessageSuggestProfilePhoto.fromJson(Map<String, dynamic> json) => MessageSuggestProfilePhoto(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  MessageSuggestProfilePhoto copyWith({
    ChatPhoto? photo,
  }) => MessageSuggestProfilePhoto(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'messageSuggestProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageCustomServiceAction extends MessageContent {

  /// A non-standard action has happened in the chat
  const MessageCustomServiceAction({
    required this.text,
  });
  
  /// [text] Message text to be shown in the chat
  final String text;
  
  /// Parse from a json
  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) => MessageCustomServiceAction(
    text: json['text'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
    };
  }
  
  @override
  MessageCustomServiceAction copyWith({
    String? text,
  }) => MessageCustomServiceAction(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'messageCustomServiceAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGameScore extends MessageContent {

  /// A new high score was achieved in a game
  const MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });
  
  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message 
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game 
  final int gameId;

  /// [score] New score
  final int score;
  
  /// Parse from a json
  factory MessageGameScore.fromJson(Map<String, dynamic> json) => MessageGameScore(
    gameMessageId: json['game_message_id'] ?? 0,
    gameId: int.tryParse(json['game_id'] ?? '') ?? 0,
    score: json['score'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "game_message_id": gameMessageId,
      "game_id": gameId,
      "score": score,
    };
  }
  
  @override
  MessageGameScore copyWith({
    int? gameMessageId,
    int? gameId,
    int? score,
  }) => MessageGameScore(
    gameMessageId: gameMessageId ?? this.gameMessageId,
    gameId: gameId ?? this.gameId,
    score: score ?? this.score,
  );

  static const CONSTRUCTOR = 'messageGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaymentSuccessful extends MessageContent {

  /// A payment has been sent to a bot or a business account
  const MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoiceName,
  });
  
  /// [invoiceChatId] Identifier of the chat, containing the corresponding invoice message
  final int invoiceChatId;

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoiceName] Name of the invoice; may be empty if unknown
  final String invoiceName;
  
  /// Parse from a json
  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessful(
    invoiceChatId: json['invoice_chat_id'] ?? 0,
    invoiceMessageId: json['invoice_message_id'] ?? 0,
    currency: json['currency'] ?? '',
    totalAmount: json['total_amount'] ?? 0,
    subscriptionUntilDate: json['subscription_until_date'] ?? 0,
    isRecurring: json['is_recurring'] ?? false,
    isFirstRecurring: json['is_first_recurring'] ?? false,
    invoiceName: json['invoice_name'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice_chat_id": invoiceChatId,
      "invoice_message_id": invoiceMessageId,
      "currency": currency,
      "total_amount": totalAmount,
      "subscription_until_date": subscriptionUntilDate,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_name": invoiceName,
    };
  }
  
  @override
  MessagePaymentSuccessful copyWith({
    int? invoiceChatId,
    int? invoiceMessageId,
    String? currency,
    int? totalAmount,
    int? subscriptionUntilDate,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoiceName,
  }) => MessagePaymentSuccessful(
    invoiceChatId: invoiceChatId ?? this.invoiceChatId,
    invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    subscriptionUntilDate: subscriptionUntilDate ?? this.subscriptionUntilDate,
    isRecurring: isRecurring ?? this.isRecurring,
    isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
    invoiceName: invoiceName ?? this.invoiceName,
  );

  static const CONSTRUCTOR = 'messagePaymentSuccessful';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaymentSuccessfulBot extends MessageContent {

  /// A payment has been received by the bot or the business account
  const MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });
  
  /// [currency] Currency for price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable; for bots only
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null; for bots only
  final OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;
  
  /// Parse from a json
  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) => MessagePaymentSuccessfulBot(
    currency: json['currency'] ?? '',
    totalAmount: json['total_amount'] ?? 0,
    subscriptionUntilDate: json['subscription_until_date'] ?? 0,
    isRecurring: json['is_recurring'] ?? false,
    isFirstRecurring: json['is_first_recurring'] ?? false,
    invoicePayload: json['invoice_payload'] ?? '',
    shippingOptionId: json['shipping_option_id'] ?? '',
    orderInfo: OrderInfo.fromJson(json['order_info'] ?? {}),
    telegramPaymentChargeId: json['telegram_payment_charge_id'] ?? '',
    providerPaymentChargeId: json['provider_payment_charge_id'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "total_amount": totalAmount,
      "subscription_until_date": subscriptionUntilDate,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "provider_payment_charge_id": providerPaymentChargeId,
    };
  }
  
  @override
  MessagePaymentSuccessfulBot copyWith({
    String? currency,
    int? totalAmount,
    int? subscriptionUntilDate,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    String? telegramPaymentChargeId,
    String? providerPaymentChargeId,
  }) => MessagePaymentSuccessfulBot(
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    subscriptionUntilDate: subscriptionUntilDate ?? this.subscriptionUntilDate,
    isRecurring: isRecurring ?? this.isRecurring,
    isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    orderInfo: orderInfo ?? this.orderInfo,
    telegramPaymentChargeId: telegramPaymentChargeId ?? this.telegramPaymentChargeId,
    providerPaymentChargeId: providerPaymentChargeId ?? this.providerPaymentChargeId,
  );

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaymentRefunded extends MessageContent {

  /// A payment has been refunded
  const MessagePaymentRefunded({
    required this.ownerId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });
  
  /// [ownerId] Identifier of the previous owner of the Telegram Stars that refunds them
  final MessageSender ownerId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload; only for bots
  final String invoicePayload;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;
  
  /// Parse from a json
  factory MessagePaymentRefunded.fromJson(Map<String, dynamic> json) => MessagePaymentRefunded(
    ownerId: MessageSender.fromJson(json['owner_id'] ?? {}),
    currency: json['currency'] ?? '',
    totalAmount: json['total_amount'] ?? 0,
    invoicePayload: json['invoice_payload'] ?? '',
    telegramPaymentChargeId: json['telegram_payment_charge_id'] ?? '',
    providerPaymentChargeId: json['provider_payment_charge_id'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "owner_id": ownerId.toJson(),
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "provider_payment_charge_id": providerPaymentChargeId,
    };
  }
  
  @override
  MessagePaymentRefunded copyWith({
    MessageSender? ownerId,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? telegramPaymentChargeId,
    String? providerPaymentChargeId,
  }) => MessagePaymentRefunded(
    ownerId: ownerId ?? this.ownerId,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    telegramPaymentChargeId: telegramPaymentChargeId ?? this.telegramPaymentChargeId,
    providerPaymentChargeId: providerPaymentChargeId ?? this.providerPaymentChargeId,
  );

  static const CONSTRUCTOR = 'messagePaymentRefunded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiftedPremium extends MessageContent {

  /// Telegram Premium was gifted to a user
  const MessageGiftedPremium({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.text,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    this.sticker,
  });
  
  /// [gifterUserId] The identifier of a user that gifted Telegram Premium; 0 if the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user that received Telegram Premium; 0 if the gift is incoming
  final int receiverUserId;

  /// [text] Message added to the gifted Telegram Premium by the sender
  final FormattedText text;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be active
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory MessageGiftedPremium.fromJson(Map<String, dynamic> json) => MessageGiftedPremium(
    gifterUserId: json['gifter_user_id'] ?? 0,
    receiverUserId: json['receiver_user_id'] ?? 0,
    text: FormattedText.fromJson(json['text'] ?? {}),
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    cryptocurrency: json['cryptocurrency'] ?? '',
    cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount'] ?? '') ?? 0,
    monthCount: json['month_count'] ?? 0,
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gifter_user_id": gifterUserId,
      "receiver_user_id": receiverUserId,
      "text": text.toJson(),
      "currency": currency,
      "amount": amount,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "month_count": monthCount,
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  MessageGiftedPremium copyWith({
    int? gifterUserId,
    int? receiverUserId,
    FormattedText? text,
    String? currency,
    int? amount,
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    int? monthCount,
    Sticker? sticker,
  }) => MessageGiftedPremium(
    gifterUserId: gifterUserId ?? this.gifterUserId,
    receiverUserId: receiverUserId ?? this.receiverUserId,
    text: text ?? this.text,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    cryptocurrency: cryptocurrency ?? this.cryptocurrency,
    cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
    monthCount: monthCount ?? this.monthCount,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'messageGiftedPremium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePremiumGiftCode extends MessageContent {

  /// A Telegram Premium gift code was created for the user
  const MessagePremiumGiftCode({
    this.creatorId,
    required this.text,
    required this.isFromGiveaway,
    required this.isUnclaimed,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    this.sticker,
    required this.code,
  });
  
  /// [creatorId] Identifier of a chat or a user that created the gift code; may be null if unknown
  final MessageSender? creatorId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium subscription wasn't chosen
  final bool isUnclaimed;

  /// [currency] Currency for the paid amount; empty if unknown
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency; 0 if unknown
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if none or unknown
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the cryptocurrency; 0 if unknown
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// [code] The gift code
  final String code;
  
  /// Parse from a json
  factory MessagePremiumGiftCode.fromJson(Map<String, dynamic> json) => MessagePremiumGiftCode(
    creatorId: MessageSender.fromJson(json['creator_id'] ?? {}),
    text: FormattedText.fromJson(json['text'] ?? {}),
    isFromGiveaway: json['is_from_giveaway'] ?? false,
    isUnclaimed: json['is_unclaimed'] ?? false,
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    cryptocurrency: json['cryptocurrency'] ?? '',
    cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount'] ?? '') ?? 0,
    monthCount: json['month_count'] ?? 0,
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
    code: json['code'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "creator_id": creatorId?.toJson(),
      "text": text.toJson(),
      "is_from_giveaway": isFromGiveaway,
      "is_unclaimed": isUnclaimed,
      "currency": currency,
      "amount": amount,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "month_count": monthCount,
      "sticker": sticker?.toJson(),
      "code": code,
    };
  }
  
  @override
  MessagePremiumGiftCode copyWith({
    MessageSender? creatorId,
    FormattedText? text,
    bool? isFromGiveaway,
    bool? isUnclaimed,
    String? currency,
    int? amount,
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    int? monthCount,
    Sticker? sticker,
    String? code,
  }) => MessagePremiumGiftCode(
    creatorId: creatorId ?? this.creatorId,
    text: text ?? this.text,
    isFromGiveaway: isFromGiveaway ?? this.isFromGiveaway,
    isUnclaimed: isUnclaimed ?? this.isUnclaimed,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    cryptocurrency: cryptocurrency ?? this.cryptocurrency,
    cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
    monthCount: monthCount ?? this.monthCount,
    sticker: sticker ?? this.sticker,
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'messagePremiumGiftCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiveawayCreated extends MessageContent {

  /// A giveaway was created for the chat. Use telegramPaymentPurposePremiumGiveaway, storePaymentPurposePremiumGiveaway, telegramPaymentPurposeStarGiveaway, or storePaymentPurposeStarGiveaway to create a giveaway
  const MessageGiveawayCreated({
    required this.starCount,
  });
  
  /// [starCount] Number of Telegram Stars that will be shared by winners of the giveaway; 0 for Telegram Premium giveaways
  final int starCount;
  
  /// Parse from a json
  factory MessageGiveawayCreated.fromJson(Map<String, dynamic> json) => MessageGiveawayCreated(
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
    };
  }
  
  @override
  MessageGiveawayCreated copyWith({
    int? starCount,
  }) => MessageGiveawayCreated(
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'messageGiveawayCreated';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiveaway extends MessageContent {

  /// A giveaway
  const MessageGiveaway({
    required this.parameters,
    required this.winnerCount,
    required this.prize,
    this.sticker,
  });
  
  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [winnerCount] Number of users which will receive Telegram Premium subscription gift codes
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory MessageGiveaway.fromJson(Map<String, dynamic> json) => MessageGiveaway(
    parameters: GiveawayParameters.fromJson(json['parameters'] ?? {}),
    winnerCount: json['winner_count'] ?? 0,
    prize: GiveawayPrize.fromJson(json['prize'] ?? {}),
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "parameters": parameters.toJson(),
      "winner_count": winnerCount,
      "prize": prize.toJson(),
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  MessageGiveaway copyWith({
    GiveawayParameters? parameters,
    int? winnerCount,
    GiveawayPrize? prize,
    Sticker? sticker,
  }) => MessageGiveaway(
    parameters: parameters ?? this.parameters,
    winnerCount: winnerCount ?? this.winnerCount,
    prize: prize ?? this.prize,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'messageGiveaway';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiveawayCompleted extends MessageContent {

  /// A giveaway without public winners has been completed for the chat
  const MessageGiveawayCompleted({
    required this.giveawayMessageId,
    required this.winnerCount,
    required this.isStarGiveaway,
    required this.unclaimedPrizeCount,
  });
  
  /// [giveawayMessageId] Identifier of the message with the giveaway; can be 0 if the message was deleted
  final int giveawayMessageId;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [isStarGiveaway] True, if the giveaway is a Telegram Star giveaway
  final bool isStarGiveaway;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium giveaways only
  final int unclaimedPrizeCount;
  
  /// Parse from a json
  factory MessageGiveawayCompleted.fromJson(Map<String, dynamic> json) => MessageGiveawayCompleted(
    giveawayMessageId: json['giveaway_message_id'] ?? 0,
    winnerCount: json['winner_count'] ?? 0,
    isStarGiveaway: json['is_star_giveaway'] ?? false,
    unclaimedPrizeCount: json['unclaimed_prize_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "giveaway_message_id": giveawayMessageId,
      "winner_count": winnerCount,
      "is_star_giveaway": isStarGiveaway,
      "unclaimed_prize_count": unclaimedPrizeCount,
    };
  }
  
  @override
  MessageGiveawayCompleted copyWith({
    int? giveawayMessageId,
    int? winnerCount,
    bool? isStarGiveaway,
    int? unclaimedPrizeCount,
  }) => MessageGiveawayCompleted(
    giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
    winnerCount: winnerCount ?? this.winnerCount,
    isStarGiveaway: isStarGiveaway ?? this.isStarGiveaway,
    unclaimedPrizeCount: unclaimedPrizeCount ?? this.unclaimedPrizeCount,
  );

  static const CONSTRUCTOR = 'messageGiveawayCompleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiveawayWinners extends MessageContent {

  /// A giveaway with public winners has been completed for the chat
  const MessageGiveawayWinners({
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.additionalChatCount,
    required this.actualWinnersSelectionDate,
    required this.onlyNewMembers,
    required this.wasRefunded,
    required this.prize,
    required this.prizeDescription,
    required this.winnerCount,
    required this.winnerUserIds,
    required this.unclaimedPrizeCount,
  });
  
  /// [boostedChatId] Identifier of the supergroup or channel chat, which was automatically boosted by the winners of the giveaway
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the boosted chat
  final int giveawayMessageId;

  /// [additionalChatCount] Number of other chats that participated in the giveaway
  final int additionalChatCount;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [onlyNewMembers] True, if only new members of the chats were eligible for the giveaway
  final bool onlyNewMembers;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [prizeDescription] Additional description of the giveaway prize
  final String prizeDescription;

  /// [winnerCount] Total number of winners in the giveaway
  final int winnerCount;

  /// [winnerUserIds] Up to 100 user identifiers of the winners of the giveaway
  final List<int> winnerUserIds;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium giveaways only
  final int unclaimedPrizeCount;
  
  /// Parse from a json
  factory MessageGiveawayWinners.fromJson(Map<String, dynamic> json) => MessageGiveawayWinners(
    boostedChatId: json['boosted_chat_id'] ?? 0,
    giveawayMessageId: json['giveaway_message_id'] ?? 0,
    additionalChatCount: json['additional_chat_count'] ?? 0,
    actualWinnersSelectionDate: json['actual_winners_selection_date'] ?? 0,
    onlyNewMembers: json['only_new_members'] ?? false,
    wasRefunded: json['was_refunded'] ?? false,
    prize: GiveawayPrize.fromJson(json['prize'] ?? {}),
    prizeDescription: json['prize_description'] ?? '',
    winnerCount: json['winner_count'] ?? 0,
    winnerUserIds: json['winner_user_ids']?.cast<int>() ?? [],
    unclaimedPrizeCount: json['unclaimed_prize_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "boosted_chat_id": boostedChatId,
      "giveaway_message_id": giveawayMessageId,
      "additional_chat_count": additionalChatCount,
      "actual_winners_selection_date": actualWinnersSelectionDate,
      "only_new_members": onlyNewMembers,
      "was_refunded": wasRefunded,
      "prize": prize.toJson(),
      "prize_description": prizeDescription,
      "winner_count": winnerCount,
      "winner_user_ids": winnerUserIds,
      "unclaimed_prize_count": unclaimedPrizeCount,
    };
  }
  
  @override
  MessageGiveawayWinners copyWith({
    int? boostedChatId,
    int? giveawayMessageId,
    int? additionalChatCount,
    int? actualWinnersSelectionDate,
    bool? onlyNewMembers,
    bool? wasRefunded,
    GiveawayPrize? prize,
    String? prizeDescription,
    int? winnerCount,
    List<int>? winnerUserIds,
    int? unclaimedPrizeCount,
  }) => MessageGiveawayWinners(
    boostedChatId: boostedChatId ?? this.boostedChatId,
    giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
    additionalChatCount: additionalChatCount ?? this.additionalChatCount,
    actualWinnersSelectionDate: actualWinnersSelectionDate ?? this.actualWinnersSelectionDate,
    onlyNewMembers: onlyNewMembers ?? this.onlyNewMembers,
    wasRefunded: wasRefunded ?? this.wasRefunded,
    prize: prize ?? this.prize,
    prizeDescription: prizeDescription ?? this.prizeDescription,
    winnerCount: winnerCount ?? this.winnerCount,
    winnerUserIds: winnerUserIds ?? this.winnerUserIds,
    unclaimedPrizeCount: unclaimedPrizeCount ?? this.unclaimedPrizeCount,
  );

  static const CONSTRUCTOR = 'messageGiveawayWinners';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiftedStars extends MessageContent {

  /// Telegram Stars were gifted to a user
  const MessageGiftedStars({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.starCount,
    required this.transactionId,
    this.sticker,
  });
  
  /// [gifterUserId] The identifier of a user that gifted Telegram Stars; 0 if the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user that received Telegram Stars; 0 if the gift is incoming
  final int receiverUserId;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [starCount] Number of Telegram Stars that were gifted
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars purchase; for receiver only
  final String transactionId;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory MessageGiftedStars.fromJson(Map<String, dynamic> json) => MessageGiftedStars(
    gifterUserId: json['gifter_user_id'] ?? 0,
    receiverUserId: json['receiver_user_id'] ?? 0,
    currency: json['currency'] ?? '',
    amount: json['amount'] ?? 0,
    cryptocurrency: json['cryptocurrency'] ?? '',
    cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount'] ?? '') ?? 0,
    starCount: json['star_count'] ?? 0,
    transactionId: json['transaction_id'] ?? '',
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gifter_user_id": gifterUserId,
      "receiver_user_id": receiverUserId,
      "currency": currency,
      "amount": amount,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "star_count": starCount,
      "transaction_id": transactionId,
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  MessageGiftedStars copyWith({
    int? gifterUserId,
    int? receiverUserId,
    String? currency,
    int? amount,
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    int? starCount,
    String? transactionId,
    Sticker? sticker,
  }) => MessageGiftedStars(
    gifterUserId: gifterUserId ?? this.gifterUserId,
    receiverUserId: receiverUserId ?? this.receiverUserId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    cryptocurrency: cryptocurrency ?? this.cryptocurrency,
    cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
    starCount: starCount ?? this.starCount,
    transactionId: transactionId ?? this.transactionId,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'messageGiftedStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGiveawayPrizeStars extends MessageContent {

  /// A Telegram Stars were received by the current user from a giveaway
  const MessageGiveawayPrizeStars({
    required this.starCount,
    required this.transactionId,
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.isUnclaimed,
    this.sticker,
  });
  
  /// [starCount] Number of Telegram Stars that were received
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars credit
  final String transactionId;

  /// [boostedChatId] Identifier of the supergroup or channel chat, which was automatically boosted by the winners of the giveaway
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the boosted chat; can be 0 if the message was deleted
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the corresponding winner wasn't chosen and the Telegram Stars were received by the owner of the boosted chat
  final bool isUnclaimed;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;
  
  /// Parse from a json
  factory MessageGiveawayPrizeStars.fromJson(Map<String, dynamic> json) => MessageGiveawayPrizeStars(
    starCount: json['star_count'] ?? 0,
    transactionId: json['transaction_id'] ?? '',
    boostedChatId: json['boosted_chat_id'] ?? 0,
    giveawayMessageId: json['giveaway_message_id'] ?? 0,
    isUnclaimed: json['is_unclaimed'] ?? false,
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "transaction_id": transactionId,
      "boosted_chat_id": boostedChatId,
      "giveaway_message_id": giveawayMessageId,
      "is_unclaimed": isUnclaimed,
      "sticker": sticker?.toJson(),
    };
  }
  
  @override
  MessageGiveawayPrizeStars copyWith({
    int? starCount,
    String? transactionId,
    int? boostedChatId,
    int? giveawayMessageId,
    bool? isUnclaimed,
    Sticker? sticker,
  }) => MessageGiveawayPrizeStars(
    starCount: starCount ?? this.starCount,
    transactionId: transactionId ?? this.transactionId,
    boostedChatId: boostedChatId ?? this.boostedChatId,
    giveawayMessageId: giveawayMessageId ?? this.giveawayMessageId,
    isUnclaimed: isUnclaimed ?? this.isUnclaimed,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'messageGiveawayPrizeStars';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageGift extends MessageContent {

  /// A regular gift was received or sent by the current user, or the current user was notified about a channel gift
  const MessageGift({
    required this.gift,
    required this.senderId,
    required this.receivedGiftId,
    required this.text,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.isPrivate,
    required this.isSaved,
    required this.canBeUpgraded,
    required this.wasConverted,
    required this.wasUpgraded,
    required this.wasRefunded,
    required this.upgradedReceivedGiftId,
  });
  
  /// [gift] The gift
  final Gift gift;

  /// [senderId] Sender of the gift
  final MessageSender senderId;

  /// [receivedGiftId] Unique identifier of the received gift for the current user; only for the receiver of the gift
  final String receivedGiftId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the receiver instead of the regular gift; 0 if the gift can't be sold by the receiver
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's profile page; only for the receiver of the gift
  final bool isSaved;

  /// [canBeUpgraded] True, if the gift can be upgraded to a unique gift; only for the receiver of the gift
  final bool canBeUpgraded;

  /// [wasConverted] True, if the gift was converted to Telegram Stars; only for the receiver of the gift
  final bool wasConverted;

  /// [wasUpgraded] True, if the gift was upgraded to a unique gift
  final bool wasUpgraded;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [upgradedReceivedGiftId] Identifier of the corresponding upgraded gift; may be empty if unknown. Use getReceivedGift to get information about the gift
  final String upgradedReceivedGiftId;
  
  /// Parse from a json
  factory MessageGift.fromJson(Map<String, dynamic> json) => MessageGift(
    gift: Gift.fromJson(json['gift'] ?? {}),
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    receivedGiftId: json['received_gift_id'] ?? '',
    text: FormattedText.fromJson(json['text'] ?? {}),
    sellStarCount: json['sell_star_count'] ?? 0,
    prepaidUpgradeStarCount: json['prepaid_upgrade_star_count'] ?? 0,
    isPrivate: json['is_private'] ?? false,
    isSaved: json['is_saved'] ?? false,
    canBeUpgraded: json['can_be_upgraded'] ?? false,
    wasConverted: json['was_converted'] ?? false,
    wasUpgraded: json['was_upgraded'] ?? false,
    wasRefunded: json['was_refunded'] ?? false,
    upgradedReceivedGiftId: json['upgraded_received_gift_id'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "sender_id": senderId.toJson(),
      "received_gift_id": receivedGiftId,
      "text": text.toJson(),
      "sell_star_count": sellStarCount,
      "prepaid_upgrade_star_count": prepaidUpgradeStarCount,
      "is_private": isPrivate,
      "is_saved": isSaved,
      "can_be_upgraded": canBeUpgraded,
      "was_converted": wasConverted,
      "was_upgraded": wasUpgraded,
      "was_refunded": wasRefunded,
      "upgraded_received_gift_id": upgradedReceivedGiftId,
    };
  }
  
  @override
  MessageGift copyWith({
    Gift? gift,
    MessageSender? senderId,
    String? receivedGiftId,
    FormattedText? text,
    int? sellStarCount,
    int? prepaidUpgradeStarCount,
    bool? isPrivate,
    bool? isSaved,
    bool? canBeUpgraded,
    bool? wasConverted,
    bool? wasUpgraded,
    bool? wasRefunded,
    String? upgradedReceivedGiftId,
  }) => MessageGift(
    gift: gift ?? this.gift,
    senderId: senderId ?? this.senderId,
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
    text: text ?? this.text,
    sellStarCount: sellStarCount ?? this.sellStarCount,
    prepaidUpgradeStarCount: prepaidUpgradeStarCount ?? this.prepaidUpgradeStarCount,
    isPrivate: isPrivate ?? this.isPrivate,
    isSaved: isSaved ?? this.isSaved,
    canBeUpgraded: canBeUpgraded ?? this.canBeUpgraded,
    wasConverted: wasConverted ?? this.wasConverted,
    wasUpgraded: wasUpgraded ?? this.wasUpgraded,
    wasRefunded: wasRefunded ?? this.wasRefunded,
    upgradedReceivedGiftId: upgradedReceivedGiftId ?? this.upgradedReceivedGiftId,
  );

  static const CONSTRUCTOR = 'messageGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageUpgradedGift extends MessageContent {

  /// An upgraded gift was received or sent by the current user, or the current user was notified about a channel gift
  const MessageUpgradedGift({
    required this.gift,
    this.senderId,
    required this.receivedGiftId,
    required this.isUpgrade,
    required this.isSaved,
    required this.canBeTransferred,
    required this.wasTransferred,
    required this.lastResaleStarCount,
    required this.transferStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
  });
  
  /// [gift] The gift
  final UpgradedGift gift;

  /// [senderId] Sender of the gift; may be null for anonymous gifts
  final MessageSender? senderId;

  /// [receivedGiftId] Unique identifier of the received gift for the current user; only for the receiver of the gift
  final String receivedGiftId;

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously received gift; otherwise, this is a transferred or resold gift
  final bool isUpgrade;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's profile page; only for the receiver of the gift
  final bool isSaved;

  /// [canBeTransferred] True, if the gift can be transferred to another owner; only for the receiver of the gift
  final bool canBeTransferred;

  /// [wasTransferred] True, if the gift was transferred to another owner; only for the receiver of the gift
  final bool wasTransferred;

  /// [lastResaleStarCount] Number of Telegram Stars that were paid by the sender for the gift; 0 if the gift was upgraded or transferred
  final int lastResaleStarCount;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer the upgraded gift; only for the receiver of the gift
  final int transferStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be transferred to another owner; 0 if the gift can be transferred immediately or transfer isn't possible; only for the receiver of the gift
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be resold to another user; 0 if the gift can't be resold; only for the receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the gift can be transferred to the TON blockchain as an NFT; 0 if NFT export isn't possible; only for the receiver of the gift
  final int exportDate;
  
  /// Parse from a json
  factory MessageUpgradedGift.fromJson(Map<String, dynamic> json) => MessageUpgradedGift(
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    receivedGiftId: json['received_gift_id'] ?? '',
    isUpgrade: json['is_upgrade'] ?? false,
    isSaved: json['is_saved'] ?? false,
    canBeTransferred: json['can_be_transferred'] ?? false,
    wasTransferred: json['was_transferred'] ?? false,
    lastResaleStarCount: json['last_resale_star_count'] ?? 0,
    transferStarCount: json['transfer_star_count'] ?? 0,
    nextTransferDate: json['next_transfer_date'] ?? 0,
    nextResaleDate: json['next_resale_date'] ?? 0,
    exportDate: json['export_date'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "sender_id": senderId?.toJson(),
      "received_gift_id": receivedGiftId,
      "is_upgrade": isUpgrade,
      "is_saved": isSaved,
      "can_be_transferred": canBeTransferred,
      "was_transferred": wasTransferred,
      "last_resale_star_count": lastResaleStarCount,
      "transfer_star_count": transferStarCount,
      "next_transfer_date": nextTransferDate,
      "next_resale_date": nextResaleDate,
      "export_date": exportDate,
    };
  }
  
  @override
  MessageUpgradedGift copyWith({
    UpgradedGift? gift,
    MessageSender? senderId,
    String? receivedGiftId,
    bool? isUpgrade,
    bool? isSaved,
    bool? canBeTransferred,
    bool? wasTransferred,
    int? lastResaleStarCount,
    int? transferStarCount,
    int? nextTransferDate,
    int? nextResaleDate,
    int? exportDate,
  }) => MessageUpgradedGift(
    gift: gift ?? this.gift,
    senderId: senderId ?? this.senderId,
    receivedGiftId: receivedGiftId ?? this.receivedGiftId,
    isUpgrade: isUpgrade ?? this.isUpgrade,
    isSaved: isSaved ?? this.isSaved,
    canBeTransferred: canBeTransferred ?? this.canBeTransferred,
    wasTransferred: wasTransferred ?? this.wasTransferred,
    lastResaleStarCount: lastResaleStarCount ?? this.lastResaleStarCount,
    transferStarCount: transferStarCount ?? this.transferStarCount,
    nextTransferDate: nextTransferDate ?? this.nextTransferDate,
    nextResaleDate: nextResaleDate ?? this.nextResaleDate,
    exportDate: exportDate ?? this.exportDate,
  );

  static const CONSTRUCTOR = 'messageUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageRefundedUpgradedGift extends MessageContent {

  /// A gift which purchase, upgrade or transfer were refunded
  const MessageRefundedUpgradedGift({
    required this.gift,
    required this.senderId,
    required this.isUpgrade,
  });
  
  /// [gift] The gift
  final Gift gift;

  /// [senderId] Sender of the gift
  final MessageSender senderId;

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously received gift; otherwise, this is a transferred or resold gift
  final bool isUpgrade;
  
  /// Parse from a json
  factory MessageRefundedUpgradedGift.fromJson(Map<String, dynamic> json) => MessageRefundedUpgradedGift(
    gift: Gift.fromJson(json['gift'] ?? {}),
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    isUpgrade: json['is_upgrade'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
      "sender_id": senderId.toJson(),
      "is_upgrade": isUpgrade,
    };
  }
  
  @override
  MessageRefundedUpgradedGift copyWith({
    Gift? gift,
    MessageSender? senderId,
    bool? isUpgrade,
  }) => MessageRefundedUpgradedGift(
    gift: gift ?? this.gift,
    senderId: senderId ?? this.senderId,
    isUpgrade: isUpgrade ?? this.isUpgrade,
  );

  static const CONSTRUCTOR = 'messageRefundedUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaidMessagesRefunded extends MessageContent {

  /// Paid messages were refunded
  const MessagePaidMessagesRefunded({
    required this.messageCount,
    required this.starCount,
  });
  
  /// [messageCount] The number of refunded messages 
  final int messageCount;

  /// [starCount] The number of refunded Telegram Stars
  final int starCount;
  
  /// Parse from a json
  factory MessagePaidMessagesRefunded.fromJson(Map<String, dynamic> json) => MessagePaidMessagesRefunded(
    messageCount: json['message_count'] ?? 0,
    starCount: json['star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_count": messageCount,
      "star_count": starCount,
    };
  }
  
  @override
  MessagePaidMessagesRefunded copyWith({
    int? messageCount,
    int? starCount,
  }) => MessagePaidMessagesRefunded(
    messageCount: messageCount ?? this.messageCount,
    starCount: starCount ?? this.starCount,
  );

  static const CONSTRUCTOR = 'messagePaidMessagesRefunded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePaidMessagePriceChanged extends MessageContent {

  /// A price for paid messages was changed in the supergroup chat
  const MessagePaidMessagePriceChanged({
    required this.paidMessageStarCount,
  });
  
  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid by non-administrator users of the supergroup chat for each sent message
  final int paidMessageStarCount;
  
  /// Parse from a json
  factory MessagePaidMessagePriceChanged.fromJson(Map<String, dynamic> json) => MessagePaidMessagePriceChanged(
    paidMessageStarCount: json['paid_message_star_count'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "paid_message_star_count": paidMessageStarCount,
    };
  }
  
  @override
  MessagePaidMessagePriceChanged copyWith({
    int? paidMessageStarCount,
  }) => MessagePaidMessagePriceChanged(
    paidMessageStarCount: paidMessageStarCount ?? this.paidMessageStarCount,
  );

  static const CONSTRUCTOR = 'messagePaidMessagePriceChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageContactRegistered extends MessageContent {

  /// A contact has registered with Telegram
  const MessageContactRegistered();
  
  /// Parse from a json
  factory MessageContactRegistered.fromJson(Map<String, dynamic> json) => const MessageContactRegistered();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageContactRegistered copyWith() => const MessageContactRegistered();

  static const CONSTRUCTOR = 'messageContactRegistered';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageUsersShared extends MessageContent {

  /// The current user shared users, which were requested by the bot
  const MessageUsersShared({
    required this.users,
    required this.buttonId,
  });
  
  /// [users] The shared users 
  final List<SharedUser> users;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;
  
  /// Parse from a json
  factory MessageUsersShared.fromJson(Map<String, dynamic> json) => MessageUsersShared(
    users: json['users'] == null ? [] :(json['users'] as List).map((e) => SharedUser.fromJson(e ?? {})).toList(),
    buttonId: json['button_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "users": users.map((e) => e.toJson()).toList(),
      "button_id": buttonId,
    };
  }
  
  @override
  MessageUsersShared copyWith({
    List<SharedUser>? users,
    int? buttonId,
  }) => MessageUsersShared(
    users: users ?? this.users,
    buttonId: buttonId ?? this.buttonId,
  );

  static const CONSTRUCTOR = 'messageUsersShared';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageChatShared extends MessageContent {

  /// The current user shared a chat, which was requested by the bot
  const MessageChatShared({
    required this.chat,
    required this.buttonId,
  });
  
  /// [chat] The shared chat 
  final SharedChat chat;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;
  
  /// Parse from a json
  factory MessageChatShared.fromJson(Map<String, dynamic> json) => MessageChatShared(
    chat: SharedChat.fromJson(json['chat'] ?? {}),
    buttonId: json['button_id'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat": chat.toJson(),
      "button_id": buttonId,
    };
  }
  
  @override
  MessageChatShared copyWith({
    SharedChat? chat,
    int? buttonId,
  }) => MessageChatShared(
    chat: chat ?? this.chat,
    buttonId: buttonId ?? this.buttonId,
  );

  static const CONSTRUCTOR = 'messageChatShared';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageBotWriteAccessAllowed extends MessageContent {

  /// The user allowed the bot to send messages
  const MessageBotWriteAccessAllowed({
    required this.reason,
  });
  
  /// [reason] The reason why the bot was allowed to write messages
  final BotWriteAccessAllowReason reason;
  
  /// Parse from a json
  factory MessageBotWriteAccessAllowed.fromJson(Map<String, dynamic> json) => MessageBotWriteAccessAllowed(
    reason: BotWriteAccessAllowReason.fromJson(json['reason'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason.toJson(),
    };
  }
  
  @override
  MessageBotWriteAccessAllowed copyWith({
    BotWriteAccessAllowReason? reason,
  }) => MessageBotWriteAccessAllowed(
    reason: reason ?? this.reason,
  );

  static const CONSTRUCTOR = 'messageBotWriteAccessAllowed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageWebAppDataSent extends MessageContent {

  /// Data from a Web App has been sent to a bot
  const MessageWebAppDataSent({
    required this.buttonText,
  });
  
  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;
  
  /// Parse from a json
  factory MessageWebAppDataSent.fromJson(Map<String, dynamic> json) => MessageWebAppDataSent(
    buttonText: json['button_text'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "button_text": buttonText,
    };
  }
  
  @override
  MessageWebAppDataSent copyWith({
    String? buttonText,
  }) => MessageWebAppDataSent(
    buttonText: buttonText ?? this.buttonText,
  );

  static const CONSTRUCTOR = 'messageWebAppDataSent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageWebAppDataReceived extends MessageContent {

  /// Data from a Web App has been received; for bots only
  const MessageWebAppDataReceived({
    required this.buttonText,
    required this.data,
  });
  
  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App 
  final String buttonText;

  /// [data] The data
  final String data;
  
  /// Parse from a json
  factory MessageWebAppDataReceived.fromJson(Map<String, dynamic> json) => MessageWebAppDataReceived(
    buttonText: json['button_text'] ?? '',
    data: json['data'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "button_text": buttonText,
      "data": data,
    };
  }
  
  @override
  MessageWebAppDataReceived copyWith({
    String? buttonText,
    String? data,
  }) => MessageWebAppDataReceived(
    buttonText: buttonText ?? this.buttonText,
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'messageWebAppDataReceived';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePassportDataSent extends MessageContent {

  /// Telegram Passport data has been sent to a bot
  const MessagePassportDataSent({
    required this.types,
  });
  
  /// [types] List of Telegram Passport element types sent
  final List<PassportElementType> types;
  
  /// Parse from a json
  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) => MessagePassportDataSent(
    types: json['types'] == null ? [] :(json['types'] as List).map((e) => PassportElementType.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "types": types.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  MessagePassportDataSent copyWith({
    List<PassportElementType>? types,
  }) => MessagePassportDataSent(
    types: types ?? this.types,
  );

  static const CONSTRUCTOR = 'messagePassportDataSent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessagePassportDataReceived extends MessageContent {

  /// Telegram Passport data has been received; for bots only
  const MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });
  
  /// [elements] List of received Telegram Passport elements 
  final List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  final EncryptedCredentials credentials;
  
  /// Parse from a json
  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) => MessagePassportDataReceived(
    elements: json['elements'] == null ? [] :(json['elements'] as List).map((e) => EncryptedPassportElement.fromJson(e ?? {})).toList(),
    credentials: EncryptedCredentials.fromJson(json['credentials'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "elements": elements.map((e) => e.toJson()).toList(),
      "credentials": credentials.toJson(),
    };
  }
  
  @override
  MessagePassportDataReceived copyWith({
    List<EncryptedPassportElement>? elements,
    EncryptedCredentials? credentials,
  }) => MessagePassportDataReceived(
    elements: elements ?? this.elements,
    credentials: credentials ?? this.credentials,
  );

  static const CONSTRUCTOR = 'messagePassportDataReceived';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageProximityAlertTriggered extends MessageContent {

  /// A user in the chat came within proximity alert range
  const MessageProximityAlertTriggered({
    required this.travelerId,
    required this.watcherId,
    required this.distance,
  });
  
  /// [travelerId] The identifier of a user or chat that triggered the proximity alert 
  final MessageSender travelerId;

  /// [watcherId] The identifier of a user or chat that subscribed for the proximity alert 
  final MessageSender watcherId;

  /// [distance] The distance between the users
  final int distance;
  
  /// Parse from a json
  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) => MessageProximityAlertTriggered(
    travelerId: MessageSender.fromJson(json['traveler_id'] ?? {}),
    watcherId: MessageSender.fromJson(json['watcher_id'] ?? {}),
    distance: json['distance'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "traveler_id": travelerId.toJson(),
      "watcher_id": watcherId.toJson(),
      "distance": distance,
    };
  }
  
  @override
  MessageProximityAlertTriggered copyWith({
    MessageSender? travelerId,
    MessageSender? watcherId,
    int? distance,
  }) => MessageProximityAlertTriggered(
    travelerId: travelerId ?? this.travelerId,
    watcherId: watcherId ?? this.watcherId,
    distance: distance ?? this.distance,
  );

  static const CONSTRUCTOR = 'messageProximityAlertTriggered';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageUnsupported extends MessageContent {

  /// A message content that is not supported in the current TDLib version
  const MessageUnsupported();
  
  /// Parse from a json
  factory MessageUnsupported.fromJson(Map<String, dynamic> json) => const MessageUnsupported();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  MessageUnsupported copyWith() => const MessageUnsupported();

  static const CONSTRUCTOR = 'messageUnsupported';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
