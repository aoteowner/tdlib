import '../tdapi.dart';

class PageBlock extends TdObject {
  /// Describes a block of an instant view for a web page
  const PageBlock();

  factory PageBlock.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PageBlockTitle.CONSTRUCTOR:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.CONSTRUCTOR:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.CONSTRUCTOR:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.CONSTRUCTOR:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.CONSTRUCTOR:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.CONSTRUCTOR:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.CONSTRUCTOR:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.CONSTRUCTOR:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.CONSTRUCTOR:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.CONSTRUCTOR:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.CONSTRUCTOR:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.CONSTRUCTOR:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.CONSTRUCTOR:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.CONSTRUCTOR:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.CONSTRUCTOR:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.CONSTRUCTOR:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.CONSTRUCTOR:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.CONSTRUCTOR:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.CONSTRUCTOR:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.CONSTRUCTOR:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.CONSTRUCTOR:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.CONSTRUCTOR:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.CONSTRUCTOR:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.CONSTRUCTOR:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.CONSTRUCTOR:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.CONSTRUCTOR:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.CONSTRUCTOR:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.CONSTRUCTOR:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.CONSTRUCTOR:
        return PageBlockMap.fromJson(json);
      default:
        return const PageBlock();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PageBlock copyWith() {
    return const PageBlock();
  }

