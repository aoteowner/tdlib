import '../tdapi.dart';

class RemoveSearchedForTag extends TdFunction {

  /// Removes a hashtag or a cashtag from the list of recently searched for hashtags or cashtags
  const RemoveSearchedForTag({
    required this.tag,
  });
  
  /// [tag] Hashtag or cashtag to delete
  final String tag;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag,
      "@extra": extra,
    };
  }
  
  RemoveSearchedForTag copyWith({
    String? tag,
  }) => RemoveSearchedForTag(
    tag: tag ?? this.tag,
  );

  static const CONSTRUCTOR = 'removeSearchedForTag';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
