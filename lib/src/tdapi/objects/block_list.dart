part of '../tdapi.dart';

class BlockList extends TdObject {

  /// Describes type of block list
  const BlockList();
  
  /// a BlockList return type can be :
  /// * [BlockListMain]
  /// * [BlockListStories]
  factory BlockList.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }
  
  BlockList copyWith() => const BlockList();

  static const CONSTRUCTOR = 'blockList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BlockListMain extends BlockList {

  /// The main block list that disallows writing messages to the current user, receiving their status and photo, viewing of stories, and some other actions
  const BlockListMain();
  
  /// Parse from a json
  factory BlockListMain.fromJson(Map<String, dynamic> json) => const BlockListMain();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BlockListMain copyWith() => const BlockListMain();

  static const CONSTRUCTOR = 'blockListMain';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BlockListStories extends BlockList {

  /// The block list that disallows viewing of stories of the current user
  const BlockListStories();
  
  /// Parse from a json
  factory BlockListStories.fromJson(Map<String, dynamic> json) => const BlockListStories();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  BlockListStories copyWith() => const BlockListStories();

  static const CONSTRUCTOR = 'blockListStories';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
