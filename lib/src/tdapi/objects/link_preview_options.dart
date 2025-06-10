part of '../tdapi.dart';

class LinkPreviewOptions extends TdObject {

  /// Options to be used for generation of a link preview
  const LinkPreviewOptions({
    required this.isDisabled,
    required this.url,
    required this.forceSmallMedia,
    required this.forceLargeMedia,
    required this.showAboveText,
  });
  
  /// [isDisabled] True, if link preview must be disabled
  final bool isDisabled;

  /// [url] URL to use for link preview. If empty, then the first URL found in the message text will be used
  final String url;

  /// [forceSmallMedia] True, if shown media preview must be small; ignored in secret chats or if the URL isn't explicitly specified
  final bool forceSmallMedia;

  /// [forceLargeMedia] True, if shown media preview must be large; ignored in secret chats or if the URL isn't explicitly specified
  final bool forceLargeMedia;

  /// [showAboveText] True, if link preview must be shown above message text; otherwise, the link preview will be shown below the message text; ignored in secret chats
  final bool showAboveText;
  
  /// Parse from a json
  factory LinkPreviewOptions.fromJson(Map<String, dynamic> json) => LinkPreviewOptions(
    isDisabled: json['is_disabled'],
    url: json['url'],
    forceSmallMedia: json['force_small_media'],
    forceLargeMedia: json['force_large_media'],
    showAboveText: json['show_above_text'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_disabled": isDisabled,
      "url": url,
      "force_small_media": forceSmallMedia,
      "force_large_media": forceLargeMedia,
      "show_above_text": showAboveText,
    };
  }
  
  LinkPreviewOptions copyWith({
    bool? isDisabled,
    String? url,
    bool? forceSmallMedia,
    bool? forceLargeMedia,
    bool? showAboveText,
  }) => LinkPreviewOptions(
    isDisabled: isDisabled ?? this.isDisabled,
    url: url ?? this.url,
    forceSmallMedia: forceSmallMedia ?? this.forceSmallMedia,
    forceLargeMedia: forceLargeMedia ?? this.forceLargeMedia,
    showAboveText: showAboveText ?? this.showAboveText,
  );

  static const CONSTRUCTOR = 'linkPreviewOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
