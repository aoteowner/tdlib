import '../tdapi.dart';

class BusinessChatLink extends TdObject {
  /// Contains information about a business chat link
  const BusinessChatLink({
    required this.link,
    required this.text,
    required this.title,
    required this.viewCount,
    this.extra,
    this.clientId,
  });

  /// [link] The HTTPS link
  final String link;

  /// [text] Message draft text that will be added to the input field
  final FormattedText text;

  /// [title] Link title
  final String title;

  /// [viewCount] Number of times the link was used
  final int viewCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory BusinessChatLink.fromJson(Map<String, dynamic> json) =>
      BusinessChatLink(
        link: json['link'] ?? '',
        text: FormattedText.fromJson(json['text'] ?? {}),
        title: json['title'] ?? '',
        viewCount: json['view_count'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "text": text.toJson(),
      "title": title,
      "view_count": viewCount,
    };
  }

  BusinessChatLink copyWith({
    String? link,
    FormattedText? text,
    String? title,
    int? viewCount,
    dynamic extra,
    int? clientId,
  }) {
    return BusinessChatLink(
      link: link ?? this.link,
      text: text ?? this.text,
      title: title ?? this.title,
      viewCount: viewCount ?? this.viewCount,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'businessChatLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
