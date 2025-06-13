import '../tdapi.dart';

class LinkPreviewType extends TdObject {

  /// Describes type of link preview
  const LinkPreviewType();
  
  /// a LinkPreviewType return type can be :
  /// * [LinkPreviewTypeAlbum]
  /// * [LinkPreviewTypeAnimation]
  /// * [LinkPreviewTypeApp]
  /// * [LinkPreviewTypeArticle]
  /// * [LinkPreviewTypeAudio]
  /// * [LinkPreviewTypeBackground]
  /// * [LinkPreviewTypeChannelBoost]
  /// * [LinkPreviewTypeChat]
  /// * [LinkPreviewTypeDocument]
  /// * [LinkPreviewTypeEmbeddedAnimationPlayer]
  /// * [LinkPreviewTypeEmbeddedAudioPlayer]
  /// * [LinkPreviewTypeEmbeddedVideoPlayer]
  /// * [LinkPreviewTypeExternalAudio]
  /// * [LinkPreviewTypeExternalVideo]
  /// * [LinkPreviewTypeGroupCall]
  /// * [LinkPreviewTypeInvoice]
  /// * [LinkPreviewTypeMessage]
  /// * [LinkPreviewTypePhoto]
  /// * [LinkPreviewTypePremiumGiftCode]
  /// * [LinkPreviewTypeShareableChatFolder]
  /// * [LinkPreviewTypeSticker]
  /// * [LinkPreviewTypeStickerSet]
  /// * [LinkPreviewTypeStory]
  /// * [LinkPreviewTypeSupergroupBoost]
  /// * [LinkPreviewTypeTheme]
  /// * [LinkPreviewTypeUnsupported]
  /// * [LinkPreviewTypeUpgradedGift]
  /// * [LinkPreviewTypeUser]
  /// * [LinkPreviewTypeVideo]
  /// * [LinkPreviewTypeVideoChat]
  /// * [LinkPreviewTypeVideoNote]
  /// * [LinkPreviewTypeVoiceNote]
  /// * [LinkPreviewTypeWebApp]
  factory LinkPreviewType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LinkPreviewTypeAlbum.CONSTRUCTOR:
        return LinkPreviewTypeAlbum.fromJson(json);
      case LinkPreviewTypeAnimation.CONSTRUCTOR:
        return LinkPreviewTypeAnimation.fromJson(json);
      case LinkPreviewTypeApp.CONSTRUCTOR:
        return LinkPreviewTypeApp.fromJson(json);
      case LinkPreviewTypeArticle.CONSTRUCTOR:
        return LinkPreviewTypeArticle.fromJson(json);
      case LinkPreviewTypeAudio.CONSTRUCTOR:
        return LinkPreviewTypeAudio.fromJson(json);
      case LinkPreviewTypeBackground.CONSTRUCTOR:
        return LinkPreviewTypeBackground.fromJson(json);
      case LinkPreviewTypeChannelBoost.CONSTRUCTOR:
        return LinkPreviewTypeChannelBoost.fromJson(json);
      case LinkPreviewTypeChat.CONSTRUCTOR:
        return LinkPreviewTypeChat.fromJson(json);
      case LinkPreviewTypeDocument.CONSTRUCTOR:
        return LinkPreviewTypeDocument.fromJson(json);
      case LinkPreviewTypeEmbeddedAnimationPlayer.CONSTRUCTOR:
        return LinkPreviewTypeEmbeddedAnimationPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedAudioPlayer.CONSTRUCTOR:
        return LinkPreviewTypeEmbeddedAudioPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedVideoPlayer.CONSTRUCTOR:
        return LinkPreviewTypeEmbeddedVideoPlayer.fromJson(json);
      case LinkPreviewTypeExternalAudio.CONSTRUCTOR:
        return LinkPreviewTypeExternalAudio.fromJson(json);
      case LinkPreviewTypeExternalVideo.CONSTRUCTOR:
        return LinkPreviewTypeExternalVideo.fromJson(json);
      case LinkPreviewTypeGroupCall.CONSTRUCTOR:
        return LinkPreviewTypeGroupCall.fromJson(json);
      case LinkPreviewTypeInvoice.CONSTRUCTOR:
        return LinkPreviewTypeInvoice.fromJson(json);
      case LinkPreviewTypeMessage.CONSTRUCTOR:
        return LinkPreviewTypeMessage.fromJson(json);
      case LinkPreviewTypePhoto.CONSTRUCTOR:
        return LinkPreviewTypePhoto.fromJson(json);
      case LinkPreviewTypePremiumGiftCode.CONSTRUCTOR:
        return LinkPreviewTypePremiumGiftCode.fromJson(json);
      case LinkPreviewTypeShareableChatFolder.CONSTRUCTOR:
        return LinkPreviewTypeShareableChatFolder.fromJson(json);
      case LinkPreviewTypeSticker.CONSTRUCTOR:
        return LinkPreviewTypeSticker.fromJson(json);
      case LinkPreviewTypeStickerSet.CONSTRUCTOR:
        return LinkPreviewTypeStickerSet.fromJson(json);
      case LinkPreviewTypeStory.CONSTRUCTOR:
        return LinkPreviewTypeStory.fromJson(json);
      case LinkPreviewTypeSupergroupBoost.CONSTRUCTOR:
        return LinkPreviewTypeSupergroupBoost.fromJson(json);
      case LinkPreviewTypeTheme.CONSTRUCTOR:
        return LinkPreviewTypeTheme.fromJson(json);
      case LinkPreviewTypeUnsupported.CONSTRUCTOR:
        return LinkPreviewTypeUnsupported.fromJson(json);
      case LinkPreviewTypeUpgradedGift.CONSTRUCTOR:
        return LinkPreviewTypeUpgradedGift.fromJson(json);
      case LinkPreviewTypeUser.CONSTRUCTOR:
        return LinkPreviewTypeUser.fromJson(json);
      case LinkPreviewTypeVideo.CONSTRUCTOR:
        return LinkPreviewTypeVideo.fromJson(json);
      case LinkPreviewTypeVideoChat.CONSTRUCTOR:
        return LinkPreviewTypeVideoChat.fromJson(json);
      case LinkPreviewTypeVideoNote.CONSTRUCTOR:
        return LinkPreviewTypeVideoNote.fromJson(json);
      case LinkPreviewTypeVoiceNote.CONSTRUCTOR:
        return LinkPreviewTypeVoiceNote.fromJson(json);
      case LinkPreviewTypeWebApp.CONSTRUCTOR:
        return LinkPreviewTypeWebApp.fromJson(json);
      default:
        return const LinkPreviewType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  LinkPreviewType copyWith() => const LinkPreviewType();

