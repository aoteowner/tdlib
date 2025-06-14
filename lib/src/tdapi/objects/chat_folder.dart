import '../tdapi.dart';

class ChatFolder extends TdObject {
  /// Represents a folder for user chats
  const ChatFolder({
    required this.name,
    this.icon,
    required this.colorId,
    required this.isShareable,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
    this.extra,
    this.clientId,
  });

  /// [name] The name of the folder
  final ChatFolderName name;

  /// [icon] The chosen icon for the chat folder; may be null. If null, use getChatFolderDefaultIconName to get default icon name for the folder
  final ChatFolderIcon? icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon; from -1 to 6. If -1, then color is disabled. Can't be changed if folder tags are disabled or the current user doesn't have Telegram Premium subscription
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") always excluded non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium
  final List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  final bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  final bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  final bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  final bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  final bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  final bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  final bool includeChannels;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatFolder.fromJson(Map<String, dynamic> json) => ChatFolder(
        name: ChatFolderName.fromJson(json['name'] ?? {}),
        icon: ChatFolderIcon.fromJson(json['icon'] ?? {}),
        colorId: json['color_id'] ?? 0,
        isShareable: json['is_shareable'] ?? false,
        pinnedChatIds: json['pinned_chat_ids'] == null
            ? <int>[]
            : (json['pinned_chat_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        includedChatIds: json['included_chat_ids'] == null
            ? <int>[]
            : (json['included_chat_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        excludedChatIds: json['excluded_chat_ids'] == null
            ? <int>[]
            : (json['excluded_chat_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        excludeMuted: json['exclude_muted'] ?? false,
        excludeRead: json['exclude_read'] ?? false,
        excludeArchived: json['exclude_archived'] ?? false,
        includeContacts: json['include_contacts'] ?? false,
        includeNonContacts: json['include_non_contacts'] ?? false,
        includeBots: json['include_bots'] ?? false,
        includeGroups: json['include_groups'] ?? false,
        includeChannels: json['include_channels'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name.toJson(),
      "icon": icon?.toJson(),
      "color_id": colorId,
      "is_shareable": isShareable,
      "pinned_chat_ids": pinnedChatIds,
      "included_chat_ids": includedChatIds,
      "excluded_chat_ids": excludedChatIds,
      "exclude_muted": excludeMuted,
      "exclude_read": excludeRead,
      "exclude_archived": excludeArchived,
      "include_contacts": includeContacts,
      "include_non_contacts": includeNonContacts,
      "include_bots": includeBots,
      "include_groups": includeGroups,
      "include_channels": includeChannels,
    };
  }

  ChatFolder copyWith({
    ChatFolderName? name,
    ChatFolderIcon? icon,
    int? colorId,
    bool? isShareable,
    List<int>? pinnedChatIds,
    List<int>? includedChatIds,
    List<int>? excludedChatIds,
    bool? excludeMuted,
    bool? excludeRead,
    bool? excludeArchived,
    bool? includeContacts,
    bool? includeNonContacts,
    bool? includeBots,
    bool? includeGroups,
    bool? includeChannels,
    dynamic extra,
    int? clientId,
  }) {
    return ChatFolder(
      name: name ?? this.name,
      icon: icon ?? this.icon,
      colorId: colorId ?? this.colorId,
      isShareable: isShareable ?? this.isShareable,
      pinnedChatIds: pinnedChatIds ?? this.pinnedChatIds,
      includedChatIds: includedChatIds ?? this.includedChatIds,
      excludedChatIds: excludedChatIds ?? this.excludedChatIds,
      excludeMuted: excludeMuted ?? this.excludeMuted,
      excludeRead: excludeRead ?? this.excludeRead,
      excludeArchived: excludeArchived ?? this.excludeArchived,
      includeContacts: includeContacts ?? this.includeContacts,
      includeNonContacts: includeNonContacts ?? this.includeNonContacts,
      includeBots: includeBots ?? this.includeBots,
      includeGroups: includeGroups ?? this.includeGroups,
      includeChannels: includeChannels ?? this.includeChannels,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
