import '../tdapi.dart';

class InputInlineQueryResult extends TdObject {
  /// Represents a single result of an inline query; for bots only
  const InputInlineQueryResult();

  factory InputInlineQueryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputInlineQueryResultAnimation.CONSTRUCTOR:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.CONSTRUCTOR:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.CONSTRUCTOR:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.CONSTRUCTOR:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.CONSTRUCTOR:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.CONSTRUCTOR:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.CONSTRUCTOR:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.CONSTRUCTOR:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.CONSTRUCTOR:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.CONSTRUCTOR:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.CONSTRUCTOR:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.CONSTRUCTOR:
        return InputInlineQueryResultVoiceNote.fromJson(json);
      default:
        return const InputInlineQueryResult();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputInlineQueryResult copyWith() {
    return const InputInlineQueryResult();
  }

  static const CONSTRUCTOR = 'inputInlineQueryResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  /// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video
  const InputInlineQueryResultAnimation({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailMimeType,
    required this.videoUrl,
    required this.videoMimeType,
    required this.videoDuration,
    required this.videoWidth,
    required this.videoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the query result
  final String title;

  /// [thumbnailUrl] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
  final String thumbnailUrl;

  /// [thumbnailMimeType] MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4"
  final String thumbnailMimeType;

  /// [videoUrl] The URL of the video file (file size must not exceed 1MB)
  final String videoUrl;

  /// [videoMimeType] MIME type of the video file. Must be one of "image/gif" and "video/mp4"
  final String videoMimeType;

  /// [videoDuration] Duration of the video, in seconds
  final int videoDuration;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultAnimation(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailMimeType: json['thumbnail_mime_type'] ?? '',
        videoUrl: json['video_url'] ?? '',
        videoMimeType: json['video_mime_type'] ?? '',
        videoDuration: json['video_duration'] ?? 0,
        videoWidth: json['video_width'] ?? 0,
        videoHeight: json['video_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_mime_type": thumbnailMimeType,
      "video_url": videoUrl,
      "video_mime_type": videoMimeType,
      "video_duration": videoDuration,
      "video_width": videoWidth,
      "video_height": videoHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultAnimation copyWith({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? thumbnailMimeType,
    String? videoUrl,
    String? videoMimeType,
    int? videoDuration,
    int? videoWidth,
    int? videoHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultAnimation(
      id: id ?? this.id,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailMimeType: thumbnailMimeType ?? this.thumbnailMimeType,
      videoUrl: videoUrl ?? this.videoUrl,
      videoMimeType: videoMimeType ?? this.videoMimeType,
      videoDuration: videoDuration ?? this.videoDuration,
      videoWidth: videoWidth ?? this.videoWidth,
      videoHeight: videoHeight ?? this.videoHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultArticle extends InputInlineQueryResult {
  /// Represents a link to an article or web page
  const InputInlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [url] URL of the result, if it exists
  final String url;

  /// [title] Title of the result
  final String title;

  /// [description] A short description of the result
  final String description;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultArticle(
        id: json['id'] ?? '',
        url: json['url'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailWidth: json['thumbnail_width'] ?? 0,
        thumbnailHeight: json['thumbnail_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "url": url,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultArticle copyWith({
    String? id,
    String? url,
    String? title,
    String? description,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultArticle(
      id: id ?? this.id,
      url: url ?? this.url,
      title: title ?? this.title,
      description: description ?? this.description,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultAudio extends InputInlineQueryResult {
  /// Represents a link to an MP3 audio file
  const InputInlineQueryResultAudio({
    required this.id,
    required this.title,
    required this.performer,
    required this.audioUrl,
    required this.audioDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the audio file
  final String title;

  /// [performer] Performer of the audio file
  final String performer;

  /// [audioUrl] The URL of the audio file
  final String audioUrl;

  /// [audioDuration] Audio file duration, in seconds
  final int audioDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultAudio(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        performer: json['performer'] ?? '',
        audioUrl: json['audio_url'] ?? '',
        audioDuration: json['audio_duration'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "performer": performer,
      "audio_url": audioUrl,
      "audio_duration": audioDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultAudio copyWith({
    String? id,
    String? title,
    String? performer,
    String? audioUrl,
    int? audioDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultAudio(
      id: id ?? this.id,
      title: title ?? this.title,
      performer: performer ?? this.performer,
      audioUrl: audioUrl ?? this.audioUrl,
      audioDuration: audioDuration ?? this.audioDuration,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultContact extends InputInlineQueryResult {
  /// Represents a user contact
  const InputInlineQueryResultContact({
    required this.id,
    required this.contact,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] User contact
  final Contact contact;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultContact(
        id: json['id'] ?? '',
        contact: Contact.fromJson(json['contact'] ?? {}),
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailWidth: json['thumbnail_width'] ?? 0,
        thumbnailHeight: json['thumbnail_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "contact": contact.toJson(),
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultContact copyWith({
    String? id,
    Contact? contact,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultContact(
      id: id ?? this.id,
      contact: contact ?? this.contact,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultDocument extends InputInlineQueryResult {
  /// Represents a link to a file
  const InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the resulting file
  final String title;

  /// [description] Short description of the result, if known
  final String description;

  /// [documentUrl] URL of the file
  final String documentUrl;

  /// [mimeType] MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
  final String mimeType;

  /// [thumbnailUrl] The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Width of the thumbnail
  final int thumbnailWidth;

  /// [thumbnailHeight] Height of the thumbnail
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultDocument(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        documentUrl: json['document_url'] ?? '',
        mimeType: json['mime_type'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailWidth: json['thumbnail_width'] ?? 0,
        thumbnailHeight: json['thumbnail_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "description": description,
      "document_url": documentUrl,
      "mime_type": mimeType,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultDocument copyWith({
    String? id,
    String? title,
    String? description,
    String? documentUrl,
    String? mimeType,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultDocument(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      documentUrl: documentUrl ?? this.documentUrl,
      mimeType: mimeType ?? this.mimeType,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultGame extends InputInlineQueryResult {
  /// Represents a game
  const InputInlineQueryResultGame({
    required this.id,
    required this.gameShortName,
    this.replyMarkup,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  factory InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultGame(
        id: json['id'] ?? '',
        gameShortName: json['game_short_name'] ?? '',
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "game_short_name": gameShortName,
      "reply_markup": replyMarkup?.toJson(),
    };
  }

  @override
  InputInlineQueryResultGame copyWith({
    String? id,
    String? gameShortName,
    ReplyMarkup? replyMarkup,
  }) {
    return InputInlineQueryResultGame(
      id: id ?? this.id,
      gameShortName: gameShortName ?? this.gameShortName,
      replyMarkup: replyMarkup ?? this.replyMarkup,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultLocation extends InputInlineQueryResult {
  /// Represents a point on the map
  const InputInlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.livePeriod,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location location;

  /// [livePeriod] Amount of time relative to the message sent time until the location can be updated, in seconds
  final int livePeriod;

  /// [title] Title of the result
  final String title;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultLocation(
        id: json['id'] ?? '',
        location: Location.fromJson(json['location'] ?? {}),
        livePeriod: json['live_period'] ?? 0,
        title: json['title'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailWidth: json['thumbnail_width'] ?? 0,
        thumbnailHeight: json['thumbnail_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "location": location.toJson(),
      "live_period": livePeriod,
      "title": title,
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultLocation copyWith({
    String? id,
    Location? location,
    int? livePeriod,
    String? title,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultLocation(
      id: id ?? this.id,
      location: location ?? this.location,
      livePeriod: livePeriod ?? this.livePeriod,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  /// Represents link to a JPEG image
  const InputInlineQueryResultPhoto({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.photoUrl,
    required this.photoWidth,
    required this.photoHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result, if known
  final String title;

  /// [description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] URL of the photo thumbnail, if it exists
  final String thumbnailUrl;

  /// [photoUrl] The URL of the JPEG photo (photo size must not exceed 5MB)
  final String photoUrl;

  /// [photoWidth] Width of the photo
  final int photoWidth;

  /// [photoHeight] Height of the photo
  final int photoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultPhoto(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        photoUrl: json['photo_url'] ?? '',
        photoWidth: json['photo_width'] ?? 0,
        photoHeight: json['photo_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "photo_url": photoUrl,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultPhoto copyWith({
    String? id,
    String? title,
    String? description,
    String? thumbnailUrl,
    String? photoUrl,
    int? photoWidth,
    int? photoHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultPhoto(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      photoUrl: photoUrl ?? this.photoUrl,
      photoWidth: photoWidth ?? this.photoWidth,
      photoHeight: photoHeight ?? this.photoHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultSticker extends InputInlineQueryResult {
  /// Represents a link to a WEBP, TGS, or WEBM sticker
  const InputInlineQueryResultSticker({
    required this.id,
    required this.thumbnailUrl,
    required this.stickerUrl,
    required this.stickerWidth,
    required this.stickerHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;

  /// [stickerUrl] The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB)
  final String stickerUrl;

  /// [stickerWidth] Width of the sticker
  final int stickerWidth;

  /// [stickerHeight] Height of the sticker
  final int stickerHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultSticker(
        id: json['id'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        stickerUrl: json['sticker_url'] ?? '',
        stickerWidth: json['sticker_width'] ?? 0,
        stickerHeight: json['sticker_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "thumbnail_url": thumbnailUrl,
      "sticker_url": stickerUrl,
      "sticker_width": stickerWidth,
      "sticker_height": stickerHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultSticker copyWith({
    String? id,
    String? thumbnailUrl,
    String? stickerUrl,
    int? stickerWidth,
    int? stickerHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultSticker(
      id: id ?? this.id,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      stickerUrl: stickerUrl ?? this.stickerUrl,
      stickerWidth: stickerWidth ?? this.stickerWidth,
      stickerHeight: stickerHeight ?? this.stickerHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVenue extends InputInlineQueryResult {
  /// Represents information about a venue
  const InputInlineQueryResultVenue({
    required this.id,
    required this.venue,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue venue;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultVenue(
        id: json['id'] ?? '',
        venue: Venue.fromJson(json['venue'] ?? {}),
        thumbnailUrl: json['thumbnail_url'] ?? '',
        thumbnailWidth: json['thumbnail_width'] ?? 0,
        thumbnailHeight: json['thumbnail_height'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "venue": venue.toJson(),
      "thumbnail_url": thumbnailUrl,
      "thumbnail_width": thumbnailWidth,
      "thumbnail_height": thumbnailHeight,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultVenue copyWith({
    String? id,
    Venue? venue,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultVenue(
      id: id ?? this.id,
      venue: venue ?? this.venue,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailWidth: thumbnailWidth ?? this.thumbnailWidth,
      thumbnailHeight: thumbnailHeight ?? this.thumbnailHeight,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVideo extends InputInlineQueryResult {
  /// Represents a link to a page containing an embedded video player or a video file
  const InputInlineQueryResultVideo({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.mimeType,
    required this.videoWidth,
    required this.videoHeight,
    required this.videoDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result
  final String title;

  /// [description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;

  /// [videoUrl] URL of the embedded video player or video file
  final String videoUrl;

  /// [mimeType] MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
  final String mimeType;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [videoDuration] Video duration, in seconds
  final int videoDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultVideo(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        thumbnailUrl: json['thumbnail_url'] ?? '',
        videoUrl: json['video_url'] ?? '',
        mimeType: json['mime_type'] ?? '',
        videoWidth: json['video_width'] ?? 0,
        videoHeight: json['video_height'] ?? 0,
        videoDuration: json['video_duration'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "description": description,
      "thumbnail_url": thumbnailUrl,
      "video_url": videoUrl,
      "mime_type": mimeType,
      "video_width": videoWidth,
      "video_height": videoHeight,
      "video_duration": videoDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultVideo copyWith({
    String? id,
    String? title,
    String? description,
    String? thumbnailUrl,
    String? videoUrl,
    String? mimeType,
    int? videoWidth,
    int? videoHeight,
    int? videoDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultVideo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      mimeType: mimeType ?? this.mimeType,
      videoWidth: videoWidth ?? this.videoWidth,
      videoHeight: videoHeight ?? this.videoHeight,
      videoDuration: videoDuration ?? this.videoDuration,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
  const InputInlineQueryResultVoiceNote({
    required this.id,
    required this.title,
    required this.voiceNoteUrl,
    required this.voiceNoteDuration,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the voice note
  final String title;

  /// [voiceNoteUrl] The URL of the voice note file
  final String voiceNoteUrl;

  /// [voiceNoteDuration] Duration of the voice note, in seconds
  final int voiceNoteDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent inputMessageContent;

  factory InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) =>
      InputInlineQueryResultVoiceNote(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        voiceNoteUrl: json['voice_note_url'] ?? '',
        voiceNoteDuration: json['voice_note_duration'] ?? 0,
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup'] ?? {}),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "voice_note_url": voiceNoteUrl,
      "voice_note_duration": voiceNoteDuration,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
    };
  }

  @override
  InputInlineQueryResultVoiceNote copyWith({
    String? id,
    String? title,
    String? voiceNoteUrl,
    int? voiceNoteDuration,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InputInlineQueryResultVoiceNote(
      id: id ?? this.id,
      title: title ?? this.title,
      voiceNoteUrl: voiceNoteUrl ?? this.voiceNoteUrl,
      voiceNoteDuration: voiceNoteDuration ?? this.voiceNoteDuration,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
