import '../tdapi.dart';

class ChatType extends TdObject {
  /// Describes the type of chat
  const ChatType();

  factory ChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatTypePrivate.CONSTRUCTOR:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.CONSTRUCTOR:
        return ChatTypeSecret.fromJson(json);
      default:
        return const ChatType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatType copyWith() {
    return const ChatType();
  }

  static const CONSTRUCTOR = 'chatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypePrivate extends ChatType {
  /// An ordinary chat with a user
  const ChatTypePrivate({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  factory ChatTypePrivate.fromJson(Map<String, dynamic> json) =>
      ChatTypePrivate(
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  ChatTypePrivate copyWith({
    int? userId,
  }) {
    return ChatTypePrivate(
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'chatTypePrivate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeBasicGroup extends ChatType {
  /// A basic group (a chat with 0-200 other users)
  const ChatTypeBasicGroup({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  factory ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) =>
      ChatTypeBasicGroup(
        basicGroupId: json['basic_group_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
    };
  }

  @override
  ChatTypeBasicGroup copyWith({
    int? basicGroupId,
  }) {
    return ChatTypeBasicGroup(
      basicGroupId: basicGroupId ?? this.basicGroupId,
    );
  }

  static const CONSTRUCTOR = 'chatTypeBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSupergroup extends ChatType {
  /// A supergroup or channel (with unlimited members)
  const ChatTypeSupergroup({
    required this.supergroupId,
    required this.isChannel,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  factory ChatTypeSupergroup.fromJson(Map<String, dynamic> json) =>
      ChatTypeSupergroup(
        supergroupId: json['supergroup_id'] ?? 0,
        isChannel: json['is_channel'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "is_channel": isChannel,
    };
  }

  @override
  ChatTypeSupergroup copyWith({
    int? supergroupId,
    bool? isChannel,
  }) {
    return ChatTypeSupergroup(
      supergroupId: supergroupId ?? this.supergroupId,
      isChannel: isChannel ?? this.isChannel,
    );
  }

  static const CONSTRUCTOR = 'chatTypeSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSecret extends ChatType {
  /// A secret chat with a user
  const ChatTypeSecret({
    required this.secretChatId,
    required this.userId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// [userId] User identifier of the other user in the secret chat
  final int userId;

  factory ChatTypeSecret.fromJson(Map<String, dynamic> json) => ChatTypeSecret(
        secretChatId: json['secret_chat_id'] ?? 0,
        userId: json['user_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": secretChatId,
      "user_id": userId,
    };
  }

  @override
  ChatTypeSecret copyWith({
    int? secretChatId,
    int? userId,
  }) {
    return ChatTypeSecret(
      secretChatId: secretChatId ?? this.secretChatId,
      userId: userId ?? this.userId,
    );
  }

  static const CONSTRUCTOR = 'chatTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}
