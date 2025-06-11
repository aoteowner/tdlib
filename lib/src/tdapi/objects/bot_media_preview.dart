import '../tdapi.dart';

class BotMediaPreview extends TdObject {

  /// Describes media previews of a bot
  const BotMediaPreview({
    required this.date,
    required this.content,
    this.extra,
    this.clientId,
  });
  
  /// [date] Point in time (Unix timestamp) when the preview was added or changed last time
  final int date;

  /// [content] Content of the preview
  final StoryContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BotMediaPreview.fromJson(Map<String, dynamic> json) => BotMediaPreview(
    date: json['date'],
    content: StoryContent.fromJson(json['content']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "date": date,
      "content": content.toJson(),
    };
  }
  
  BotMediaPreview copyWith({
    int? date,
    StoryContent? content,
    dynamic extra,
    int? clientId,
  }) => BotMediaPreview(
    date: date ?? this.date,
    content: content ?? this.content,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'botMediaPreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
