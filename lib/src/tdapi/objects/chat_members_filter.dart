import '../tdapi.dart';

class ChatMembersFilter extends TdObject {
  /// Specifies the kind of chat members to return in searchChatMembers
  const ChatMembersFilter();

  factory ChatMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.CONSTRUCTOR:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return ChatMembersFilterBots.fromJson(json);
      default:
        return const ChatMembersFilter();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatMembersFilter copyWith() {
    return const ChatMembersFilter();
  }

  static const CONSTRUCTOR = 'chatMembersFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterContacts extends ChatMembersFilter {
  /// Returns contacts of the user
  const ChatMembersFilterContacts();

  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterContacts();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterContacts copyWith() {
    return const ChatMembersFilterContacts();
  }

  static const CONSTRUCTOR = 'chatMembersFilterContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterAdministrators extends ChatMembersFilter {
  /// Returns the owner and administrators
  const ChatMembersFilterAdministrators();

  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterAdministrators();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterAdministrators copyWith() {
    return const ChatMembersFilterAdministrators();
  }

  static const CONSTRUCTOR = 'chatMembersFilterAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterMembers extends ChatMembersFilter {
  /// Returns all chat members, including restricted chat members
  const ChatMembersFilterMembers();

  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterMembers();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterMembers copyWith() {
    return const ChatMembersFilterMembers();
  }

  static const CONSTRUCTOR = 'chatMembersFilterMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterMention extends ChatMembersFilter {
  /// Returns users which can be mentioned in the chat
  const ChatMembersFilterMention({
    required this.messageThreadId,
  });

  /// [messageThreadId] If non-zero, the identifier of the current message thread
  final int messageThreadId;

  factory ChatMembersFilterMention.fromJson(Map<String, dynamic> json) =>
      ChatMembersFilterMention(
        messageThreadId: json['message_thread_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_thread_id": messageThreadId,
    };
  }

  @override
  ChatMembersFilterMention copyWith({
    int? messageThreadId,
  }) {
    return ChatMembersFilterMention(
      messageThreadId: messageThreadId ?? this.messageThreadId,
    );
  }

  static const CONSTRUCTOR = 'chatMembersFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterRestricted extends ChatMembersFilter {
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
  const ChatMembersFilterRestricted();

  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterRestricted();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterRestricted copyWith() {
    return const ChatMembersFilterRestricted();
  }

  static const CONSTRUCTOR = 'chatMembersFilterRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBanned extends ChatMembersFilter {
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
  const ChatMembersFilterBanned();

  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterBanned();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterBanned copyWith() {
    return const ChatMembersFilterBanned();
  }

  static const CONSTRUCTOR = 'chatMembersFilterBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBots extends ChatMembersFilter {
  /// Returns bot members of the chat
  const ChatMembersFilterBots();

  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) =>
      const ChatMembersFilterBots();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatMembersFilterBots copyWith() {
    return const ChatMembersFilterBots();
  }

  static const CONSTRUCTOR = 'chatMembersFilterBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
