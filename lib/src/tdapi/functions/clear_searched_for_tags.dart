part of '../tdapi.dart';

class ClearSearchedForTags extends TdFunction {

  /// Clears the list of recently searched for hashtags or cashtags
  const ClearSearchedForTags({
    required this.clearCashtags,
  });
  
  /// [clearCashtags] Pass true to clear the list of recently searched for cashtags; otherwise, the list of recently searched for hashtags will be cleared
  final bool clearCashtags;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "clear_cashtags": clearCashtags,
      "@extra": extra,
    };
  }
  
  ClearSearchedForTags copyWith({
    bool? clearCashtags,
  }) => ClearSearchedForTags(
    clearCashtags: clearCashtags ?? this.clearCashtags,
  );

  static const CONSTRUCTOR = 'clearSearchedForTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
