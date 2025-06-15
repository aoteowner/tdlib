import '../tdapi.dart';

class BotCommandScope extends TdObject {
  /// Represents the scope to which bot commands are relevant
  const BotCommandScope();

  factory BotCommandScope.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BotCommandScopeDefault.CONSTRUCTOR:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.CONSTRUCTOR:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.CONSTRUCTOR:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.CONSTRUCTOR:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.CONSTRUCTOR:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        return const BotCommandScope();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  BotCommandScope copyWith() {
    return const BotCommandScope();
  }

  static const CONSTRUCTOR = 'botCommandScope';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeDefault extends BotCommandScope {
  /// A scope covering all users
  const BotCommandScopeDefault();

  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) =>
      const BotCommandScopeDefault();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BotCommandScopeDefault copyWith() {
    return const BotCommandScopeDefault();
  }

  static const CONSTRUCTOR = 'botCommandScopeDefault';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeAllPrivateChats extends BotCommandScope {
  /// A scope covering all private chats
  const BotCommandScopeAllPrivateChats();

  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) =>
      const BotCommandScopeAllPrivateChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BotCommandScopeAllPrivateChats copyWith() {
    return const BotCommandScopeAllPrivateChats();
  }

  static const CONSTRUCTOR = 'botCommandScopeAllPrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeAllGroupChats extends BotCommandScope {
  /// A scope covering all group and supergroup chats
  const BotCommandScopeAllGroupChats();

  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) =>
      const BotCommandScopeAllGroupChats();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BotCommandScopeAllGroupChats copyWith() {
    return const BotCommandScopeAllGroupChats();
  }

  static const CONSTRUCTOR = 'botCommandScopeAllGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  /// A scope covering all group and supergroup chat administrators
  const BotCommandScopeAllChatAdministrators();

  factory BotCommandScopeAllChatAdministrators.fromJson(
          Map<String, dynamic> json) =>
      const BotCommandScopeAllChatAdministrators();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  BotCommandScopeAllChatAdministrators copyWith() {
    return const BotCommandScopeAllChatAdministrators();
  }

  static const CONSTRUCTOR = 'botCommandScopeAllChatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeChat extends BotCommandScope {
  /// A scope covering all members of a chat
  const BotCommandScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) =>
      BotCommandScopeChat(
        chatId: json['chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  BotCommandScopeChat copyWith({
    int? chatId,
  }) {
    return BotCommandScopeChat(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'botCommandScopeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeChatAdministrators extends BotCommandScope {
  /// A scope covering all administrators of a chat
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  factory BotCommandScopeChatAdministrators.fromJson(
          Map<String, dynamic> json) =>
      BotCommandScopeChatAdministrators(
        chatId: json['chat_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  BotCommandScopeChatAdministrators copyWith({
    int? chatId,
  }) {
    return BotCommandScopeChatAdministrators(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'botCommandScopeChatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class BotCommandScopeChatMember extends BotCommandScope {
  /// A scope covering a member of a chat
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) =>
      BotCommandScopeChatMember(
        chatId: json['chat_id'] ?? 0,
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "user_id": userId,
    };
  }

  @override
  BotCommandScopeChatMember copyWith({
    int? chatId,
    int? userId,
  }) {
    return BotCommandScopeChatMember(
      chatId: chatId ?? this.chatId,
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'botCommandScopeChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
