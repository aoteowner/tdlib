import '../tdapi.dart';

class GetLinkPreview extends TdFunction {

  /// Returns a link preview by the text of a message. Do not call this function too often. Returns a 404 error if the text has no link preview
  const GetLinkPreview({
    required this.text,
    this.linkPreviewOptions,
  });
  
  /// [text] Message text with formatting
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of the link preview; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
      "@extra": extra,
    };
  }
  
  GetLinkPreview copyWith({
    FormattedText? text,
    LinkPreviewOptions? linkPreviewOptions,
  }) => GetLinkPreview(
    text: text ?? this.text,
    linkPreviewOptions: linkPreviewOptions ?? this.linkPreviewOptions,
  );

  static const CONSTRUCTOR = 'getLinkPreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
