import '../tdapi.dart';

class FileType extends TdObject {
  /// Represents the type of file
  const FileType();

  factory FileType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case FileTypeNone.CONSTRUCTOR:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.CONSTRUCTOR:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.CONSTRUCTOR:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.CONSTRUCTOR:
        return FileTypeDocument.fromJson(json);
      case FileTypeNotificationSound.CONSTRUCTOR:
        return FileTypeNotificationSound.fromJson(json);
      case FileTypePhoto.CONSTRUCTOR:
        return FileTypePhoto.fromJson(json);
      case FileTypePhotoStory.CONSTRUCTOR:
        return FileTypePhotoStory.fromJson(json);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.CONSTRUCTOR:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.CONSTRUCTOR:
        return FileTypeSecure.fromJson(json);
      case FileTypeSelfDestructingPhoto.CONSTRUCTOR:
        return FileTypeSelfDestructingPhoto.fromJson(json);
      case FileTypeSelfDestructingVideo.CONSTRUCTOR:
        return FileTypeSelfDestructingVideo.fromJson(json);
      case FileTypeSelfDestructingVideoNote.CONSTRUCTOR:
        return FileTypeSelfDestructingVideoNote.fromJson(json);
      case FileTypeSelfDestructingVoiceNote.CONSTRUCTOR:
        return FileTypeSelfDestructingVoiceNote.fromJson(json);
      case FileTypeSticker.CONSTRUCTOR:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.CONSTRUCTOR:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.CONSTRUCTOR:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.CONSTRUCTOR:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.CONSTRUCTOR:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVideoStory.CONSTRUCTOR:
        return FileTypeVideoStory.fromJson(json);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.CONSTRUCTOR:
        return FileTypeWallpaper.fromJson(json);
      default:
        return const FileType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  FileType copyWith() {
    return const FileType();
  }

  static const CONSTRUCTOR = 'fileType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeNone extends FileType {
  /// The data is not a file
  const FileTypeNone();

  factory FileTypeNone.fromJson(Map<String, dynamic> json) =>
      const FileTypeNone();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeNone copyWith() {
    return const FileTypeNone();
  }

