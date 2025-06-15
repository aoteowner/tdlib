import '../tdapi.dart';

class BlockList extends TdObject {
  /// Describes type of block list
  const BlockList();

  factory BlockList.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BlockListMain.CONSTRUCTOR:
        return BlockListMain.fromJson(json);
      case BlockListStories.CONSTRUCTOR:
        return BlockListStories.fromJson(json);
      default:
        return const BlockList();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  BlockList copyWith() {
    return const BlockList();
  }

  static const CONSTRUCTOR = 'blockList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BlockListMain extends BlockList {
  /// The main block list that disallows writing messages to the current user, receiving their status and photo, viewing of stories, and some other actions
  const BlockListMain();

  factory BlockListMain.fromJson(Map<String, dynamic> json) =>
      const BlockListMain();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BlockListMain copyWith() {
    return const BlockListMain();
  }

  static const CONSTRUCTOR = 'blockListMain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BlockListStories extends BlockList {
  /// The block list that disallows viewing of stories of the current user
  const BlockListStories();

  factory BlockListStories.fromJson(Map<String, dynamic> json) =>
      const BlockListStories();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BlockListStories copyWith() {
    return const BlockListStories();
  }

  static const CONSTRUCTOR = 'blockListStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
