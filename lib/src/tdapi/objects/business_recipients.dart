import '../tdapi.dart';

class BusinessRecipients extends TdObject {
  /// Describes private chats chosen for automatic interaction with a business
  const BusinessRecipients({
    required this.chatIds,
    required this.excludedChatIds,
    required this.selectExistingChats,
    required this.selectNewChats,
    required this.selectContacts,
    required this.selectNonContacts,
    required this.excludeSelected,
  });

  /// [chatIds] Identifiers of selected private chats
  final List<int> chatIds;

  /// [excludedChatIds] Identifiers of private chats that are always excluded; for businessConnectedBot only
  final List<int> excludedChatIds;

  /// [selectExistingChats] True, if all existing private chats are selected
  final bool selectExistingChats;

  /// [selectNewChats] True, if all new private chats are selected
  final bool selectNewChats;

  /// [selectContacts] True, if all private chats with contacts are selected
  final bool selectContacts;

  /// [selectNonContacts] True, if all private chats with non-contacts are selected
  final bool selectNonContacts;

  /// [excludeSelected] If true, then all private chats except the selected are chosen. Otherwise, only the selected chats are chosen
  final bool excludeSelected;

  factory BusinessRecipients.fromJson(Map<String, dynamic> json) =>
      BusinessRecipients(
        chatIds: json['chat_ids'] == null
            ? <int>[]
            : (json['chat_ids'] as List).map((e) => (e ?? 0) as int).toList(),
        excludedChatIds: json['excluded_chat_ids'] == null
            ? <int>[]
            : (json['excluded_chat_ids'] as List)
                .map((e) => (e ?? 0) as int)
                .toList(),
        selectExistingChats: json['select_existing_chats'] ?? false,
        selectNewChats: json['select_new_chats'] ?? false,
        selectContacts: json['select_contacts'] ?? false,
        selectNonContacts: json['select_non_contacts'] ?? false,
        excludeSelected: json['exclude_selected'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": chatIds,
      "excluded_chat_ids": excludedChatIds,
      "select_existing_chats": selectExistingChats,
      "select_new_chats": selectNewChats,
      "select_contacts": selectContacts,
      "select_non_contacts": selectNonContacts,
      "exclude_selected": excludeSelected,
    };
  }

  BusinessRecipients copyWith({
    List<int>? chatIds,
    List<int>? excludedChatIds,
    bool? selectExistingChats,
    bool? selectNewChats,
    bool? selectContacts,
    bool? selectNonContacts,
    bool? excludeSelected,
  }) {
    return BusinessRecipients(
      chatIds: chatIds ?? this.chatIds,
      excludedChatIds: excludedChatIds ?? this.excludedChatIds,
      selectExistingChats: selectExistingChats ?? this.selectExistingChats,
      selectNewChats: selectNewChats ?? this.selectNewChats,
      selectContacts: selectContacts ?? this.selectContacts,
      selectNonContacts: selectNonContacts ?? this.selectNonContacts,
      excludeSelected: excludeSelected ?? this.excludeSelected,
    );
  }

  static const CONSTRUCTOR = 'businessRecipients';

  @override
  String getConstructor() => CONSTRUCTOR;
}
