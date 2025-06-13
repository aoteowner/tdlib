import '../tdapi.dart';

class RecommendedChatFolders extends TdObject {

  /// Contains a list of recommended chat folders
  const RecommendedChatFolders({
    required this.chatFolders,
    this.extra,
    this.clientId,
  });
  
  /// [chatFolders] List of recommended chat folders
  final List<RecommendedChatFolder> chatFolders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory RecommendedChatFolders.fromJson(Map<String, dynamic> json) => RecommendedChatFolders(
    chatFolders: json['chat_folders'] == null ? <RecommendedChatFolder>[] :(json['chat_folders'] as List).map((e) => RecommendedChatFolder.fromJson(e ?? {})).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folders": chatFolders.map((e) => e.toJson()).toList(),
    };
  }
  
  RecommendedChatFolders copyWith({
    List<RecommendedChatFolder>? chatFolders,
    dynamic extra,
    int? clientId,
  }) => RecommendedChatFolders(
    chatFolders: chatFolders ?? this.chatFolders,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'recommendedChatFolders';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
