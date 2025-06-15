import '../tdapi.dart';

class StoryList extends TdObject {
  /// Describes a list of stories
  const StoryList();

  factory StoryList.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryListMain.CONSTRUCTOR:
        return StoryListMain.fromJson(json);
      case StoryListArchive.CONSTRUCTOR:
        return StoryListArchive.fromJson(json);
      default:
        return const StoryList();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryList copyWith() {
    return const StoryList();
  }

  static const CONSTRUCTOR = 'storyList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryListMain extends StoryList {
  /// The list of stories, shown in the main chat list and folder chat lists
  const StoryListMain();

  factory StoryListMain.fromJson(Map<String, dynamic> json) =>
      const StoryListMain();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryListMain copyWith() {
    return const StoryListMain();
  }

  static const CONSTRUCTOR = 'storyListMain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryListArchive extends StoryList {
  /// The list of stories, shown in the Arvhive chat list
  const StoryListArchive();

  factory StoryListArchive.fromJson(Map<String, dynamic> json) =>
      const StoryListArchive();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryListArchive copyWith() {
    return const StoryListArchive();
  }

  static const CONSTRUCTOR = 'storyListArchive';

  @override
  String getConstructor() => CONSTRUCTOR;
}
