import '../tdapi.dart';

class AddChatMembers extends TdFunction {
  /// Adds multiple new members to a chat; requires can_invite_users member right. Currently, this method is only available for supergroups and channels.. This method can't be used to join a chat. Members can't be added to a channel if it has more than 200 members. Returns information about members that weren't added
  const AddChatMembers({
    required this.chatId,
    required this.userIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userIds] Identifiers of the users to be added to the chat. The maximum number of added users is 20 for supergroups and 100 for channels
  final List<int> userIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "user_ids": userIds,
      "@extra": extra,
    };
  }

  AddChatMembers copyWith({
    int? chatId,
    List<int>? userIds,
  }) {
    return AddChatMembers(
      chatId: chatId ?? this.chatId,
      userIds: userIds ?? this.userIds,
    );
  }

  static const CONSTRUCTOR = 'addChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
