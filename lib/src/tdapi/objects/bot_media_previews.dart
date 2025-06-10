part of '../tdapi.dart';

class BotMediaPreviews extends TdObject {

  /// Contains a list of media previews of a bot
  const BotMediaPreviews({
    required this.previews,
    this.extra,
    this.clientId,
  });
  
  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BotMediaPreviews.fromJson(Map<String, dynamic> json) => BotMediaPreviews(
    previews: List<BotMediaPreview>.from((json['previews'] ?? []).map((item) => BotMediaPreview.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "previews": previews.map((i) => i.toJson()).toList(),
    };
  }
  
  BotMediaPreviews copyWith({
    List<BotMediaPreview>? previews,
    dynamic extra,
    int? clientId,
  }) => BotMediaPreviews(
    previews: previews ?? this.previews,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'botMediaPreviews';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
