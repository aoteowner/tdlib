import '../tdapi.dart';

class BusinessChatLinks extends TdObject {

  /// Contains a list of business chat links created by the user
  const BusinessChatLinks({
    required this.links,
    this.extra,
    this.clientId,
  });
  
  /// [links] List of links
  final List<BusinessChatLink> links;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BusinessChatLinks.fromJson(Map<String, dynamic> json) => BusinessChatLinks(
    links: json['links'] == null ? [] :(json['links'] as List).map((e) => BusinessChatLink.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "links": links.map((e) => e.toJson()).toList(),
    };
  }
  
  BusinessChatLinks copyWith({
    List<BusinessChatLink>? links,
    dynamic extra,
    int? clientId,
  }) => BusinessChatLinks(
    links: links ?? this.links,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'businessChatLinks';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
