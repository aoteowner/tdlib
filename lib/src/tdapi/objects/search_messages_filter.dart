import '../tdapi.dart';

class SearchMessagesFilter extends TdObject {
  /// Represents a filter for message search results
  const SearchMessagesFilter();

  factory SearchMessagesFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SearchMessagesFilterEmpty.CONSTRUCTOR:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.CONSTRUCTOR:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.CONSTRUCTOR:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.CONSTRUCTOR:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.CONSTRUCTOR:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.CONSTRUCTOR:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.CONSTRUCTOR:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.CONSTRUCTOR:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.CONSTRUCTOR:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.CONSTRUCTOR:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.CONSTRUCTOR:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.CONSTRUCTOR:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterUnreadReaction.CONSTRUCTOR:
        return SearchMessagesFilterUnreadReaction.fromJson(json);
      case SearchMessagesFilterFailedToSend.CONSTRUCTOR:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.CONSTRUCTOR:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        return const SearchMessagesFilter();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SearchMessagesFilter copyWith() {
    return const SearchMessagesFilter();
  }

  static const CONSTRUCTOR = 'searchMessagesFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  /// Returns all found messages, no filter is applied
  const SearchMessagesFilterEmpty();

  factory SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterEmpty();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterEmpty copyWith() {
    return const SearchMessagesFilterEmpty();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  /// Returns only animation messages
  const SearchMessagesFilterAnimation();

  factory SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterAnimation();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterAnimation copyWith() {
    return const SearchMessagesFilterAnimation();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterAudio extends SearchMessagesFilter {
  /// Returns only audio messages
  const SearchMessagesFilterAudio();

  factory SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterAudio();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterAudio copyWith() {
    return const SearchMessagesFilterAudio();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterDocument extends SearchMessagesFilter {
  /// Returns only document messages
  const SearchMessagesFilterDocument();

  factory SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterDocument();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterDocument copyWith() {
    return const SearchMessagesFilterDocument();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  /// Returns only photo messages
  const SearchMessagesFilterPhoto();

  factory SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterPhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterPhoto copyWith() {
    return const SearchMessagesFilterPhoto();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVideo extends SearchMessagesFilter {
  /// Returns only video messages
  const SearchMessagesFilterVideo();

  factory SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterVideo copyWith() {
    return const SearchMessagesFilterVideo();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  /// Returns only voice note messages
  const SearchMessagesFilterVoiceNote();

  factory SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterVoiceNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterVoiceNote copyWith() {
    return const SearchMessagesFilterVoiceNote();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  /// Returns only photo and video messages
  const SearchMessagesFilterPhotoAndVideo();

  factory SearchMessagesFilterPhotoAndVideo.fromJson(
          Map<String, dynamic> json) =>
      const SearchMessagesFilterPhotoAndVideo();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterPhotoAndVideo copyWith() {
    return const SearchMessagesFilterPhotoAndVideo();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPhotoAndVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterUrl extends SearchMessagesFilter {
  /// Returns only messages containing URLs
  const SearchMessagesFilterUrl();

  factory SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterUrl();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterUrl copyWith() {
    return const SearchMessagesFilterUrl();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  /// Returns only messages containing chat photos
  const SearchMessagesFilterChatPhoto();

  factory SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterChatPhoto();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterChatPhoto copyWith() {
    return const SearchMessagesFilterChatPhoto();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  /// Returns only video note messages
  const SearchMessagesFilterVideoNote();

  factory SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterVideoNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterVideoNote copyWith() {
    return const SearchMessagesFilterVideoNote();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  /// Returns only voice and video note messages
  const SearchMessagesFilterVoiceAndVideoNote();

  factory SearchMessagesFilterVoiceAndVideoNote.fromJson(
          Map<String, dynamic> json) =>
      const SearchMessagesFilterVoiceAndVideoNote();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterVoiceAndVideoNote copyWith() {
    return const SearchMessagesFilterVoiceAndVideoNote();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterVoiceAndVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterMention extends SearchMessagesFilter {
  /// Returns only messages with mentions of the current user, or messages that are replies to their messages
  const SearchMessagesFilterMention();

  factory SearchMessagesFilterMention.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterMention();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterMention copyWith() {
    return const SearchMessagesFilterMention();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
  const SearchMessagesFilterUnreadMention();

  factory SearchMessagesFilterUnreadMention.fromJson(
          Map<String, dynamic> json) =>
      const SearchMessagesFilterUnreadMention();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterUnreadMention copyWith() {
    return const SearchMessagesFilterUnreadMention();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterUnreadMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
  const SearchMessagesFilterUnreadReaction();

  factory SearchMessagesFilterUnreadReaction.fromJson(
          Map<String, dynamic> json) =>
      const SearchMessagesFilterUnreadReaction();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterUnreadReaction copyWith() {
    return const SearchMessagesFilterUnreadReaction();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterUnreadReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  /// Returns only failed to send messages. This filter can be used only if the message database is used
  const SearchMessagesFilterFailedToSend();

  factory SearchMessagesFilterFailedToSend.fromJson(
          Map<String, dynamic> json) =>
      const SearchMessagesFilterFailedToSend();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterFailedToSend copyWith() {
    return const SearchMessagesFilterFailedToSend();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterFailedToSend';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SearchMessagesFilterPinned extends SearchMessagesFilter {
  /// Returns only pinned messages
  const SearchMessagesFilterPinned();

  factory SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json) =>
      const SearchMessagesFilterPinned();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SearchMessagesFilterPinned copyWith() {
    return const SearchMessagesFilterPinned();
  }

  static const CONSTRUCTOR = 'searchMessagesFilterPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
