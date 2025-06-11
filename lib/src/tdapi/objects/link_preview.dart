import '../tdapi.dart';

class LinkPreview extends TdObject {

  /// Describes a link preview
  const LinkPreview({
    required this.url,
    required this.displayUrl,
    required this.siteName,
    required this.title,
    required this.description,
    required this.author,
    required this.type,
    required this.hasLargeMedia,
    required this.showLargeMedia,
    required this.showMediaAboveDescription,
    required this.skipConfirmation,
    required this.showAboveText,
    required this.instantViewVersion,
    this.extra,
    this.clientId,
  });
  
  /// [url] Original URL of the link
  final String url;

  /// [displayUrl] URL to display
  final String displayUrl;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// [title] Title of the content
  final String title;

  /// [description] Description of the content
  final FormattedText description;

  /// [author] Author of the content
  final String author;

  /// [type] Type of the link preview
  final LinkPreviewType type;

  /// [hasLargeMedia] True, if size of media in the preview can be changed
  final bool hasLargeMedia;

  /// [showLargeMedia] True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos
  final bool showLargeMedia;

  /// [showMediaAboveDescription] True, if media must be shown above link preview description; otherwise, the media must be shown below the description
  final bool showMediaAboveDescription;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear
  final bool skipConfirmation;

  /// [showAboveText] True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text
  final bool showAboveText;

  /// [instantViewVersion] Version of instant view (currently, can be 1 or 2) for the web page; 0 if none
  final int instantViewVersion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LinkPreview.fromJson(Map<String, dynamic> json) => LinkPreview(
    url: json['url'],
    displayUrl: json['display_url'],
    siteName: json['site_name'],
    title: json['title'],
    description: FormattedText.fromJson(json['description']),
    author: json['author'],
    type: LinkPreviewType.fromJson(json['type']),
    hasLargeMedia: json['has_large_media'],
    showLargeMedia: json['show_large_media'],
    showMediaAboveDescription: json['show_media_above_description'],
    skipConfirmation: json['skip_confirmation'],
    showAboveText: json['show_above_text'],
    instantViewVersion: json['instant_view_version'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "display_url": displayUrl,
      "site_name": siteName,
      "title": title,
      "description": description.toJson(),
      "author": author,
      "type": type.toJson(),
      "has_large_media": hasLargeMedia,
      "show_large_media": showLargeMedia,
      "show_media_above_description": showMediaAboveDescription,
      "skip_confirmation": skipConfirmation,
      "show_above_text": showAboveText,
      "instant_view_version": instantViewVersion,
    };
  }
  
  LinkPreview copyWith({
    String? url,
    String? displayUrl,
    String? siteName,
    String? title,
    FormattedText? description,
    String? author,
    LinkPreviewType? type,
    bool? hasLargeMedia,
    bool? showLargeMedia,
    bool? showMediaAboveDescription,
    bool? skipConfirmation,
    bool? showAboveText,
    int? instantViewVersion,
    dynamic extra,
    int? clientId,
  }) => LinkPreview(
    url: url ?? this.url,
    displayUrl: displayUrl ?? this.displayUrl,
    siteName: siteName ?? this.siteName,
    title: title ?? this.title,
    description: description ?? this.description,
    author: author ?? this.author,
    type: type ?? this.type,
    hasLargeMedia: hasLargeMedia ?? this.hasLargeMedia,
    showLargeMedia: showLargeMedia ?? this.showLargeMedia,
    showMediaAboveDescription: showMediaAboveDescription ?? this.showMediaAboveDescription,
    skipConfirmation: skipConfirmation ?? this.skipConfirmation,
    showAboveText: showAboveText ?? this.showAboveText,
    instantViewVersion: instantViewVersion ?? this.instantViewVersion,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'linkPreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
