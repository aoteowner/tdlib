import '../tdapi.dart';

class SponsoredChats extends TdObject {

  /// Contains a list of sponsored chats
  const SponsoredChats({
    required this.chats,
    this.extra,
    this.clientId,
  });
  
  /// [chats] List of sponsored chats
  final List<SponsoredChat> chats;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory SponsoredChats.fromJson(Map<String, dynamic> json) => SponsoredChats(
    chats: json['chats'] == null ? <SponsoredChat>[] :(json['chats'] as List).map((e) => SponsoredChat.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chats": chats.map((e) => e.toJson()).toList(),
    };
  }
  
  SponsoredChats copyWith({
    List<SponsoredChat>? chats,
    dynamic extra,
    int? clientId,
  }) => SponsoredChats(
    chats: chats ?? this.chats,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'sponsoredChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