  static const CONSTRUCTOR = 'linkPreviewType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeAlbum extends LinkPreviewType {

  /// The link is a link to a media album consisting of photos and videos
  const LinkPreviewTypeAlbum({
    required this.media,
    required this.caption,
  });
  
  /// [media] The list of album media 
  final List<LinkPreviewAlbumMedia> media;

  /// [caption] Album caption
  final String caption;
  
  /// Parse from a json
  factory LinkPreviewTypeAlbum.fromJson(Map<String, dynamic> json) => LinkPreviewTypeAlbum(
    media: json['media'] == null ? <LinkPreviewAlbumMedia>[] :(json['media'] as List).map((e) => LinkPreviewAlbumMedia.fromJson(e ?? {})).toList(),
    caption: json['caption'] ?? '',
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "media": media.map((e) => e.toJson()).toList(),
      "caption": caption,
    };
  }
  
  @override
  LinkPreviewTypeAlbum copyWith({
    List<LinkPreviewAlbumMedia>? media,
    String? caption,
  }) => LinkPreviewTypeAlbum(
    media: media ?? this.media,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeAnimation extends LinkPreviewType {

  /// The link is a link to an animation
  const LinkPreviewTypeAnimation({
    required this.animation,
  });
  
  /// [animation] The animation
  final Animation animation;
  
  /// Parse from a json
  factory LinkPreviewTypeAnimation.fromJson(Map<String, dynamic> json) => LinkPreviewTypeAnimation(
    animation: Animation.fromJson(json['animation'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeAnimation copyWith({
    Animation? animation,
  }) => LinkPreviewTypeAnimation(
    animation: animation ?? this.animation,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeApp extends LinkPreviewType {

  /// The link is a link to an app at App Store or Google Play
  const LinkPreviewTypeApp({
    required this.photo,
  });
  
  /// [photo] Photo for the app
  final Photo photo;
  
  /// Parse from a json
  factory LinkPreviewTypeApp.fromJson(Map<String, dynamic> json) => LinkPreviewTypeApp(
    photo: Photo.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeApp copyWith({
    Photo? photo,
  }) => LinkPreviewTypeApp(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeApp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeArticle extends LinkPreviewType {

  /// The link is a link to a web site
  const LinkPreviewTypeArticle({
    this.photo,
  });
  
  /// [photo] Article's main photo; may be null
  final Photo? photo;
  
  /// Parse from a json
  factory LinkPreviewTypeArticle.fromJson(Map<String, dynamic> json) => LinkPreviewTypeArticle(
    photo: Photo.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeArticle copyWith({
    Photo? photo,
  }) => LinkPreviewTypeArticle(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeArticle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeAudio extends LinkPreviewType {

  /// The link is a link to an audio
  const LinkPreviewTypeAudio({
    required this.audio,
  });
  
  /// [audio] The audio description
  final Audio audio;
  
  /// Parse from a json
  factory LinkPreviewTypeAudio.fromJson(Map<String, dynamic> json) => LinkPreviewTypeAudio(
    audio: Audio.fromJson(json['audio'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeAudio copyWith({
    Audio? audio,
  }) => LinkPreviewTypeAudio(
    audio: audio ?? this.audio,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeBackground extends LinkPreviewType {

  /// The link is a link to a background. Link preview title and description are available only for filled backgrounds
  const LinkPreviewTypeBackground({
    this.document,
    this.backgroundType,
  });
  
  /// [document] Document with the background; may be null for filled backgrounds
  final Document? document;

  /// [backgroundType] Type of the background; may be null if unknown
  final BackgroundType? backgroundType;
  
  /// Parse from a json
  factory LinkPreviewTypeBackground.fromJson(Map<String, dynamic> json) => LinkPreviewTypeBackground(
    document: Document.fromJson(json['document'] ?? {}),
    backgroundType: BackgroundType.fromJson(json['background_type'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document?.toJson(),
      "background_type": backgroundType?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeBackground copyWith({
    Document? document,
    BackgroundType? backgroundType,
  }) => LinkPreviewTypeBackground(
    document: document ?? this.document,
    backgroundType: backgroundType ?? this.backgroundType,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeChannelBoost extends LinkPreviewType {

  /// The link is a link to boost a channel chat
  const LinkPreviewTypeChannelBoost({
    this.photo,
  });
  
  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;
  
  /// Parse from a json
  factory LinkPreviewTypeChannelBoost.fromJson(Map<String, dynamic> json) => LinkPreviewTypeChannelBoost(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeChannelBoost copyWith({
    ChatPhoto? photo,
  }) => LinkPreviewTypeChannelBoost(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeChannelBoost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeChat extends LinkPreviewType {

  /// The link is a link to a chat
  const LinkPreviewTypeChat({
    required this.type,
    this.photo,
    required this.createsJoinRequest,
  });
  
  /// [type] Type of the chat
  final InviteLinkChatType type;

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;
  
  /// Parse from a json
  factory LinkPreviewTypeChat.fromJson(Map<String, dynamic> json) => LinkPreviewTypeChat(
    type: InviteLinkChatType.fromJson(json['type'] ?? {}),
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
    createsJoinRequest: json['creates_join_request'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "photo": photo?.toJson(),
      "creates_join_request": createsJoinRequest,
    };
  }
  
  @override
  LinkPreviewTypeChat copyWith({
    InviteLinkChatType? type,
    ChatPhoto? photo,
    bool? createsJoinRequest,
  }) => LinkPreviewTypeChat(
    type: type ?? this.type,
    photo: photo ?? this.photo,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeDocument extends LinkPreviewType {

  /// The link is a link to a general file
  const LinkPreviewTypeDocument({
    required this.document,
  });
  
  /// [document] The document description
  final Document document;
  
  /// Parse from a json
  factory LinkPreviewTypeDocument.fromJson(Map<String, dynamic> json) => LinkPreviewTypeDocument(
    document: Document.fromJson(json['document'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeDocument copyWith({
    Document? document,
  }) => LinkPreviewTypeDocument(
    document: document ?? this.document,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeEmbeddedAnimationPlayer extends LinkPreviewType {

  /// The link is a link to an animation player
  const LinkPreviewTypeEmbeddedAnimationPlayer({
    required this.url,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });
  
  /// [url] URL of the external animation player
  final String url;

  /// [thumbnail] Thumbnail of the animation; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;
  
  /// Parse from a json
  factory LinkPreviewTypeEmbeddedAnimationPlayer.fromJson(Map<String, dynamic> json) => LinkPreviewTypeEmbeddedAnimationPlayer(
    url: json['url'] ?? '',
    thumbnail: Photo.fromJson(json['thumbnail'] ?? {}),
    duration: json['duration'] ?? 0,
    width: json['width'] ?? 0,
    height: json['height'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "width": width,
      "height": height,
    };
  }
  
  @override
  LinkPreviewTypeEmbeddedAnimationPlayer copyWith({
    String? url,
    Photo? thumbnail,
    int? duration,
    int? width,
    int? height,
  }) => LinkPreviewTypeEmbeddedAnimationPlayer(
    url: url ?? this.url,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeEmbeddedAnimationPlayer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeEmbeddedAudioPlayer extends LinkPreviewType {

  /// The link is a link to an audio player
  const LinkPreviewTypeEmbeddedAudioPlayer({
    required this.url,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });
  
  /// [url] URL of the external audio player
  final String url;

  /// [thumbnail] Thumbnail of the audio; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the audio, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;
  
  /// Parse from a json
  factory LinkPreviewTypeEmbeddedAudioPlayer.fromJson(Map<String, dynamic> json) => LinkPreviewTypeEmbeddedAudioPlayer(
    url: json['url'] ?? '',
    thumbnail: Photo.fromJson(json['thumbnail'] ?? {}),
    duration: json['duration'] ?? 0,
    width: json['width'] ?? 0,
    height: json['height'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "width": width,
      "height": height,
    };
  }
  
  @override
  LinkPreviewTypeEmbeddedAudioPlayer copyWith({
    String? url,
    Photo? thumbnail,
    int? duration,
    int? width,
    int? height,
  }) => LinkPreviewTypeEmbeddedAudioPlayer(
    url: url ?? this.url,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeEmbeddedAudioPlayer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeEmbeddedVideoPlayer extends LinkPreviewType {

  /// The link is a link to a video player
  const LinkPreviewTypeEmbeddedVideoPlayer({
    required this.url,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });
  
  /// [url] URL of the external video player
  final String url;

  /// [thumbnail] Thumbnail of the video; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;
  
  /// Parse from a json
  factory LinkPreviewTypeEmbeddedVideoPlayer.fromJson(Map<String, dynamic> json) => LinkPreviewTypeEmbeddedVideoPlayer(
    url: json['url'] ?? '',
    thumbnail: Photo.fromJson(json['thumbnail'] ?? {}),
    duration: json['duration'] ?? 0,
    width: json['width'] ?? 0,
    height: json['height'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "width": width,
      "height": height,
    };
  }
  
  @override
  LinkPreviewTypeEmbeddedVideoPlayer copyWith({
    String? url,
    Photo? thumbnail,
    int? duration,
    int? width,
    int? height,
  }) => LinkPreviewTypeEmbeddedVideoPlayer(
    url: url ?? this.url,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeEmbeddedVideoPlayer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeExternalAudio extends LinkPreviewType {

  /// The link is a link to an audio file
  const LinkPreviewTypeExternalAudio({
    required this.url,
    required this.mimeType,
    required this.duration,
  });
  
  /// [url] URL of the audio file
  final String url;

  /// [mimeType] MIME type of the audio file
  final String mimeType;

  /// [duration] Duration of the audio, in seconds; 0 if unknown
  final int duration;
  
  /// Parse from a json
  factory LinkPreviewTypeExternalAudio.fromJson(Map<String, dynamic> json) => LinkPreviewTypeExternalAudio(
    url: json['url'] ?? '',
    mimeType: json['mime_type'] ?? '',
    duration: json['duration'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "mime_type": mimeType,
      "duration": duration,
    };
  }
  
  @override
  LinkPreviewTypeExternalAudio copyWith({
    String? url,
    String? mimeType,
    int? duration,
  }) => LinkPreviewTypeExternalAudio(
    url: url ?? this.url,
    mimeType: mimeType ?? this.mimeType,
    duration: duration ?? this.duration,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeExternalAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeExternalVideo extends LinkPreviewType {

  /// The link is a link to a video file
  const LinkPreviewTypeExternalVideo({
    required this.url,
    required this.mimeType,
    required this.width,
    required this.height,
    required this.duration,
  });
  
  /// [url] URL of the video file
  final String url;

  /// [mimeType] MIME type of the video file
  final String mimeType;

  /// [width] Expected width of the video preview; 0 if unknown
  final int width;

  /// [height] Expected height of the video preview; 0 if unknown
  final int height;

  /// [duration] Duration of the video, in seconds; 0 if unknown
  final int duration;
  
  /// Parse from a json
  factory LinkPreviewTypeExternalVideo.fromJson(Map<String, dynamic> json) => LinkPreviewTypeExternalVideo(
    url: json['url'] ?? '',
    mimeType: json['mime_type'] ?? '',
    width: json['width'] ?? 0,
    height: json['height'] ?? 0,
    duration: json['duration'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "mime_type": mimeType,
      "width": width,
      "height": height,
      "duration": duration,
    };
  }
  
  @override
  LinkPreviewTypeExternalVideo copyWith({
    String? url,
    String? mimeType,
    int? width,
    int? height,
    int? duration,
  }) => LinkPreviewTypeExternalVideo(
    url: url ?? this.url,
    mimeType: mimeType ?? this.mimeType,
    width: width ?? this.width,
    height: height ?? this.height,
    duration: duration ?? this.duration,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeExternalVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeGroupCall extends LinkPreviewType {

  /// The link is a link to a group call that isn't bound to a chat
  const LinkPreviewTypeGroupCall();
  
  /// Parse from a json
  factory LinkPreviewTypeGroupCall.fromJson(Map<String, dynamic> json) => const LinkPreviewTypeGroupCall();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypeGroupCall copyWith() => const LinkPreviewTypeGroupCall();

  static const CONSTRUCTOR = 'linkPreviewTypeGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeInvoice extends LinkPreviewType {

  /// The link is a link to an invoice
  const LinkPreviewTypeInvoice();
  
  /// Parse from a json
  factory LinkPreviewTypeInvoice.fromJson(Map<String, dynamic> json) => const LinkPreviewTypeInvoice();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypeInvoice copyWith() => const LinkPreviewTypeInvoice();

  static const CONSTRUCTOR = 'linkPreviewTypeInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeMessage extends LinkPreviewType {

  /// The link is a link to a text or a poll Telegram message
  const LinkPreviewTypeMessage();
  
  /// Parse from a json
  factory LinkPreviewTypeMessage.fromJson(Map<String, dynamic> json) => const LinkPreviewTypeMessage();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypeMessage copyWith() => const LinkPreviewTypeMessage();

  static const CONSTRUCTOR = 'linkPreviewTypeMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypePhoto extends LinkPreviewType {

  /// The link is a link to a photo
  const LinkPreviewTypePhoto({
    required this.photo,
  });
  
  /// [photo] The photo
  final Photo photo;
  
  /// Parse from a json
  factory LinkPreviewTypePhoto.fromJson(Map<String, dynamic> json) => LinkPreviewTypePhoto(
    photo: Photo.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }
  
  @override
  LinkPreviewTypePhoto copyWith({
    Photo? photo,
  }) => LinkPreviewTypePhoto(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypePremiumGiftCode extends LinkPreviewType {

  /// The link is a link to a Telegram Premium gift code
  const LinkPreviewTypePremiumGiftCode();
  
  /// Parse from a json
  factory LinkPreviewTypePremiumGiftCode.fromJson(Map<String, dynamic> json) => const LinkPreviewTypePremiumGiftCode();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypePremiumGiftCode copyWith() => const LinkPreviewTypePremiumGiftCode();

  static const CONSTRUCTOR = 'linkPreviewTypePremiumGiftCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeShareableChatFolder extends LinkPreviewType {

  /// The link is a link to a shareable chat folder
  const LinkPreviewTypeShareableChatFolder();
  
  /// Parse from a json
  factory LinkPreviewTypeShareableChatFolder.fromJson(Map<String, dynamic> json) => const LinkPreviewTypeShareableChatFolder();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypeShareableChatFolder copyWith() => const LinkPreviewTypeShareableChatFolder();

  static const CONSTRUCTOR = 'linkPreviewTypeShareableChatFolder';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeSticker extends LinkPreviewType {

  /// The link is a link to a sticker
  const LinkPreviewTypeSticker({
    required this.sticker,
  });
  
  /// [sticker] The sticker. It can be an arbitrary WEBP image and can have dimensions bigger than 512
  final Sticker sticker;
  
  /// Parse from a json
  factory LinkPreviewTypeSticker.fromJson(Map<String, dynamic> json) => LinkPreviewTypeSticker(
    sticker: Sticker.fromJson(json['sticker'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeSticker copyWith({
    Sticker? sticker,
  }) => LinkPreviewTypeSticker(
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeStickerSet extends LinkPreviewType {

  /// The link is a link to a sticker set
  const LinkPreviewTypeStickerSet({
    required this.stickers,
  });
  
  /// [stickers] Up to 4 stickers from the sticker set
  final List<Sticker> stickers;
  
  /// Parse from a json
  factory LinkPreviewTypeStickerSet.fromJson(Map<String, dynamic> json) => LinkPreviewTypeStickerSet(
    stickers: json['stickers'] == null ? <Sticker>[] :(json['stickers'] as List).map((e) => Sticker.fromJson(e ?? {})).toList(),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "stickers": stickers.map((e) => e.toJson()).toList(),
    };
  }
  
  @override
  LinkPreviewTypeStickerSet copyWith({
    List<Sticker>? stickers,
  }) => LinkPreviewTypeStickerSet(
    stickers: stickers ?? this.stickers,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeStory extends LinkPreviewType {

  /// The link is a link to a story. Link preview description is unavailable
  const LinkPreviewTypeStory({
    required this.storyPosterChatId,
    required this.storyId,
  });
  
  /// [storyPosterChatId] The identifier of the chat that posted the story 
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;
  
  /// Parse from a json
  factory LinkPreviewTypeStory.fromJson(Map<String, dynamic> json) => LinkPreviewTypeStory(
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
  LinkPreviewTypeStory copyWith({
    int? storyPosterChatId,
    int? storyId,
  }) => LinkPreviewTypeStory(
    storyPosterChatId: storyPosterChatId ?? this.storyPosterChatId,
    storyId: storyId ?? this.storyId,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeStory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeSupergroupBoost extends LinkPreviewType {

  /// The link is a link to boost a supergroup chat
  const LinkPreviewTypeSupergroupBoost({
    this.photo,
  });
  
  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;
  
  /// Parse from a json
  factory LinkPreviewTypeSupergroupBoost.fromJson(Map<String, dynamic> json) => LinkPreviewTypeSupergroupBoost(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeSupergroupBoost copyWith({
    ChatPhoto? photo,
  }) => LinkPreviewTypeSupergroupBoost(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeSupergroupBoost';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeTheme extends LinkPreviewType {

  /// The link is a link to a cloud theme. TDLib has no theme support yet
  const LinkPreviewTypeTheme({
    required this.documents,
    this.settings,
  });
  
  /// [documents] The list of files with theme description 
  final List<Document> documents;

  /// [settings] Settings for the cloud theme; may be null if unknown
  final ThemeSettings? settings;
  
  /// Parse from a json
  factory LinkPreviewTypeTheme.fromJson(Map<String, dynamic> json) => LinkPreviewTypeTheme(
    documents: json['documents'] == null ? <Document>[] :(json['documents'] as List).map((e) => Document.fromJson(e ?? {})).toList(),
    settings: ThemeSettings.fromJson(json['settings'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "documents": documents.map((e) => e.toJson()).toList(),
      "settings": settings?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeTheme copyWith({
    List<Document>? documents,
    ThemeSettings? settings,
  }) => LinkPreviewTypeTheme(
    documents: documents ?? this.documents,
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeUnsupported extends LinkPreviewType {

  /// The link preview type is unsupported yet
  const LinkPreviewTypeUnsupported();
  
  /// Parse from a json
  factory LinkPreviewTypeUnsupported.fromJson(Map<String, dynamic> json) => const LinkPreviewTypeUnsupported();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  LinkPreviewTypeUnsupported copyWith() => const LinkPreviewTypeUnsupported();

  static const CONSTRUCTOR = 'linkPreviewTypeUnsupported';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeUpgradedGift extends LinkPreviewType {

  /// The link is a link to an upgraded gift
  const LinkPreviewTypeUpgradedGift({
    required this.gift,
  });
  
  /// [gift] The gift
  final UpgradedGift gift;
  
  /// Parse from a json
  factory LinkPreviewTypeUpgradedGift.fromJson(Map<String, dynamic> json) => LinkPreviewTypeUpgradedGift(
    gift: UpgradedGift.fromJson(json['gift'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gift": gift.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeUpgradedGift copyWith({
    UpgradedGift? gift,
  }) => LinkPreviewTypeUpgradedGift(
    gift: gift ?? this.gift,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeUpgradedGift';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeUser extends LinkPreviewType {

  /// The link is a link to a user
  const LinkPreviewTypeUser({
    this.photo,
    required this.isBot,
  });
  
  /// [photo] Photo of the user; may be null if none 
  final ChatPhoto? photo;

  /// [isBot] True, if the user is a bot
  final bool isBot;
  
  /// Parse from a json
  factory LinkPreviewTypeUser.fromJson(Map<String, dynamic> json) => LinkPreviewTypeUser(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
    isBot: json['is_bot'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "is_bot": isBot,
    };
  }
  
  @override
  LinkPreviewTypeUser copyWith({
    ChatPhoto? photo,
    bool? isBot,
  }) => LinkPreviewTypeUser(
    photo: photo ?? this.photo,
    isBot: isBot ?? this.isBot,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeVideo extends LinkPreviewType {

  /// The link is a link to a video
  const LinkPreviewTypeVideo({
    required this.video,
    this.cover,
    required this.startTimestamp,
  });
  
  /// [video] The video description
  final Video video;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in seconds
  final int startTimestamp;
  
  /// Parse from a json
  factory LinkPreviewTypeVideo.fromJson(Map<String, dynamic> json) => LinkPreviewTypeVideo(
    video: Video.fromJson(json['video'] ?? {}),
    cover: Photo.fromJson(json['cover'] ?? {}),
    startTimestamp: json['start_timestamp'] ?? 0,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "cover": cover?.toJson(),
      "start_timestamp": startTimestamp,
    };
  }
  
  @override
  LinkPreviewTypeVideo copyWith({
    Video? video,
    Photo? cover,
    int? startTimestamp,
  }) => LinkPreviewTypeVideo(
    video: video ?? this.video,
    cover: cover ?? this.cover,
    startTimestamp: startTimestamp ?? this.startTimestamp,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeVideoChat extends LinkPreviewType {

  /// The link is a link to a video chat
  const LinkPreviewTypeVideoChat({
    this.photo,
    required this.isLiveStream,
  });
  
  /// [photo] Photo of the chat with the video chat; may be null if none
  final ChatPhoto? photo;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in a channel or a broadcast group
  final bool isLiveStream;
  
  /// Parse from a json
  factory LinkPreviewTypeVideoChat.fromJson(Map<String, dynamic> json) => LinkPreviewTypeVideoChat(
    photo: ChatPhoto.fromJson(json['photo'] ?? {}),
    isLiveStream: json['is_live_stream'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "is_live_stream": isLiveStream,
    };
  }
  
  @override
  LinkPreviewTypeVideoChat copyWith({
    ChatPhoto? photo,
    bool? isLiveStream,
  }) => LinkPreviewTypeVideoChat(
    photo: photo ?? this.photo,
    isLiveStream: isLiveStream ?? this.isLiveStream,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeVideoNote extends LinkPreviewType {

  /// The link is a link to a video note message
  const LinkPreviewTypeVideoNote({
    required this.videoNote,
  });
  
  /// [videoNote] The video note
  final VideoNote videoNote;
  
  /// Parse from a json
  factory LinkPreviewTypeVideoNote.fromJson(Map<String, dynamic> json) => LinkPreviewTypeVideoNote(
    videoNote: VideoNote.fromJson(json['video_note'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeVideoNote copyWith({
    VideoNote? videoNote,
  }) => LinkPreviewTypeVideoNote(
    videoNote: videoNote ?? this.videoNote,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeVoiceNote extends LinkPreviewType {

  /// The link is a link to a voice note message
  const LinkPreviewTypeVoiceNote({
    required this.voiceNote,
  });
  
  /// [voiceNote] The voice note
  final VoiceNote voiceNote;
  
  /// Parse from a json
  factory LinkPreviewTypeVoiceNote.fromJson(Map<String, dynamic> json) => LinkPreviewTypeVoiceNote(
    voiceNote: VoiceNote.fromJson(json['voice_note'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeVoiceNote copyWith({
    VoiceNote? voiceNote,
  }) => LinkPreviewTypeVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class LinkPreviewTypeWebApp extends LinkPreviewType {

  /// The link is a link to a Web App
  const LinkPreviewTypeWebApp({
    this.photo,
  });
  
  /// [photo] Web App photo; may be null if none
  final Photo? photo;
  
  /// Parse from a json
  factory LinkPreviewTypeWebApp.fromJson(Map<String, dynamic> json) => LinkPreviewTypeWebApp(
    photo: Photo.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
    };
  }
  
  @override
  LinkPreviewTypeWebApp copyWith({
    Photo? photo,
  }) => LinkPreviewTypeWebApp(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'linkPreviewTypeWebApp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
