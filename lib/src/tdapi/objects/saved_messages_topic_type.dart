import '../tdapi.dart';

class SavedMessagesTopicType extends TdObject {
  /// Describes type of Saved Messages topic
  const SavedMessagesTopicType();

  factory SavedMessagesTopicType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SavedMessagesTopicTypeMyNotes.CONSTRUCTOR:
        return SavedMessagesTopicTypeMyNotes.fromJson(json);
      case SavedMessagesTopicTypeAuthorHidden.CONSTRUCTOR:
        return SavedMessagesTopicTypeAuthorHidden.fromJson(json);
      case SavedMessagesTopicTypeSavedFromChat.CONSTRUCTOR:
        return SavedMessagesTopicTypeSavedFromChat.fromJson(json);
      default:
        return const SavedMessagesTopicType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SavedMessagesTopicType copyWith() {
    return const SavedMessagesTopicType();
  }

  static const CONSTRUCTOR = 'savedMessagesTopicType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SavedMessagesTopicTypeMyNotes extends SavedMessagesTopicType {
  /// Topic containing messages sent by the current user of forwarded from an unknown chat
  const SavedMessagesTopicTypeMyNotes();

  factory SavedMessagesTopicTypeMyNotes.fromJson(Map<String, dynamic> json) =>
      const SavedMessagesTopicTypeMyNotes();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SavedMessagesTopicTypeMyNotes copyWith() {
    return const SavedMessagesTopicTypeMyNotes();
  }

  static const CONSTRUCTOR = 'savedMessagesTopicTypeMyNotes';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SavedMessagesTopicTypeAuthorHidden extends SavedMessagesTopicType {
  /// Topic containing messages forwarded from a user with hidden privacy
  const SavedMessagesTopicTypeAuthorHidden();

  factory SavedMessagesTopicTypeAuthorHidden.fromJson(
          Map<String, dynamic> json) =>
      const SavedMessagesTopicTypeAuthorHidden();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SavedMessagesTopicTypeAuthorHidden copyWith() {
    return const SavedMessagesTopicTypeAuthorHidden();
  }

  static const CONSTRUCTOR = 'savedMessagesTopicTypeAuthorHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SavedMessagesTopicTypeSavedFromChat extends SavedMessagesTopicType {
  /// Topic containing messages forwarded from a specific chat
  const SavedMessagesTopicTypeSavedFromChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  factory SavedMessagesTopicTypeSavedFromChat.fromJson(
          Map<String, dynamic> json) =>
      SavedMessagesTopicTypeSavedFromChat(
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
  SavedMessagesTopicTypeSavedFromChat copyWith({
    int? chatId,
  }) {
    return SavedMessagesTopicTypeSavedFromChat(
      chatId: chatId ?? this.chatId,
    );
  }

  static const CONSTRUCTOR = 'savedMessagesTopicTypeSavedFromChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
