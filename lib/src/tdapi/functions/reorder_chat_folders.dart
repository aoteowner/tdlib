import '../tdapi.dart';

class ReorderChatFolders extends TdFunction {
  /// Changes the order of chat folders
  const ReorderChatFolders({
    required this.chatFolderIds,
    required this.mainChatListPosition,
  });

  /// [chatFolderIds] Identifiers of chat folders in the new correct order
  final List<int> chatFolderIds;

  /// [mainChatListPosition] Position of the main chat list among chat folders, 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_ids": chatFolderIds,
      "main_chat_list_position": mainChatListPosition,
      "@extra": extra,
    };
  }

  ReorderChatFolders copyWith({
    List<int>? chatFolderIds,
    int? mainChatListPosition,
  }) {
    return ReorderChatFolders(
      chatFolderIds: chatFolderIds ?? this.chatFolderIds,
      mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
    );
  }

  static const CONSTRUCTOR = 'reorderChatFolders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