  static const CONSTRUCTOR = 'pageBlock';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTitle extends PageBlock {
  /// The title of a page
  const PageBlockTitle({
    required this.title,
  });

  /// [title] Title
  final RichText title;

  factory PageBlockTitle.fromJson(Map<String, dynamic> json) => PageBlockTitle(
        title: RichText.fromJson(json['title'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title.toJson(),
    };
  }

  @override
  PageBlockTitle copyWith({
    RichText? title,
  }) {
    return PageBlockTitle(
      title: title ?? this.title,
    );
  }

  static const CONSTRUCTOR = 'pageBlockTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubtitle extends PageBlock {
  /// The subtitle of a page
  const PageBlockSubtitle({
    required this.subtitle,
  });

  /// [subtitle] Subtitle
  final RichText subtitle;

  factory PageBlockSubtitle.fromJson(Map<String, dynamic> json) =>
      PageBlockSubtitle(
        subtitle: RichText.fromJson(json['subtitle'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subtitle": subtitle.toJson(),
    };
  }

  @override
  PageBlockSubtitle copyWith({
    RichText? subtitle,
  }) {
    return PageBlockSubtitle(
      subtitle: subtitle ?? this.subtitle,
    );
  }

  static const CONSTRUCTOR = 'pageBlockSubtitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAuthorDate extends PageBlock {
  /// The author and publishing date of a page
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });

  /// [author] Author
  final RichText author;

  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;

  factory PageBlockAuthorDate.fromJson(Map<String, dynamic> json) =>
      PageBlockAuthorDate(
        author: RichText.fromJson(json['author'] ?? {}),
        publishDate: json['publish_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "author": author.toJson(),
      "publish_date": publishDate,
    };
  }

  @override
  PageBlockAuthorDate copyWith({
    RichText? author,
    int? publishDate,
  }) {
    return PageBlockAuthorDate(
      author: author ?? this.author,
      publishDate: publishDate ?? this.publishDate,
    );
  }

  static const CONSTRUCTOR = 'pageBlockAuthorDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockHeader extends PageBlock {
  /// A header
  const PageBlockHeader({
    required this.header,
  });

  /// [header] Header
  final RichText header;

  factory PageBlockHeader.fromJson(Map<String, dynamic> json) =>
      PageBlockHeader(
        header: RichText.fromJson(json['header'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
    };
  }

  @override
  PageBlockHeader copyWith({
    RichText? header,
  }) {
    return PageBlockHeader(
      header: header ?? this.header,
    );
  }

  static const CONSTRUCTOR = 'pageBlockHeader';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSubheader extends PageBlock {
  /// A subheader
  const PageBlockSubheader({
    required this.subheader,
  });

  /// [subheader] Subheader
  final RichText subheader;

  factory PageBlockSubheader.fromJson(Map<String, dynamic> json) =>
      PageBlockSubheader(
        subheader: RichText.fromJson(json['subheader'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "subheader": subheader.toJson(),
    };
  }

  @override
  PageBlockSubheader copyWith({
    RichText? subheader,
  }) {
    return PageBlockSubheader(
      subheader: subheader ?? this.subheader,
    );
  }

  static const CONSTRUCTOR = 'pageBlockSubheader';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockKicker extends PageBlock {
  /// A kicker
  const PageBlockKicker({
    required this.kicker,
  });

  /// [kicker] Kicker
  final RichText kicker;

  factory PageBlockKicker.fromJson(Map<String, dynamic> json) =>
      PageBlockKicker(
        kicker: RichText.fromJson(json['kicker'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "kicker": kicker.toJson(),
    };
  }

  @override
  PageBlockKicker copyWith({
    RichText? kicker,
  }) {
    return PageBlockKicker(
      kicker: kicker ?? this.kicker,
    );
  }

  static const CONSTRUCTOR = 'pageBlockKicker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockParagraph extends PageBlock {
  /// A text paragraph
  const PageBlockParagraph({
    required this.text,
  });

  /// [text] Paragraph text
  final RichText text;

  factory PageBlockParagraph.fromJson(Map<String, dynamic> json) =>
      PageBlockParagraph(
        text: RichText.fromJson(json['text'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
    };
  }

  @override
  PageBlockParagraph copyWith({
    RichText? text,
  }) {
    return PageBlockParagraph(
      text: text ?? this.text,
    );
  }

  static const CONSTRUCTOR = 'pageBlockParagraph';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPreformatted extends PageBlock {
  /// A preformatted text paragraph
  const PageBlockPreformatted({
    required this.text,
    required this.language,
  });

  /// [text] Paragraph text
  final RichText text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;

  factory PageBlockPreformatted.fromJson(Map<String, dynamic> json) =>
      PageBlockPreformatted(
        text: RichText.fromJson(json['text'] ?? {}),
        language: json['language'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "language": language,
    };
  }

  @override
  PageBlockPreformatted copyWith({
    RichText? text,
    String? language,
  }) {
    return PageBlockPreformatted(
      text: text ?? this.text,
      language: language ?? this.language,
    );
  }

  static const CONSTRUCTOR = 'pageBlockPreformatted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockFooter extends PageBlock {
  /// The footer of a page
  const PageBlockFooter({
    required this.footer,
  });

  /// [footer] Footer
  final RichText footer;

  factory PageBlockFooter.fromJson(Map<String, dynamic> json) =>
      PageBlockFooter(
        footer: RichText.fromJson(json['footer'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "footer": footer.toJson(),
    };
  }

  @override
  PageBlockFooter copyWith({
    RichText? footer,
  }) {
    return PageBlockFooter(
      footer: footer ?? this.footer,
    );
  }

  static const CONSTRUCTOR = 'pageBlockFooter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDivider extends PageBlock {
  /// An empty block separating a page
  const PageBlockDivider();

  factory PageBlockDivider.fromJson(Map<String, dynamic> json) =>
      const PageBlockDivider();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PageBlockDivider copyWith() {
    return const PageBlockDivider();
  }

  static const CONSTRUCTOR = 'pageBlockDivider';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnchor extends PageBlock {
  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
  const PageBlockAnchor({
    required this.name,
  });

  /// [name] Name of the anchor
  final String name;

  factory PageBlockAnchor.fromJson(Map<String, dynamic> json) =>
      PageBlockAnchor(
        name: json['name'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }

  @override
  PageBlockAnchor copyWith({
    String? name,
  }) {
    return PageBlockAnchor(
      name: name ?? this.name,
    );
  }

  static const CONSTRUCTOR = 'pageBlockAnchor';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockList extends PageBlock {
  /// A list of data blocks
  const PageBlockList({
    required this.items,
  });

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  factory PageBlockList.fromJson(Map<String, dynamic> json) => PageBlockList(
        items: json['items'] == null
            ? <PageBlockListItem>[]
            : (json['items'] as List)
                .map((e) => PageBlockListItem.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "items": items.map((e) => e.toJson()).toList(),
    };
  }

  @override
  PageBlockList copyWith({
    List<PageBlockListItem>? items,
  }) {
    return PageBlockList(
      items: items ?? this.items,
    );
  }

  static const CONSTRUCTOR = 'pageBlockList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockBlockQuote extends PageBlock {
  /// A block quote
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  factory PageBlockBlockQuote.fromJson(Map<String, dynamic> json) =>
      PageBlockBlockQuote(
        text: RichText.fromJson(json['text'] ?? {}),
        credit: RichText.fromJson(json['credit'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }

  @override
  PageBlockBlockQuote copyWith({
    RichText? text,
    RichText? credit,
  }) {
    return PageBlockBlockQuote(
      text: text ?? this.text,
      credit: credit ?? this.credit,
    );
  }

  static const CONSTRUCTOR = 'pageBlockBlockQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPullQuote extends PageBlock {
  /// A pull quote
  const PageBlockPullQuote({
    required this.text,
    required this.credit,
  });

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  factory PageBlockPullQuote.fromJson(Map<String, dynamic> json) =>
      PageBlockPullQuote(
        text: RichText.fromJson(json['text'] ?? {}),
        credit: RichText.fromJson(json['credit'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "credit": credit.toJson(),
    };
  }

  @override
  PageBlockPullQuote copyWith({
    RichText? text,
    RichText? credit,
  }) {
    return PageBlockPullQuote(
      text: text ?? this.text,
      credit: credit ?? this.credit,
    );
  }

  static const CONSTRUCTOR = 'pageBlockPullQuote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAnimation extends PageBlock {
  /// An animation
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  factory PageBlockAnimation.fromJson(Map<String, dynamic> json) =>
      PageBlockAnimation(
        animation: Animation.fromJson(json['animation'] ?? {}),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
        needAutoplay: json['need_autoplay'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
    };
  }

  @override
  PageBlockAnimation copyWith({
    Animation? animation,
    PageBlockCaption? caption,
    bool? needAutoplay,
  }) {
    return PageBlockAnimation(
      animation: animation ?? this.animation,
      caption: caption ?? this.caption,
      needAutoplay: needAutoplay ?? this.needAutoplay,
    );
  }

  static const CONSTRUCTOR = 'pageBlockAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockAudio extends PageBlock {
  /// An audio file
  const PageBlockAudio({
    this.audio,
    required this.caption,
  });

  /// [audio] Audio file; may be null
  final Audio? audio;

  /// [caption] Audio file caption
  final PageBlockCaption caption;

  factory PageBlockAudio.fromJson(Map<String, dynamic> json) => PageBlockAudio(
        audio: Audio.fromJson(json['audio'] ?? {}),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio?.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockAudio copyWith({
    Audio? audio,
    PageBlockCaption? caption,
  }) {
    return PageBlockAudio(
      audio: audio ?? this.audio,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockPhoto extends PageBlock {
  /// A photo
  const PageBlockPhoto({
    this.photo,
    required this.caption,
    required this.url,
  });

  /// [photo] Photo file; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final PageBlockCaption caption;

  /// [url] URL that needs to be opened when the photo is clicked
  final String url;

  factory PageBlockPhoto.fromJson(Map<String, dynamic> json) => PageBlockPhoto(
        photo: Photo.fromJson(json['photo'] ?? {}),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "caption": caption.toJson(),
      "url": url,
    };
  }

  @override
  PageBlockPhoto copyWith({
    Photo? photo,
    PageBlockCaption? caption,
    String? url,
  }) {
    return PageBlockPhoto(
      photo: photo ?? this.photo,
      caption: caption ?? this.caption,
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'pageBlockPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVideo extends PageBlock {
  /// A video
  const PageBlockVideo({
    this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });

  /// [video] Video file; may be null
  final Video? video;

  /// [caption] Video caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the video must be played automatically
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;

  factory PageBlockVideo.fromJson(Map<String, dynamic> json) => PageBlockVideo(
        video: Video.fromJson(json['video'] ?? {}),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
        needAutoplay: json['need_autoplay'] ?? false,
        isLooped: json['is_looped'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
      "is_looped": isLooped,
    };
  }

  @override
  PageBlockVideo copyWith({
    Video? video,
    PageBlockCaption? caption,
    bool? needAutoplay,
    bool? isLooped,
  }) {
    return PageBlockVideo(
      video: video ?? this.video,
      caption: caption ?? this.caption,
      needAutoplay: needAutoplay ?? this.needAutoplay,
      isLooped: isLooped ?? this.isLooped,
    );
  }

  static const CONSTRUCTOR = 'pageBlockVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockVoiceNote extends PageBlock {
  /// A voice note
  const PageBlockVoiceNote({
    this.voiceNote,
    required this.caption,
  });

  /// [voiceNote] Voice note; may be null
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption
  final PageBlockCaption caption;

  factory PageBlockVoiceNote.fromJson(Map<String, dynamic> json) =>
      PageBlockVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note'] ?? {}),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote?.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockVoiceNote copyWith({
    VoiceNote? voiceNote,
    PageBlockCaption? caption,
  }) {
    return PageBlockVoiceNote(
      voiceNote: voiceNote ?? this.voiceNote,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCover extends PageBlock {
  /// A page cover
  const PageBlockCover({
    required this.cover,
  });

  /// [cover] Cover
  final PageBlock cover;

  factory PageBlockCover.fromJson(Map<String, dynamic> json) => PageBlockCover(
        cover: PageBlock.fromJson(json['cover'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "cover": cover.toJson(),
    };
  }

  @override
  PageBlockCover copyWith({
    PageBlock? cover,
  }) {
    return PageBlockCover(
      cover: cover ?? this.cover,
    );
  }

  static const CONSTRUCTOR = 'pageBlockCover';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbedded extends PageBlock {
  /// An embedded web page
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });

  /// [url] URL of the embedded page, if available
  final String url;

  /// [html] HTML-markup of the embedded page
  final String html;

  /// [posterPhoto] Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// [width] Block width; 0 if unknown
  final int width;

  /// [height] Block height; 0 if unknown
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;

  /// [isFullWidth] True, if the block must be full width
  final bool isFullWidth;

  /// [allowScrolling] True, if scrolling needs to be allowed
  final bool allowScrolling;

  factory PageBlockEmbedded.fromJson(Map<String, dynamic> json) =>
      PageBlockEmbedded(
        url: json['url'] ?? '',
        html: json['html'] ?? '',
        posterPhoto: Photo.fromJson(json['poster_photo'] ?? {}),
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
        isFullWidth: json['is_full_width'] ?? false,
        allowScrolling: json['allow_scrolling'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "html": html,
      "poster_photo": posterPhoto?.toJson(),
      "width": width,
      "height": height,
      "caption": caption.toJson(),
      "is_full_width": isFullWidth,
      "allow_scrolling": allowScrolling,
    };
  }

  @override
  PageBlockEmbedded copyWith({
    String? url,
    String? html,
    Photo? posterPhoto,
    int? width,
    int? height,
    PageBlockCaption? caption,
    bool? isFullWidth,
    bool? allowScrolling,
  }) {
    return PageBlockEmbedded(
      url: url ?? this.url,
      html: html ?? this.html,
      posterPhoto: posterPhoto ?? this.posterPhoto,
      width: width ?? this.width,
      height: height ?? this.height,
      caption: caption ?? this.caption,
      isFullWidth: isFullWidth ?? this.isFullWidth,
      allowScrolling: allowScrolling ?? this.allowScrolling,
    );
  }

  static const CONSTRUCTOR = 'pageBlockEmbedded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockEmbeddedPost extends PageBlock {
  /// An embedded post
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });

  /// [url] URL of the embedded post
  final String url;

  /// [author] Post author
  final String author;

  /// [authorPhoto] Post author photo; may be null
  final Photo? authorPhoto;

  /// [date] Point in time (Unix timestamp) when the post was created; 0 if unknown
  final int date;

  /// [pageBlocks] Post content
  final List<PageBlock> pageBlocks;

  /// [caption] Post caption
  final PageBlockCaption caption;

  factory PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) =>
      PageBlockEmbeddedPost(
        url: json['url'] ?? '',
        author: json['author'] ?? '',
        authorPhoto: Photo.fromJson(json['author_photo'] ?? {}),
        date: json['date'] ?? 0,
        pageBlocks: json['page_blocks'] == null
            ? <PageBlock>[]
            : (json['page_blocks'] as List)
                .map((e) => PageBlock.fromJson(e ?? {}))
                .toList(),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "author": author,
      "author_photo": authorPhoto?.toJson(),
      "date": date,
      "page_blocks": pageBlocks.map((e) => e.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockEmbeddedPost copyWith({
    String? url,
    String? author,
    Photo? authorPhoto,
    int? date,
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) {
    return PageBlockEmbeddedPost(
      url: url ?? this.url,
      author: author ?? this.author,
      authorPhoto: authorPhoto ?? this.authorPhoto,
      date: date ?? this.date,
      pageBlocks: pageBlocks ?? this.pageBlocks,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockEmbeddedPost';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockCollage extends PageBlock {
  /// A collage
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });

  /// [pageBlocks] Collage item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  factory PageBlockCollage.fromJson(Map<String, dynamic> json) =>
      PageBlockCollage(
        pageBlocks: json['page_blocks'] == null
            ? <PageBlock>[]
            : (json['page_blocks'] as List)
                .map((e) => PageBlock.fromJson(e ?? {}))
                .toList(),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": pageBlocks.map((e) => e.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockCollage copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) {
    return PageBlockCollage(
      pageBlocks: pageBlocks ?? this.pageBlocks,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockCollage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockSlideshow extends PageBlock {
  /// A slideshow
  const PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });

  /// [pageBlocks] Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// [caption] Block caption
  final PageBlockCaption caption;

  factory PageBlockSlideshow.fromJson(Map<String, dynamic> json) =>
      PageBlockSlideshow(
        pageBlocks: json['page_blocks'] == null
            ? <PageBlock>[]
            : (json['page_blocks'] as List)
                .map((e) => PageBlock.fromJson(e ?? {}))
                .toList(),
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "page_blocks": pageBlocks.map((e) => e.toJson()).toList(),
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockSlideshow copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) {
    return PageBlockSlideshow(
      pageBlocks: pageBlocks ?? this.pageBlocks,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockSlideshow';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockChatLink extends PageBlock {
  /// A link to a chat
  const PageBlockChatLink({
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.username,
  });

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for chat title and background of chat photo
  final int accentColorId;

  /// [username] Chat username by which all other information about the chat can be resolved
  final String username;

  factory PageBlockChatLink.fromJson(Map<String, dynamic> json) =>
      PageBlockChatLink(
        title: json['title'] ?? '',
        photo: ChatPhotoInfo.fromJson(json['photo'] ?? {}),
        accentColorId: json['accent_color_id'] ?? 0,
        username: json['username'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "photo": photo?.toJson(),
      "accent_color_id": accentColorId,
      "username": username,
    };
  }

  @override
  PageBlockChatLink copyWith({
    String? title,
    ChatPhotoInfo? photo,
    int? accentColorId,
    String? username,
  }) {
    return PageBlockChatLink(
      title: title ?? this.title,
      photo: photo ?? this.photo,
      accentColorId: accentColorId ?? this.accentColorId,
      username: username ?? this.username,
    );
  }

  static const CONSTRUCTOR = 'pageBlockChatLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockTable extends PageBlock {
  /// A table
  const PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });

  /// [caption] Table caption
  final RichText caption;

  /// [cells] Table cells
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;

  factory PageBlockTable.fromJson(Map<String, dynamic> json) => PageBlockTable(
        caption: RichText.fromJson(json['caption'] ?? {}),
        cells: json['cells'] == null
            ? <List<PageBlockTableCell>>[]
            : (json['cells'] as List)
                .map((e) => e == null
                    ? <PageBlockTableCell>[]
                    : (e as List)
                        .map((e) => PageBlockTableCell.fromJson(e ?? {}))
                        .toList())
                .toList(),
        isBordered: json['is_bordered'] ?? false,
        isStriped: json['is_striped'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "caption": caption.toJson(),
      "cells": cells,
      "is_bordered": isBordered,
      "is_striped": isStriped,
    };
  }

  @override
  PageBlockTable copyWith({
    RichText? caption,
    List<List<PageBlockTableCell>>? cells,
    bool? isBordered,
    bool? isStriped,
  }) {
    return PageBlockTable(
      caption: caption ?? this.caption,
      cells: cells ?? this.cells,
      isBordered: isBordered ?? this.isBordered,
      isStriped: isStriped ?? this.isStriped,
    );
  }

  static const CONSTRUCTOR = 'pageBlockTable';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockDetails extends PageBlock {
  /// A collapsible block
  const PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });

  /// [header] Always visible heading for the block
  final RichText header;

  /// [pageBlocks] Block contents
  final List<PageBlock> pageBlocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  factory PageBlockDetails.fromJson(Map<String, dynamic> json) =>
      PageBlockDetails(
        header: RichText.fromJson(json['header'] ?? {}),
        pageBlocks: json['page_blocks'] == null
            ? <PageBlock>[]
            : (json['page_blocks'] as List)
                .map((e) => PageBlock.fromJson(e ?? {}))
                .toList(),
        isOpen: json['is_open'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
      "page_blocks": pageBlocks.map((e) => e.toJson()).toList(),
      "is_open": isOpen,
    };
  }

  @override
  PageBlockDetails copyWith({
    RichText? header,
    List<PageBlock>? pageBlocks,
    bool? isOpen,
  }) {
    return PageBlockDetails(
      header: header ?? this.header,
      pageBlocks: pageBlocks ?? this.pageBlocks,
      isOpen: isOpen ?? this.isOpen,
    );
  }

  static const CONSTRUCTOR = 'pageBlockDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockRelatedArticles extends PageBlock {
  /// Related articles
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });

  /// [header] Block header
  final RichText header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;

  factory PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) =>
      PageBlockRelatedArticles(
        header: RichText.fromJson(json['header'] ?? {}),
        articles: json['articles'] == null
            ? <PageBlockRelatedArticle>[]
            : (json['articles'] as List)
                .map((e) => PageBlockRelatedArticle.fromJson(e ?? {}))
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "header": header.toJson(),
      "articles": articles.map((e) => e.toJson()).toList(),
    };
  }

  @override
  PageBlockRelatedArticles copyWith({
    RichText? header,
    List<PageBlockRelatedArticle>? articles,
  }) {
    return PageBlockRelatedArticles(
      header: header ?? this.header,
      articles: articles ?? this.articles,
    );
  }

  static const CONSTRUCTOR = 'pageBlockRelatedArticles';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PageBlockMap extends PageBlock {
  /// A map
  const PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });

  /// [location] Location of the map center
  final Location location;

  /// [zoom] Map zoom level
  final int zoom;

  /// [width] Map width
  final int width;

  /// [height] Map height
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;

  factory PageBlockMap.fromJson(Map<String, dynamic> json) => PageBlockMap(
        location: Location.fromJson(json['location'] ?? {}),
        zoom: json['zoom'] ?? 0,
        width: json['width'] ?? 0,
        height: json['height'] ?? 0,
        caption: PageBlockCaption.fromJson(json['caption'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "caption": caption.toJson(),
    };
  }

  @override
  PageBlockMap copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    PageBlockCaption? caption,
  }) {
    return PageBlockMap(
      location: location ?? this.location,
      zoom: zoom ?? this.zoom,
      width: width ?? this.width,
      height: height ?? this.height,
      caption: caption ?? this.caption,
    );
  }

  static const CONSTRUCTOR = 'pageBlockMap';

  @override
  String getConstructor() => CONSTRUCTOR;
}
