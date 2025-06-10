part of '../tdapi.dart';

class SearchMessagesChatTypeFilter extends TdObject {

  /// Represents a filter for type of the chats in which to search messages
  const SearchMessagesChatTypeFilter();
  
  /// a SearchMessagesChatTypeFilter return type can be :
  /// * [SearchMessagesChatTypeFilterPrivate]
  /// * [SearchMessagesChatTypeFilterGroup]
  /// * [SearchMessagesChatTypeFilterChannel]
  factory SearchMessagesChatTypeFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SearchMessagesChatTypeFilterPrivate.CONSTRUCTOR:
        return SearchMessagesChatTypeFilterPrivate.fromJson(json);
      case SearchMessagesChatTypeFilterGroup.CONSTRUCTOR:
        return SearchMessagesChatTypeFilterGroup.fromJson(json);
      case SearchMessagesChatTypeFilterChannel.CONSTRUCTOR:
        return SearchMessagesChatTypeFilterChannel.fromJson(json);
      default:
        return const SearchMessagesChatTypeFilter();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SearchMessagesChatTypeFilter copyWith() => const SearchMessagesChatTypeFilter();

  static const CONSTRUCTOR = 'searchMessagesChatTypeFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SearchMessagesChatTypeFilterPrivate extends SearchMessagesChatTypeFilter {

  /// Returns only messages in private chats
  const SearchMessagesChatTypeFilterPrivate();
  
  /// Parse from a json
  factory SearchMessagesChatTypeFilterPrivate.fromJson(Map<String, dynamic> json) => const SearchMessagesChatTypeFilterPrivate();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SearchMessagesChatTypeFilterPrivate copyWith() => const SearchMessagesChatTypeFilterPrivate();

  static const CONSTRUCTOR = 'searchMessagesChatTypeFilterPrivate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SearchMessagesChatTypeFilterGroup extends SearchMessagesChatTypeFilter {

  /// Returns only messages in basic group and supergroup chats
  const SearchMessagesChatTypeFilterGroup();
  
  /// Parse from a json
  factory SearchMessagesChatTypeFilterGroup.fromJson(Map<String, dynamic> json) => const SearchMessagesChatTypeFilterGroup();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SearchMessagesChatTypeFilterGroup copyWith() => const SearchMessagesChatTypeFilterGroup();

  static const CONSTRUCTOR = 'searchMessagesChatTypeFilterGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SearchMessagesChatTypeFilterChannel extends SearchMessagesChatTypeFilter {

  /// Returns only messages in channel chats
  const SearchMessagesChatTypeFilterChannel();
  
  /// Parse from a json
  factory SearchMessagesChatTypeFilterChannel.fromJson(Map<String, dynamic> json) => const SearchMessagesChatTypeFilterChannel();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SearchMessagesChatTypeFilterChannel copyWith() => const SearchMessagesChatTypeFilterChannel();

  static const CONSTRUCTOR = 'searchMessagesChatTypeFilterChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
