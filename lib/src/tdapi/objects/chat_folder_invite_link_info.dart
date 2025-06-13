import '../tdapi.dart';

class ChatFolderInviteLinkInfo extends TdObject {

  /// Contains information about an invite link to a chat folder
  const ChatFolderInviteLinkInfo({
    required this.chatFolderInfo,
    required this.missingChatIds,
    required this.addedChatIds,
    this.extra,
    this.clientId,
  });
  
  /// [chatFolderInfo] Basic information about the chat folder; chat folder identifier will be 0 if the user didn't have the chat folder yet
  final ChatFolderInfo chatFolderInfo;

  /// [missingChatIds] Identifiers of the chats from the link, which aren't added to the folder yet
  final List<int> missingChatIds;

  /// [addedChatIds] Identifiers of the chats from the link, which are added to the folder already
  final List<int> addedChatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFolderInviteLinkInfo.fromJson(Map<String, dynamic> json) => ChatFolderInviteLinkInfo(
    chatFolderInfo: ChatFolderInfo.fromJson(json['chat_folder_info'] ?? {}),
    missingChatIds: json['missing_chat_ids'] == null ? <int>[] :(json['missing_chat_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    addedChatIds: json['added_chat_ids'] == null ? <int>[] :(json['added_chat_ids'] as List).map((e) => (e  ?? 0) as int).toList(),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_info": chatFolderInfo.toJson(),
      "missing_chat_ids": missingChatIds,
      "added_chat_ids": addedChatIds,
    };
  }
  
  ChatFolderInviteLinkInfo copyWith({
    ChatFolderInfo? chatFolderInfo,
    List<int>? missingChatIds,
    List<int>? addedChatIds,
    dynamic extra,
    int? clientId,
  }) => ChatFolderInviteLinkInfo(
    chatFolderInfo: chatFolderInfo ?? this.chatFolderInfo,
    missingChatIds: missingChatIds ?? this.missingChatIds,
    addedChatIds: addedChatIds ?? this.addedChatIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatFolderInviteLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
