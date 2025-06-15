import '../tdapi.dart';

class InputMessageContent extends TdObject {
  /// The content of a message to send
  const InputMessageContent();

  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePaidMedia.CONSTRUCTOR:
        return InputMessagePaidMedia.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageStory.CONSTRUCTOR:
        return InputMessageStory.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return const InputMessageContent();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputMessageContent copyWith() {
    return const InputMessageContent();
  }

  static const CONSTRUCTOR = 'inputMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageText extends InputMessageContent {
  /// A text message
  const InputMessageText({
    required this.text,
    this.linkPreviewOptions,
    required this.clearDraft,
  });

  /// [text] Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote,. Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview; may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// [clearDraft] True, if a chat message draft must be deleted
  final bool clearDraft;

  factory InputMessageText.fromJson(Map<String, dynamic> json) =>
      InputMessageText(
        text: FormattedText.fromJson(json['text'] ?? {}),
        linkPreviewOptions:
            LinkPreviewOptions.fromJson(json['link_preview_options'] ?? {}),
        clearDraft: json['clear_draft'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
      "clear_draft": clearDraft,
    };
  }

  @override
  InputMessageText copyWith({
    FormattedText? text,
    LinkPreviewOptions? linkPreviewOptions,
    bool? clearDraft,
  }) {
    return InputMessageText(
      text: text ?? this.text,
      linkPreviewOptions: linkPreviewOptions ?? this.linkPreviewOptions,
      clearDraft: clearDraft ?? this.clearDraft,
    );
  }

  static const CONSTRUCTOR = 'inputMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAnimation extends InputMessageContent {
  /// An animation message (GIF-style).
  const InputMessageAnimation({
    required this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
  });

  /// [animation] Animation file to be sent
  final InputFile animation;

  /// [thumbnail] Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Width of the animation; may be replaced by the server
  final int width;

  /// [height] Height of the animation; may be replaced by the server
  final int height;

