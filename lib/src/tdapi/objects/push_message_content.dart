import '../tdapi.dart';

class PushMessageContent extends TdObject {
  /// Contains content of a push message notification
  const PushMessageContent();

  factory PushMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PushMessageContentHidden.CONSTRUCTOR:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.CONSTRUCTOR:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.CONSTRUCTOR:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.CONSTRUCTOR:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.CONSTRUCTOR:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.CONSTRUCTOR:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.CONSTRUCTOR:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.CONSTRUCTOR:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.CONSTRUCTOR:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.CONSTRUCTOR:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPaidMedia.CONSTRUCTOR:
        return PushMessageContentPaidMedia.fromJson(json);
      case PushMessageContentPhoto.CONSTRUCTOR:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.CONSTRUCTOR:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentPremiumGiftCode.CONSTRUCTOR:
        return PushMessageContentPremiumGiftCode.fromJson(json);
      case PushMessageContentGiveaway.CONSTRUCTOR:
        return PushMessageContentGiveaway.fromJson(json);
      case PushMessageContentGift.CONSTRUCTOR:
        return PushMessageContentGift.fromJson(json);
      case PushMessageContentUpgradedGift.CONSTRUCTOR:
        return PushMessageContentUpgradedGift.fromJson(json);
      case PushMessageContentScreenshotTaken.CONSTRUCTOR:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.CONSTRUCTOR:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentStory.CONSTRUCTOR:
        return PushMessageContentStory.fromJson(json);
      case PushMessageContentText.CONSTRUCTOR:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.CONSTRUCTOR:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.CONSTRUCTOR:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.CONSTRUCTOR:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.CONSTRUCTOR:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentVideoChatStarted.CONSTRUCTOR:
        return PushMessageContentVideoChatStarted.fromJson(json);
      case PushMessageContentVideoChatEnded.CONSTRUCTOR:
        return PushMessageContentVideoChatEnded.fromJson(json);
      case PushMessageContentInviteVideoChatParticipants.CONSTRUCTOR:
        return PushMessageContentInviteVideoChatParticipants.fromJson(json);
      case PushMessageContentChatAddMembers.CONSTRUCTOR:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.CONSTRUCTOR:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.CONSTRUCTOR:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatSetBackground.CONSTRUCTOR:
        return PushMessageContentChatSetBackground.fromJson(json);
      case PushMessageContentChatSetTheme.CONSTRUCTOR:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.CONSTRUCTOR:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentRecurringPayment.CONSTRUCTOR:
        return PushMessageContentRecurringPayment.fromJson(json);
      case PushMessageContentSuggestProfilePhoto.CONSTRUCTOR:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);
      case PushMessageContentProximityAlertTriggered.CONSTRUCTOR:
        return PushMessageContentProximityAlertTriggered.fromJson(json);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        return const PushMessageContent();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PushMessageContent copyWith() {
    return const PushMessageContent();
  }

  static const CONSTRUCTOR = 'pushMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentHidden extends PushMessageContent {
  /// A general message with hidden content
  const PushMessageContentHidden({
    required this.isPinned,
  });

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentHidden.fromJson(Map<String, dynamic> json) =>
      PushMessageContentHidden(
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentHidden copyWith({
    bool? isPinned,
  }) {
    return PushMessageContentHidden(
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAnimation extends PushMessageContent {
  /// An animation message (GIF-style).
  const PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });

  /// [animation] Message content; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final String caption;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentAnimation.fromJson(Map<String, dynamic> json) =>
      PushMessageContentAnimation(
        animation: Animation.fromJson(json['animation'] ?? {}),
        caption: json['caption'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation?.toJson(),
      "caption": caption,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentAnimation copyWith({
    Animation? animation,
    String? caption,
    bool? isPinned,
  }) {
    return PushMessageContentAnimation(
      animation: animation ?? this.animation,
      caption: caption ?? this.caption,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAudio extends PushMessageContent {
  /// An audio message
  const PushMessageContentAudio({
    this.audio,
    required this.isPinned,
  });

  /// [audio] Message content; may be null
  final Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentAudio.fromJson(Map<String, dynamic> json) =>
      PushMessageContentAudio(
        audio: Audio.fromJson(json['audio'] ?? {}),
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio?.toJson(),
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentAudio copyWith({
    Audio? audio,
    bool? isPinned,
  }) {
    return PushMessageContentAudio(
      audio: audio ?? this.audio,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContact extends PushMessageContent {
  /// A message with a user contact
  const PushMessageContentContact({
    required this.name,
    required this.isPinned,
  });

  /// [name] Contact's name
  final String name;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentContact.fromJson(Map<String, dynamic> json) =>
      PushMessageContentContact(
        name: json['name'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentContact copyWith({
    String? name,
    bool? isPinned,
  }) {
    return PushMessageContentContact(
      name: name ?? this.name,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContactRegistered extends PushMessageContent {
  /// A contact has registered with Telegram
  const PushMessageContentContactRegistered();

  factory PushMessageContentContactRegistered.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentContactRegistered();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentContactRegistered copyWith() {
    return const PushMessageContentContactRegistered();
  }

  static const CONSTRUCTOR = 'pushMessageContentContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentDocument extends PushMessageContent {
  /// A document message (a general file)
  const PushMessageContentDocument({
    this.document,
    required this.isPinned,
  });

  /// [document] Message content; may be null
  final Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentDocument.fromJson(Map<String, dynamic> json) =>
      PushMessageContentDocument(
        document: Document.fromJson(json['document'] ?? {}),
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document?.toJson(),
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentDocument copyWith({
    Document? document,
    bool? isPinned,
  }) {
    return PushMessageContentDocument(
      document: document ?? this.document,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGame extends PushMessageContent {
  /// A message with a game
  const PushMessageContentGame({
    required this.title,
    required this.isPinned,
  });

  /// [title] Game title, empty for pinned game message
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentGame.fromJson(Map<String, dynamic> json) =>
      PushMessageContentGame(
        title: json['title'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentGame copyWith({
    String? title,
    bool? isPinned,
  }) {
    return PushMessageContentGame(
      title: title ?? this.title,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGameScore extends PushMessageContent {
  /// A new high score was achieved in a game
  const PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });

  /// [title] Game title, empty for pinned message
  final String title;

  /// [score] New score, 0 for pinned message
  final int score;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentGameScore.fromJson(Map<String, dynamic> json) =>
      PushMessageContentGameScore(
        title: json['title'] ?? '',
        score: json['score'] ?? 0,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "score": score,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentGameScore copyWith({
    String? title,
    int? score,
    bool? isPinned,
  }) {
    return PushMessageContentGameScore(
      title: title ?? this.title,
      score: score ?? this.score,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentInvoice extends PushMessageContent {
  /// A message with an invoice from a bot
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });

  /// [price] Product price
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentInvoice.fromJson(Map<String, dynamic> json) =>
      PushMessageContentInvoice(
        price: json['price'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "price": price,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentInvoice copyWith({
    String? price,
    bool? isPinned,
  }) {
    return PushMessageContentInvoice(
      price: price ?? this.price,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentLocation extends PushMessageContent {
  /// A message with a location
  const PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });

  /// [isLive] True, if the location is live
  final bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentLocation.fromJson(Map<String, dynamic> json) =>
      PushMessageContentLocation(
        isLive: json['is_live'] ?? false,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_live": isLive,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentLocation copyWith({
    bool? isLive,
    bool? isPinned,
  }) {
    return PushMessageContentLocation(
      isLive: isLive ?? this.isLive,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPaidMedia extends PushMessageContent {
  /// A message with paid media
  const PushMessageContentPaidMedia({
    required this.starCount,
    required this.isPinned,
  });

  /// [starCount] Number of Telegram Stars needed to buy access to the media in the message; 0 for pinned message
  final int starCount;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentPaidMedia.fromJson(Map<String, dynamic> json) =>
      PushMessageContentPaidMedia(
        starCount: json['star_count'] ?? 0,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "star_count": starCount,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentPaidMedia copyWith({
    int? starCount,
    bool? isPinned,
  }) {
    return PushMessageContentPaidMedia(
      starCount: starCount ?? this.starCount,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentPaidMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPhoto extends PushMessageContent {
  /// A photo message
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [photo] Message content; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final String caption;

  /// [isSecret] True, if the photo is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentPhoto.fromJson(Map<String, dynamic> json) =>
      PushMessageContentPhoto(
        photo: Photo.fromJson(json['photo'] ?? {}),
        caption: json['caption'] ?? '',
        isSecret: json['is_secret'] ?? false,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentPhoto copyWith({
    Photo? photo,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) {
    return PushMessageContentPhoto(
      photo: photo ?? this.photo,
      caption: caption ?? this.caption,
      isSecret: isSecret ?? this.isSecret,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPoll extends PushMessageContent {
  /// A message with a poll
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });

  /// [question] Poll question
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentPoll.fromJson(Map<String, dynamic> json) =>
      PushMessageContentPoll(
        question: json['question'] ?? '',
        isRegular: json['is_regular'] ?? false,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "question": question,
      "is_regular": isRegular,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentPoll copyWith({
    String? question,
    bool? isRegular,
    bool? isPinned,
  }) {
    return PushMessageContentPoll(
      question: question ?? this.question,
      isRegular: isRegular ?? this.isRegular,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPremiumGiftCode extends PushMessageContent {
  /// A message with a Telegram Premium gift code created for the user
  const PushMessageContentPremiumGiftCode({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;

  factory PushMessageContentPremiumGiftCode.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentPremiumGiftCode(
        monthCount: json['month_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "month_count": monthCount,
    };
  }

  @override
  PushMessageContentPremiumGiftCode copyWith({
    int? monthCount,
  }) {
    return PushMessageContentPremiumGiftCode(
      monthCount: monthCount ?? this.monthCount,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentPremiumGiftCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGiveaway extends PushMessageContent {
  /// A message with a giveaway
  const PushMessageContentGiveaway({
    required this.winnerCount,
    this.prize,
    required this.isPinned,
  });

  /// [winnerCount] Number of users which will receive giveaway prizes; 0 for pinned message
  final int winnerCount;

  /// [prize] Prize of the giveaway; may be null for pinned message
  final GiveawayPrize? prize;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentGiveaway.fromJson(Map<String, dynamic> json) =>
      PushMessageContentGiveaway(
        winnerCount: json['winner_count'] ?? 0,
        prize: GiveawayPrize.fromJson(json['prize'] ?? {}),
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "winner_count": winnerCount,
      "prize": prize?.toJson(),
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentGiveaway copyWith({
    int? winnerCount,
    GiveawayPrize? prize,
    bool? isPinned,
  }) {
    return PushMessageContentGiveaway(
      winnerCount: winnerCount ?? this.winnerCount,
      prize: prize ?? this.prize,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentGiveaway';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGift extends PushMessageContent {
  /// A message with a gift
  const PushMessageContentGift({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that sender paid for the gift
  final int starCount;

  factory PushMessageContentGift.fromJson(Map<String, dynamic> json) =>
      PushMessageContentGift(
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
  PushMessageContentGift copyWith({
    int? starCount,
  }) {
    return PushMessageContentGift(
      starCount: starCount ?? this.starCount,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentUpgradedGift extends PushMessageContent {
  /// A message with an upgraded gift
  const PushMessageContentUpgradedGift({
    required this.isUpgrade,
  });

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously received gift; otherwise, this is a transferred or resold gift
  final bool isUpgrade;

  factory PushMessageContentUpgradedGift.fromJson(Map<String, dynamic> json) =>
      PushMessageContentUpgradedGift(
        isUpgrade: json['is_upgrade'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_upgrade": isUpgrade,
    };
  }

  @override
  PushMessageContentUpgradedGift copyWith({
    bool? isUpgrade,
  }) {
    return PushMessageContentUpgradedGift(
      isUpgrade: isUpgrade ?? this.isUpgrade,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentUpgradedGift';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentScreenshotTaken extends PushMessageContent {
  /// A screenshot of a message in the chat has been taken
  const PushMessageContentScreenshotTaken();

  factory PushMessageContentScreenshotTaken.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentScreenshotTaken();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentScreenshotTaken copyWith() {
    return const PushMessageContentScreenshotTaken();
  }

  static const CONSTRUCTOR = 'pushMessageContentScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentSticker extends PushMessageContent {
  /// A message with a sticker
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });

  /// [sticker] Message content; may be null
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentSticker.fromJson(Map<String, dynamic> json) =>
      PushMessageContentSticker(
        sticker: Sticker.fromJson(json['sticker'] ?? {}),
        emoji: json['emoji'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker?.toJson(),
      "emoji": emoji,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentSticker copyWith({
    Sticker? sticker,
    String? emoji,
    bool? isPinned,
  }) {
    return PushMessageContentSticker(
      sticker: sticker ?? this.sticker,
      emoji: emoji ?? this.emoji,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentStory extends PushMessageContent {
  /// A message with a story
  const PushMessageContentStory({
    required this.isMention,
    required this.isPinned,
  });

  /// [isMention] True, if the user was mentioned in the story
  final bool isMention;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentStory.fromJson(Map<String, dynamic> json) =>
      PushMessageContentStory(
        isMention: json['is_mention'] ?? false,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_mention": isMention,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentStory copyWith({
    bool? isMention,
    bool? isPinned,
  }) {
    return PushMessageContentStory(
      isMention: isMention ?? this.isMention,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentText extends PushMessageContent {
  /// A text message
  const PushMessageContentText({
    required this.text,
    required this.isPinned,
  });

  /// [text] Message text
  final String text;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentText.fromJson(Map<String, dynamic> json) =>
      PushMessageContentText(
        text: json['text'] ?? '',
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentText copyWith({
    String? text,
    bool? isPinned,
  }) {
    return PushMessageContentText(
      text: text ?? this.text,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideo extends PushMessageContent {
  /// A video message
  const PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [video] Message content; may be null
  final Video? video;

  /// [caption] Video caption
  final String caption;

  /// [isSecret] True, if the video is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentVideo.fromJson(Map<String, dynamic> json) =>
      PushMessageContentVideo(
        video: Video.fromJson(json['video'] ?? {}),
        caption: json['caption'] ?? '',
        isSecret: json['is_secret'] ?? false,
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentVideo copyWith({
    Video? video,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) {
    return PushMessageContentVideo(
      video: video ?? this.video,
      caption: caption ?? this.caption,
      isSecret: isSecret ?? this.isSecret,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoNote extends PushMessageContent {
  /// A video note message
  const PushMessageContentVideoNote({
    this.videoNote,
    required this.isPinned,
  });

  /// [videoNote] Message content; may be null
  final VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) =>
      PushMessageContentVideoNote(
        videoNote: VideoNote.fromJson(json['video_note'] ?? {}),
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote?.toJson(),
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentVideoNote copyWith({
    VideoNote? videoNote,
    bool? isPinned,
  }) {
    return PushMessageContentVideoNote(
      videoNote: videoNote ?? this.videoNote,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVoiceNote extends PushMessageContent {
  /// A voice note message
  const PushMessageContentVoiceNote({
    this.voiceNote,
    required this.isPinned,
  });

  /// [voiceNote] Message content; may be null
  final VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;

  factory PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) =>
      PushMessageContentVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note'] ?? {}),
        isPinned: json['is_pinned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote?.toJson(),
      "is_pinned": isPinned,
    };
  }

  @override
  PushMessageContentVoiceNote copyWith({
    VoiceNote? voiceNote,
    bool? isPinned,
  }) {
    return PushMessageContentVoiceNote(
      voiceNote: voiceNote ?? this.voiceNote,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  /// A newly created basic group
  const PushMessageContentBasicGroupChatCreate();

  factory PushMessageContentBasicGroupChatCreate.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentBasicGroupChatCreate();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentBasicGroupChatCreate copyWith() {
    return const PushMessageContentBasicGroupChatCreate();
  }

  static const CONSTRUCTOR = 'pushMessageContentBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoChatStarted extends PushMessageContent {
  /// A video chat or live stream was started
  const PushMessageContentVideoChatStarted();

  factory PushMessageContentVideoChatStarted.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentVideoChatStarted();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentVideoChatStarted copyWith() {
    return const PushMessageContentVideoChatStarted();
  }

  static const CONSTRUCTOR = 'pushMessageContentVideoChatStarted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoChatEnded extends PushMessageContent {
  /// A video chat or live stream has ended
  const PushMessageContentVideoChatEnded();

  factory PushMessageContentVideoChatEnded.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentVideoChatEnded();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentVideoChatEnded copyWith() {
    return const PushMessageContentVideoChatEnded();
  }

  static const CONSTRUCTOR = 'pushMessageContentVideoChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentInviteVideoChatParticipants extends PushMessageContent {
  /// An invitation of participants to a video chat or live stream
  const PushMessageContentInviteVideoChatParticipants({
    required this.isCurrentUser,
  });

  /// [isCurrentUser] True, if the current user was invited to the video chat or the live stream
  final bool isCurrentUser;

  factory PushMessageContentInviteVideoChatParticipants.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentInviteVideoChatParticipants(
        isCurrentUser: json['is_current_user'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_current_user": isCurrentUser,
    };
  }

  @override
  PushMessageContentInviteVideoChatParticipants copyWith({
    bool? isCurrentUser,
  }) {
    return PushMessageContentInviteVideoChatParticipants(
      isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentInviteVideoChatParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatAddMembers extends PushMessageContent {
  /// New chat members were invited to a group
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });

  /// [memberName] Name of the added member
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  final bool isReturned;

  factory PushMessageContentChatAddMembers.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentChatAddMembers(
        memberName: json['member_name'] ?? '',
        isCurrentUser: json['is_current_user'] ?? false,
        isReturned: json['is_returned'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_returned": isReturned,
    };
  }

  @override
  PushMessageContentChatAddMembers copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isReturned,
  }) {
    return PushMessageContentChatAddMembers(
      memberName: memberName ?? this.memberName,
      isCurrentUser: isCurrentUser ?? this.isCurrentUser,
      isReturned: isReturned ?? this.isReturned,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangePhoto extends PushMessageContent {
  /// A chat photo was edited
  const PushMessageContentChatChangePhoto();

  factory PushMessageContentChatChangePhoto.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentChatChangePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentChatChangePhoto copyWith() {
    return const PushMessageContentChatChangePhoto();
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangeTitle extends PushMessageContent {
  /// A chat title was edited
  const PushMessageContentChatChangeTitle({
    required this.title,
  });

  /// [title] New chat title
  final String title;

  factory PushMessageContentChatChangeTitle.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentChatChangeTitle(
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
  PushMessageContentChatChangeTitle copyWith({
    String? title,
  }) {
    return PushMessageContentChatChangeTitle(
      title: title ?? this.title,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatSetBackground extends PushMessageContent {
  /// A chat background was edited
  const PushMessageContentChatSetBackground({
    required this.isSame,
  });

  /// [isSame] True, if the set background is the same as the background of the current user
  final bool isSame;

  factory PushMessageContentChatSetBackground.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentChatSetBackground(
        isSame: json['is_same'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_same": isSame,
    };
  }

  @override
  PushMessageContentChatSetBackground copyWith({
    bool? isSame,
  }) {
    return PushMessageContentChatSetBackground(
      isSame: isSame ?? this.isSame,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentChatSetBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatSetTheme extends PushMessageContent {
  /// A chat theme was edited
  const PushMessageContentChatSetTheme({
    required this.themeName,
  });

  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one
  final String themeName;

  factory PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json) =>
      PushMessageContentChatSetTheme(
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
  PushMessageContentChatSetTheme copyWith({
    String? themeName,
  }) {
    return PushMessageContentChatSetTheme(
      themeName: themeName ?? this.themeName,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentChatSetTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatDeleteMember extends PushMessageContent {
  /// A chat member was deleted
  const PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });

  /// [memberName] Name of the deleted member
  final String memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// [isLeft] True, if the user has left the group themselves
  final bool isLeft;

  factory PushMessageContentChatDeleteMember.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentChatDeleteMember(
        memberName: json['member_name'] ?? '',
        isCurrentUser: json['is_current_user'] ?? false,
        isLeft: json['is_left'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_left": isLeft,
    };
  }

  @override
  PushMessageContentChatDeleteMember copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isLeft,
  }) {
    return PushMessageContentChatDeleteMember(
      memberName: memberName ?? this.memberName,
      isCurrentUser: isCurrentUser ?? this.isCurrentUser,
      isLeft: isLeft ?? this.isLeft,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatJoinByLink extends PushMessageContent {
  /// A new member joined the chat via an invite link
  const PushMessageContentChatJoinByLink();

  factory PushMessageContentChatJoinByLink.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentChatJoinByLink();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentChatJoinByLink copyWith() {
    return const PushMessageContentChatJoinByLink();
  }

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatJoinByRequest extends PushMessageContent {
  /// A new member was accepted to the chat by an administrator
  const PushMessageContentChatJoinByRequest();

  factory PushMessageContentChatJoinByRequest.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentChatJoinByRequest();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentChatJoinByRequest copyWith() {
    return const PushMessageContentChatJoinByRequest();
  }

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentRecurringPayment extends PushMessageContent {
  /// A new recurring payment was made by the current user
  const PushMessageContentRecurringPayment({
    required this.amount,
  });

  /// [amount] The paid amount
  final String amount;

  factory PushMessageContentRecurringPayment.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentRecurringPayment(
        amount: json['amount'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "amount": amount,
    };
  }

  @override
  PushMessageContentRecurringPayment copyWith({
    String? amount,
  }) {
    return PushMessageContentRecurringPayment(
      amount: amount ?? this.amount,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentRecurringPayment';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  /// A profile photo was suggested to the user
  const PushMessageContentSuggestProfilePhoto();

  factory PushMessageContentSuggestProfilePhoto.fromJson(
          Map<String, dynamic> json) =>
      const PushMessageContentSuggestProfilePhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PushMessageContentSuggestProfilePhoto copyWith() {
    return const PushMessageContentSuggestProfilePhoto();
  }

  static const CONSTRUCTOR = 'pushMessageContentSuggestProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentProximityAlertTriggered extends PushMessageContent {
  /// A user in the chat came within proximity alert range from the current user
  const PushMessageContentProximityAlertTriggered({
    required this.distance,
  });

  /// [distance] The distance to the user
  final int distance;

  factory PushMessageContentProximityAlertTriggered.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentProximityAlertTriggered(
        distance: json['distance'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "distance": distance,
    };
  }

  @override
  PushMessageContentProximityAlertTriggered copyWith({
    int? distance,
  }) {
    return PushMessageContentProximityAlertTriggered(
      distance: distance ?? this.distance,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentProximityAlertTriggered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMessageForwards extends PushMessageContent {
  /// A forwarded messages
  const PushMessageContentMessageForwards({
    required this.totalCount,
  });

  /// [totalCount] Number of forwarded messages
  final int totalCount;

  factory PushMessageContentMessageForwards.fromJson(
          Map<String, dynamic> json) =>
      PushMessageContentMessageForwards(
        totalCount: json['total_count'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
    };
  }

  @override
  PushMessageContentMessageForwards copyWith({
    int? totalCount,
  }) {
    return PushMessageContentMessageForwards(
      totalCount: totalCount ?? this.totalCount,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentMessageForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMediaAlbum extends PushMessageContent {
  /// A media album
  const PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });

  /// [totalCount] Number of messages in the album
  final int totalCount;

  /// [hasPhotos] True, if the album has at least one photo
  final bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video file
  final bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  final bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  final bool hasDocuments;

  factory PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) =>
      PushMessageContentMediaAlbum(
        totalCount: json['total_count'] ?? 0,
        hasPhotos: json['has_photos'] ?? false,
        hasVideos: json['has_videos'] ?? false,
        hasAudios: json['has_audios'] ?? false,
        hasDocuments: json['has_documents'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "has_photos": hasPhotos,
      "has_videos": hasVideos,
      "has_audios": hasAudios,
      "has_documents": hasDocuments,
    };
  }

  @override
  PushMessageContentMediaAlbum copyWith({
    int? totalCount,
    bool? hasPhotos,
    bool? hasVideos,
    bool? hasAudios,
    bool? hasDocuments,
  }) {
    return PushMessageContentMediaAlbum(
      totalCount: totalCount ?? this.totalCount,
      hasPhotos: hasPhotos ?? this.hasPhotos,
      hasVideos: hasVideos ?? this.hasVideos,
      hasAudios: hasAudios ?? this.hasAudios,
      hasDocuments: hasDocuments ?? this.hasDocuments,
    );
  }

  static const CONSTRUCTOR = 'pushMessageContentMediaAlbum';

  @override
  String getConstructor() => CONSTRUCTOR;
}