  static const CONSTRUCTOR = 'fileTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAnimation extends FileType {
  /// The file is an animation
  const FileTypeAnimation();

  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) =>
      const FileTypeAnimation();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeAnimation copyWith() {
    return const FileTypeAnimation();
  }

  static const CONSTRUCTOR = 'fileTypeAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAudio extends FileType {
  /// The file is an audio file
  const FileTypeAudio();

  factory FileTypeAudio.fromJson(Map<String, dynamic> json) =>
      const FileTypeAudio();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeAudio copyWith() {
    return const FileTypeAudio();
  }

  static const CONSTRUCTOR = 'fileTypeAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeDocument extends FileType {
  /// The file is a document
  const FileTypeDocument();

  factory FileTypeDocument.fromJson(Map<String, dynamic> json) =>
      const FileTypeDocument();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeDocument copyWith() {
    return const FileTypeDocument();
  }

  static const CONSTRUCTOR = 'fileTypeDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeNotificationSound extends FileType {
  /// The file is a notification sound
  const FileTypeNotificationSound();

  factory FileTypeNotificationSound.fromJson(Map<String, dynamic> json) =>
      const FileTypeNotificationSound();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeNotificationSound copyWith() {
    return const FileTypeNotificationSound();
  }

  static const CONSTRUCTOR = 'fileTypeNotificationSound';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypePhoto extends FileType {
  /// The file is a photo
  const FileTypePhoto();

  factory FileTypePhoto.fromJson(Map<String, dynamic> json) =>
      const FileTypePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypePhoto copyWith() {
    return const FileTypePhoto();
  }

  static const CONSTRUCTOR = 'fileTypePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypePhotoStory extends FileType {
  /// The file is a photo published as a story
  const FileTypePhotoStory();

  factory FileTypePhotoStory.fromJson(Map<String, dynamic> json) =>
      const FileTypePhotoStory();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypePhotoStory copyWith() {
    return const FileTypePhotoStory();
  }

  static const CONSTRUCTOR = 'fileTypePhotoStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeProfilePhoto extends FileType {
  /// The file is a profile photo
  const FileTypeProfilePhoto();

  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) =>
      const FileTypeProfilePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeProfilePhoto copyWith() {
    return const FileTypeProfilePhoto();
  }

  static const CONSTRUCTOR = 'fileTypeProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecret extends FileType {
  /// The file was sent to a secret chat (the file type is not known to the server)
  const FileTypeSecret();

  factory FileTypeSecret.fromJson(Map<String, dynamic> json) =>
      const FileTypeSecret();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSecret copyWith() {
    return const FileTypeSecret();
  }

  static const CONSTRUCTOR = 'fileTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecretThumbnail extends FileType {
  /// The file is a thumbnail of a file from a secret chat
  const FileTypeSecretThumbnail();

  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) =>
      const FileTypeSecretThumbnail();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSecretThumbnail copyWith() {
    return const FileTypeSecretThumbnail();
  }

  static const CONSTRUCTOR = 'fileTypeSecretThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecure extends FileType {
  /// The file is a file from Secure storage used for storing Telegram Passport files
  const FileTypeSecure();

  factory FileTypeSecure.fromJson(Map<String, dynamic> json) =>
      const FileTypeSecure();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSecure copyWith() {
    return const FileTypeSecure();
  }

  static const CONSTRUCTOR = 'fileTypeSecure';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSelfDestructingPhoto extends FileType {
  /// The file is a self-destructing photo in a private chat
  const FileTypeSelfDestructingPhoto();

  factory FileTypeSelfDestructingPhoto.fromJson(Map<String, dynamic> json) =>
      const FileTypeSelfDestructingPhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSelfDestructingPhoto copyWith() {
    return const FileTypeSelfDestructingPhoto();
  }

  static const CONSTRUCTOR = 'fileTypeSelfDestructingPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSelfDestructingVideo extends FileType {
  /// The file is a self-destructing video in a private chat
  const FileTypeSelfDestructingVideo();

  factory FileTypeSelfDestructingVideo.fromJson(Map<String, dynamic> json) =>
      const FileTypeSelfDestructingVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSelfDestructingVideo copyWith() {
    return const FileTypeSelfDestructingVideo();
  }

  static const CONSTRUCTOR = 'fileTypeSelfDestructingVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSelfDestructingVideoNote extends FileType {
  /// The file is a self-destructing video note in a private chat
  const FileTypeSelfDestructingVideoNote();

  factory FileTypeSelfDestructingVideoNote.fromJson(
          Map<String, dynamic> json) =>
      const FileTypeSelfDestructingVideoNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSelfDestructingVideoNote copyWith() {
    return const FileTypeSelfDestructingVideoNote();
  }

  static const CONSTRUCTOR = 'fileTypeSelfDestructingVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSelfDestructingVoiceNote extends FileType {
  /// The file is a self-destructing voice note in a private chat
  const FileTypeSelfDestructingVoiceNote();

  factory FileTypeSelfDestructingVoiceNote.fromJson(
          Map<String, dynamic> json) =>
      const FileTypeSelfDestructingVoiceNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSelfDestructingVoiceNote copyWith() {
    return const FileTypeSelfDestructingVoiceNote();
  }

  static const CONSTRUCTOR = 'fileTypeSelfDestructingVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSticker extends FileType {
  /// The file is a sticker
  const FileTypeSticker();

  factory FileTypeSticker.fromJson(Map<String, dynamic> json) =>
      const FileTypeSticker();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeSticker copyWith() {
    return const FileTypeSticker();
  }

  static const CONSTRUCTOR = 'fileTypeSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeThumbnail extends FileType {
  /// The file is a thumbnail of another file
  const FileTypeThumbnail();

  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) =>
      const FileTypeThumbnail();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeThumbnail copyWith() {
    return const FileTypeThumbnail();
  }

  static const CONSTRUCTOR = 'fileTypeThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeUnknown extends FileType {
  /// The file type is not yet known
  const FileTypeUnknown();

  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) =>
      const FileTypeUnknown();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeUnknown copyWith() {
    return const FileTypeUnknown();
  }

  static const CONSTRUCTOR = 'fileTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideo extends FileType {
  /// The file is a video
  const FileTypeVideo();

  factory FileTypeVideo.fromJson(Map<String, dynamic> json) =>
      const FileTypeVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeVideo copyWith() {
    return const FileTypeVideo();
  }

  static const CONSTRUCTOR = 'fileTypeVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideoNote extends FileType {
  /// The file is a video note
  const FileTypeVideoNote();

  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) =>
      const FileTypeVideoNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeVideoNote copyWith() {
    return const FileTypeVideoNote();
  }

  static const CONSTRUCTOR = 'fileTypeVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideoStory extends FileType {
  /// The file is a video published as a story
  const FileTypeVideoStory();

  factory FileTypeVideoStory.fromJson(Map<String, dynamic> json) =>
      const FileTypeVideoStory();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeVideoStory copyWith() {
    return const FileTypeVideoStory();
  }

  static const CONSTRUCTOR = 'fileTypeVideoStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVoiceNote extends FileType {
  /// The file is a voice note
  const FileTypeVoiceNote();

  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) =>
      const FileTypeVoiceNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeVoiceNote copyWith() {
    return const FileTypeVoiceNote();
  }

  static const CONSTRUCTOR = 'fileTypeVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeWallpaper extends FileType {
  /// The file is a wallpaper or a background pattern
  const FileTypeWallpaper();

  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) =>
      const FileTypeWallpaper();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FileTypeWallpaper copyWith() {
    return const FileTypeWallpaper();
  }

  static const CONSTRUCTOR = 'fileTypeWallpaper';

  @override
  String getConstructor() => CONSTRUCTOR;
}