  /// [caption] Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the animation; otherwise, the caption must be shown below the animation; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) =>
      InputMessageAnimation(
        animation: InputFile.fromJson(json['animation'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        addedStickerFileIds: json['added_sticker_file_ids'] == null
            ? <int>[]
            : (json['added_sticker_file_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        duration: json['duration'] ?? 0,
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        caption: FormattedText.fromJson(json['caption'] ?? {}),
        showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
        hasSpoiler: json['has_spoiler'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds,
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "has_spoiler": hasSpoiler,
    };
  }

  @override
  InputMessageAnimation copyWith({
    InputFile? animation,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    bool? hasSpoiler,
  }) {
    return InputMessageAnimation(
      animation: animation ?? this.animation,
      thumbnail: thumbnail ?? this.thumbnail,
      addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
      duration: duration ?? this.duration,
      width: width ?? this.width,
      height: height ?? this.height,
      caption: caption ?? this.caption,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
      hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    );
  }

  static const CONSTRUCTOR = 'inputMessageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAudio extends InputMessageContent {
  /// An audio message
  const InputMessageAudio({
    required this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    this.caption,
  });

  /// [audio] Audio file to be sent
  final InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album; pass null to skip thumbnail uploading
  final InputThumbnail? albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the server
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server
  final String performer;

  /// [caption] Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  factory InputMessageAudio.fromJson(Map<String, dynamic> json) =>
      InputMessageAudio(
        audio: InputFile.fromJson(json['audio'] ?? {}),
        albumCoverThumbnail:
            InputThumbnail.fromJson(json['album_cover_thumbnail'] ?? {}),
        duration: json['duration'] ?? 0,
        title: json['title'] ?? '',
        performer: json['performer'] ?? '',
        caption: FormattedText.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "duration": duration,
      "title": title,
      "performer": performer,
      "caption": caption?.toJson(),
    };
  }

  @override
  InputMessageAudio copyWith({
    InputFile? audio,
    InputThumbnail? albumCoverThumbnail,
    int? duration,
    String? title,
    String? performer,
    FormattedText? caption,
  }) {
    return InputMessageAudio(
      audio: audio ?? this.audio,
      albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
      duration: duration ?? this.duration,
      title: title ?? this.title,
      performer: performer ?? this.performer,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'inputMessageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDocument extends InputMessageContent {
  /// A document message (general file)
  const InputMessageDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
    this.caption,
  });

  /// [document] Document to be sent
  final InputFile document;

  /// [thumbnail] Document thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats
  final bool disableContentTypeDetection;

  /// [caption] Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  factory InputMessageDocument.fromJson(Map<String, dynamic> json) =>
      InputMessageDocument(
        document: InputFile.fromJson(json['document'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        disableContentTypeDetection:
            json['disable_content_type_detection'] ?? false,
        caption: FormattedText.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "disable_content_type_detection": disableContentTypeDetection,
      "caption": caption?.toJson(),
    };
  }

  @override
  InputMessageDocument copyWith({
    InputFile? document,
    InputThumbnail? thumbnail,
    bool? disableContentTypeDetection,
    FormattedText? caption,
  }) {
    return InputMessageDocument(
      document: document ?? this.document,
      thumbnail: thumbnail ?? this.thumbnail,
      disableContentTypeDetection:
          disableContentTypeDetection ?? this.disableContentTypeDetection,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'inputMessageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePaidMedia extends InputMessageContent {
  /// A message with paid media; can be used only in channel chats with supergroupFullInfo.has_paid_media_allowed
  const InputMessagePaidMedia({
    required this.starCount,
    required this.paidMedia,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.payload,
  });

  /// [starCount] The number of Telegram Stars that must be paid to see the media; 1-getOption("paid_media_message_star_count_max")
  final int starCount;

  /// [paidMedia] The content of the paid media
  final List<InputPaidMedia> paidMedia;

  /// [caption] Message caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the media; otherwise, the caption must be shown below the media; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// [payload] Bot-provided data for the paid media; bots only
  final String payload;

  factory InputMessagePaidMedia.fromJson(Map<String, dynamic> json) =>
      InputMessagePaidMedia(
        starCount: json['star_count'] ?? 0,
        paidMedia: json['paid_media'] == null
            ? <InputPaidMedia>[]
            : (json['paid_media'] as List)
                .map((e) => InputPaidMedia.fromJson(e ?? {}))
                .toList(),
        caption: FormattedText.fromJson(json['caption'] ?? {}),
        showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
        payload: json['payload'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "paid_media": paidMedia.map((e) => e.toJson()).toList(),
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "payload": payload,
    };
  }

  @override
  InputMessagePaidMedia copyWith({
    int? starCount,
    List<InputPaidMedia>? paidMedia,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    String? payload,
  }) {
    return InputMessagePaidMedia(
      starCount: starCount ?? this.starCount,
      paidMedia: paidMedia ?? this.paidMedia,
      caption: caption ?? this.caption,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
      payload: payload ?? this.payload,
    );
  }

  static const CONSTRUCTOR = 'inputMessagePaidMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePhoto extends InputMessageContent {
  /// A photo message
  const InputMessagePhoto({
    required this.photo,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [photo] Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20
  final InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable
  final List<int> addedStickerFileIds;

  /// [width] Photo width
  final int width;

  /// [height] Photo height
  final int height;

  /// [caption] Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the photo; otherwise, the caption must be shown below the photo; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Photo self-destruct type; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) =>
      InputMessagePhoto(
        photo: InputFile.fromJson(json['photo'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        addedStickerFileIds: json['added_sticker_file_ids'] == null
            ? <int>[]
            : (json['added_sticker_file_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        caption: FormattedText.fromJson(json['caption'] ?? {}),
        showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
        selfDestructType:
            MessageSelfDestructType.fromJson(json['self_destruct_type'] ?? {}),
        hasSpoiler: json['has_spoiler'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "self_destruct_type": selfDestructType?.toJson(),
      "has_spoiler": hasSpoiler,
    };
  }

  @override
  InputMessagePhoto copyWith({
    InputFile? photo,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? width,
    int? height,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    MessageSelfDestructType? selfDestructType,
    bool? hasSpoiler,
  }) {
    return InputMessagePhoto(
      photo: photo ?? this.photo,
      thumbnail: thumbnail ?? this.thumbnail,
      addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
      width: width ?? this.width,
      height: height ?? this.height,
      caption: caption ?? this.caption,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
      selfDestructType: selfDestructType ?? this.selfDestructType,
      hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    );
  }

  static const CONSTRUCTOR = 'inputMessagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker extends InputMessageContent {
  /// A sticker message
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });

  /// [sticker] Sticker to be sent
  final InputFile sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [width] Sticker width
  final int width;

  /// [height] Sticker height
  final int height;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;

  factory InputMessageSticker.fromJson(Map<String, dynamic> json) =>
      InputMessageSticker(
        sticker: InputFile.fromJson(json['sticker'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        emoji: json['emoji'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "width": width,
      "height": height,
      "emoji": emoji,
    };
  }

  @override
  InputMessageSticker copyWith({
    InputFile? sticker,
    InputThumbnail? thumbnail,
    int? width,
    int? height,
    String? emoji,
  }) {
    return InputMessageSticker(
      sticker: sticker ?? this.sticker,
      thumbnail: thumbnail ?? this.thumbnail,
      width: width ?? this.width,
      height: height ?? this.height,
      emoji: emoji ?? this.emoji,
    );
  }

  static const CONSTRUCTOR = 'inputMessageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo extends InputMessageContent {
  /// A video message
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    this.cover,
    required this.startTimestamp,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [video] Video to be sent. The video is expected to be re-encoded to MPEG4 format with H.264 codec by the sender
  final InputFile video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [cover] Cover of the video; pass null to skip cover uploading; not supported in secret chats and for self-destructing messages
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in seconds
  final int startTimestamp;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  /// [caption] Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the video; otherwise, the caption must be shown below the video; not supported in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Video self-destruct type; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler animation; not supported in secret chats
  final bool hasSpoiler;

  factory InputMessageVideo.fromJson(Map<String, dynamic> json) =>
      InputMessageVideo(
        video: InputFile.fromJson(json['video'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        cover: InputFile.fromJson(json['cover'] ?? {}),
        startTimestamp: json['start_timestamp'] ?? 0,
        addedStickerFileIds: json['added_sticker_file_ids'] == null
            ? <int>[]
            : (json['added_sticker_file_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        duration: json['duration'] ?? 0,
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        supportsStreaming: json['supports_streaming'] ?? false,
        caption: FormattedText.fromJson(json['caption'] ?? {}),
        showCaptionAboveMedia: json['show_caption_above_media'] ?? false,
        selfDestructType:
            MessageSelfDestructType.fromJson(json['self_destruct_type'] ?? {}),
        hasSpoiler: json['has_spoiler'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
      "added_sticker_file_ids": addedStickerFileIds,
      "duration": duration,
      "width": width,
      "height": height,
      "supports_streaming": supportsStreaming,
      "caption": caption?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "self_destruct_type": selfDestructType?.toJson(),
      "has_spoiler": hasSpoiler,
    };
  }

  @override
  InputMessageVideo copyWith({
    InputFile? video,
    InputThumbnail? thumbnail,
    InputFile? cover,
    int? startTimestamp,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    bool? supportsStreaming,
    FormattedText? caption,
    bool? showCaptionAboveMedia,
    MessageSelfDestructType? selfDestructType,
    bool? hasSpoiler,
  }) {
    return InputMessageVideo(
      video: video ?? this.video,
      thumbnail: thumbnail ?? this.thumbnail,
      cover: cover ?? this.cover,
      startTimestamp: startTimestamp ?? this.startTimestamp,
      addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
      duration: duration ?? this.duration,
      width: width ?? this.width,
      height: height ?? this.height,
      supportsStreaming: supportsStreaming ?? this.supportsStreaming,
      caption: caption ?? this.caption,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
      selfDestructType: selfDestructType ?? this.selfDestructType,
      hasSpoiler: hasSpoiler ?? this.hasSpoiler,
    );
  }

  static const CONSTRUCTOR = 'inputMessageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote extends InputMessageContent {
  /// A video note message
  const InputMessageVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
    this.selfDestructType,
  });

  /// [videoNote] Video note to be sent. The video is expected to be encoded to MPEG4 format with H.264 codec and have no data outside of the visible circle
  final InputFile videoNote;

  /// [thumbnail] Video thumbnail; may be null if empty; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds; 0-60
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  /// [selfDestructType] Video note self-destruct type; may be null if none; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) =>
      InputMessageVideoNote(
        videoNote: InputFile.fromJson(json['video_note'] ?? {}),
        thumbnail: InputThumbnail.fromJson(json['thumbnail'] ?? {}),
        duration: json['duration'] ?? 0,
        length: json['length'] ?? 0,
        selfDestructType:
            MessageSelfDestructType.fromJson(json['self_destruct_type'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "length": length,
      "self_destruct_type": selfDestructType?.toJson(),
    };
  }

  @override
  InputMessageVideoNote copyWith({
    InputFile? videoNote,
    InputThumbnail? thumbnail,
    int? duration,
    int? length,
    MessageSelfDestructType? selfDestructType,
  }) {
    return InputMessageVideoNote(
      videoNote: videoNote ?? this.videoNote,
      thumbnail: thumbnail ?? this.thumbnail,
      duration: duration ?? this.duration,
      length: length ?? this.length,
      selfDestructType: selfDestructType ?? this.selfDestructType,
    );
  }

  static const CONSTRUCTOR = 'inputMessageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote extends InputMessageContent {
  /// A voice note message
  const InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    this.caption,
    this.selfDestructType,
  });

  /// [voiceNote] Voice note to be sent. The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio channel, or be in MP3 or M4A format as regular audio
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [caption] Voice note caption; may be null if empty; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructType] Voice note self-destruct type; may be null if none; pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) =>
      InputMessageVoiceNote(
        voiceNote: InputFile.fromJson(json['voice_note'] ?? {}),
        duration: json['duration'] ?? 0,
        waveform: json['waveform'] ?? '',
        caption: FormattedText.fromJson(json['caption'] ?? {}),
        selfDestructType:
            MessageSelfDestructType.fromJson(json['self_destruct_type'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote.toJson(),
      "duration": duration,
      "waveform": waveform,
      "caption": caption?.toJson(),
      "self_destruct_type": selfDestructType?.toJson(),
    };
  }

  @override
  InputMessageVoiceNote copyWith({
    InputFile? voiceNote,
    int? duration,
    String? waveform,
    FormattedText? caption,
    MessageSelfDestructType? selfDestructType,
  }) {
    return InputMessageVoiceNote(
      voiceNote: voiceNote ?? this.voiceNote,
      duration: duration ?? this.duration,
      waveform: waveform ?? this.waveform,
      caption: caption ?? this.caption,
      selfDestructType: selfDestructType ?? this.selfDestructType,
    );
  }

  static const CONSTRUCTOR = 'inputMessageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation extends InputMessageContent {
  /// A message with a location
  const InputMessageLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] Location to be sent
  final Location location;

  /// [livePeriod] Period for which the location can be updated, in seconds; must be between 60 and 86400 for a temporary live location, 0x7FFFFFFF for permanent live location, and 0 otherwise
  final int livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;

  factory InputMessageLocation.fromJson(Map<String, dynamic> json) =>
      InputMessageLocation(
        location: Location.fromJson(json['location'] ?? {}),
        livePeriod: json['live_period'] ?? 0,
        heading: json['heading'] ?? 0,
        proximityAlertRadius: json['proximity_alert_radius'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }

  @override
  InputMessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) {
    return InputMessageLocation(
      location: location ?? this.location,
      livePeriod: livePeriod ?? this.livePeriod,
      heading: heading ?? this.heading,
      proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
    );
  }

  static const CONSTRUCTOR = 'inputMessageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue extends InputMessageContent {
  /// A message with information about a venue
  const InputMessageVenue({
    required this.venue,
  });

  /// [venue] Venue to send
  final Venue venue;

  factory InputMessageVenue.fromJson(Map<String, dynamic> json) =>
      InputMessageVenue(
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
  InputMessageVenue copyWith({
    Venue? venue,
  }) {
    return InputMessageVenue(
      venue: venue ?? this.venue,
    );
  }

  static const CONSTRUCTOR = 'inputMessageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact extends InputMessageContent {
  /// A message containing a user contact
  const InputMessageContact({
    required this.contact,
  });

  /// [contact] Contact to send
  final Contact contact;

  factory InputMessageContact.fromJson(Map<String, dynamic> json) =>
      InputMessageContact(
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
  InputMessageContact copyWith({
    Contact? contact,
  }) {
    return InputMessageContact(
      contact: contact ?? this.contact,
    );
  }

  static const CONSTRUCTOR = 'inputMessageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDice extends InputMessageContent {
  /// A dice message
  const InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] True, if the chat message draft must be deleted
  final bool clearDraft;

  factory InputMessageDice.fromJson(Map<String, dynamic> json) =>
      InputMessageDice(
        emoji: json['emoji'] ?? '',
        clearDraft: json['clear_draft'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "clear_draft": clearDraft,
    };
  }

  @override
  InputMessageDice copyWith({
    String? emoji,
    bool? clearDraft,
  }) {
    return InputMessageDice(
      emoji: emoji ?? this.emoji,
      clearDraft: clearDraft ?? this.clearDraft,
    );
  }

  static const CONSTRUCTOR = 'inputMessageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame extends InputMessageContent {
  /// A message with a game; not supported for channels or secret chats
  const InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });

  /// [botUserId] User identifier of the bot that owns the game
  final int botUserId;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  factory InputMessageGame.fromJson(Map<String, dynamic> json) =>
      InputMessageGame(
        botUserId: json['bot_user_id'] ?? 0,
        gameShortName: json['game_short_name'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "game_short_name": gameShortName,
    };
  }

  @override
  InputMessageGame copyWith({
    int? botUserId,
    String? gameShortName,
  }) {
    return InputMessageGame(
      botUserId: botUserId ?? this.botUserId,
      gameShortName: gameShortName ?? this.gameShortName,
    );
  }

  static const CONSTRUCTOR = 'inputMessageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice extends InputMessageContent {
  /// A message with an invoice; can be used only by bots
  const InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
    this.paidMedia,
    this.paidMediaCaption,
  });

  /// [invoice] Invoice
  final Invoice invoice;

  /// [title] Product title; 1-32 characters
  final String title;

  /// [description] Product description; 0-255 characters
  final String description;

  /// [photoUrl] Product photo URL; optional
  final String photoUrl;

  /// [photoSize] Product photo size
  final int photoSize;

  /// [photoWidth] Product photo width
  final int photoWidth;

  /// [photoHeight] Product photo height
  final int photoHeight;

  /// [payload] The invoice payload
  final String payload;

  /// [providerToken] Payment provider token; may be empty for payments in Telegram Stars
  final String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider
  final String providerData;

  /// [startParameter] Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  final String startParameter;

  /// [paidMedia] The content of paid media attached to the invoice; pass null if none
  final InputPaidMedia? paidMedia;

  /// [paidMediaCaption] Paid media caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters
  final FormattedText? paidMediaCaption;

  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) =>
      InputMessageInvoice(
        invoice: Invoice.fromJson(json['invoice'] ?? {}),
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        photoUrl: json['photo_url'] ?? '',
        photoSize: json['photo_size'] ?? 0,
        photoWidth: json['photo_width'] ?? 0,
        photoHeight: json['photo_height'] ?? 0,
        payload: json['payload'] ?? '',
        providerToken: json['provider_token'] ?? '',
        providerData: json['provider_data'] ?? '',
        startParameter: json['start_parameter'] ?? '',
        paidMedia: InputPaidMedia.fromJson(json['paid_media'] ?? {}),
        paidMediaCaption:
            FormattedText.fromJson(json['paid_media_caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice": invoice.toJson(),
      "title": title,
      "description": description,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "payload": payload,
      "provider_token": providerToken,
      "provider_data": providerData,
      "start_parameter": startParameter,
      "paid_media": paidMedia?.toJson(),
      "paid_media_caption": paidMediaCaption?.toJson(),
    };
  }

  @override
  InputMessageInvoice copyWith({
    Invoice? invoice,
    String? title,
    String? description,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    String? payload,
    String? providerToken,
    String? providerData,
    String? startParameter,
    InputPaidMedia? paidMedia,
    FormattedText? paidMediaCaption,
  }) {
    return InputMessageInvoice(
      invoice: invoice ?? this.invoice,
      title: title ?? this.title,
      description: description ?? this.description,
      photoUrl: photoUrl ?? this.photoUrl,
      photoSize: photoSize ?? this.photoSize,
      photoWidth: photoWidth ?? this.photoWidth,
      photoHeight: photoHeight ?? this.photoHeight,
      payload: payload ?? this.payload,
      providerToken: providerToken ?? this.providerToken,
      providerData: providerData ?? this.providerData,
      startParameter: startParameter ?? this.startParameter,
      paidMedia: paidMedia ?? this.paidMedia,
      paidMediaCaption: paidMediaCaption ?? this.paidMediaCaption,
    );
  }

  static const CONSTRUCTOR = 'inputMessageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll extends InputMessageContent {
  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot or the Saved Messages chat
  const InputMessagePoll({
    required this.question,
    required this.options,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });

  /// [question] Poll question; 1-255 characters (up to 300 characters for bots). Only custom emoji entities are allowed to be added and only by Premium users
  final FormattedText question;

  /// [options] List of poll answer options, 2-12 strings 1-100 characters each. Only custom emoji entities are allowed to be added and only by Premium users
  final List<FormattedText> options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
  final int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  final bool isClosed;

  factory InputMessagePoll.fromJson(Map<String, dynamic> json) =>
      InputMessagePoll(
        question: FormattedText.fromJson(json['question'] ?? {}),
        options: json['options'] == null
            ? <FormattedText>[]
            : (json['options'] as List)
                .map((e) => FormattedText.fromJson(e ?? {}))
                .toList(),
        isAnonymous: json['is_anonymous'] ?? false,
        type: PollType.fromJson(json['type'] ?? {}),
        openPeriod: json['open_period'] ?? 0,
        closeDate: json['close_date'] ?? 0,
        isClosed: json['is_closed'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "question": question.toJson(),
      "options": options.map((e) => e.toJson()).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }

  @override
  InputMessagePoll copyWith({
    FormattedText? question,
    List<FormattedText>? options,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) {
    return InputMessagePoll(
      question: question ?? this.question,
      options: options ?? this.options,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      type: type ?? this.type,
      openPeriod: openPeriod ?? this.openPeriod,
      closeDate: closeDate ?? this.closeDate,
      isClosed: isClosed ?? this.isClosed,
    );
  }

  static const CONSTRUCTOR = 'inputMessagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageStory extends InputMessageContent {
  /// A message with a forwarded story. Stories can't be forwarded to secret chats. A story can be forwarded only if story.can_be_forwarded
  const InputMessageStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  factory InputMessageStory.fromJson(Map<String, dynamic> json) =>
      InputMessageStory(
        storyPosterChatId: json['story_poster_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_poster_chat_id": storyPosterChatId,
      "story_id": storyId,
    };
  }

  @override
  InputMessageStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) {
    return InputMessageStory(
      storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
      storyId: storyId ?? this.storyId,
    );
  }

  static const CONSTRUCTOR = 'inputMessageStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded extends InputMessageContent {
  /// A forwarded message
  const InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    required this.replaceVideoStartTimestamp,
    required this.newVideoStartTimestamp,
    this.copyOptions,
  });

  /// [fromChatId] Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// [messageId] Identifier of the message to forward. A message can be forwarded only if messageProperties.can_be_forwarded
  final int messageId;

  /// [inGameShare] Pass true if a game message is being shared from a launched game; applies only to game messages
  final bool inGameShare;

  /// [replaceVideoStartTimestamp] Pass true to replace video start timestamp in the forwarded message
  final bool replaceVideoStartTimestamp;

  /// [newVideoStartTimestamp] The new video start timestamp; ignored if replace_video_start_timestamp == false
  final int newVideoStartTimestamp;

  /// [copyOptions] Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
  final MessageCopyOptions? copyOptions;

  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) =>
      InputMessageForwarded(
        fromChatId: json['from_chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
        inGameShare: json['in_game_share'] ?? false,
        replaceVideoStartTimestamp:
            json['replace_video_start_timestamp'] ?? false,
        newVideoStartTimestamp: json['new_video_start_timestamp'] ?? 0,
        copyOptions: MessageCopyOptions.fromJson(json['copy_options'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": fromChatId,
      "message_id": messageId,
      "in_game_share": inGameShare,
      "replace_video_start_timestamp": replaceVideoStartTimestamp,
      "new_video_start_timestamp": newVideoStartTimestamp,
      "copy_options": copyOptions?.toJson(),
    };
  }

  @override
  InputMessageForwarded copyWith({
    int? fromChatId,
    int? messageId,
    bool? inGameShare,
    bool? replaceVideoStartTimestamp,
    int? newVideoStartTimestamp,
    MessageCopyOptions? copyOptions,
  }) {
    return InputMessageForwarded(
      fromChatId: fromChatId ?? this.fromChatId,
      messageId: messageId ?? this.messageId,
      inGameShare: inGameShare ?? this.inGameShare,
      replaceVideoStartTimestamp:
          replaceVideoStartTimestamp ?? this.replaceVideoStartTimestamp,
      newVideoStartTimestamp:
          newVideoStartTimestamp ?? this.newVideoStartTimestamp,
      copyOptions: copyOptions ?? this.copyOptions,
    );
  }

  static const CONSTRUCTOR = 'inputMessageForwarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}
