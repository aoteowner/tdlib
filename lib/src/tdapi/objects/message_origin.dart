part of '../tdapi.dart';

class MessageOrigin extends TdObject {

  /// Contains information about the origin of a message
  const MessageOrigin();
  
  /// a MessageOrigin return type can be :
  /// * [MessageOriginUser]
  /// * [MessageOriginHiddenUser]
  /// * [MessageOriginChat]
  /// * [MessageOriginChannel]
  factory MessageOrigin.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageOriginUser.CONSTRUCTOR:
        return MessageOriginUser.fromJson(json);
      case MessageOriginHiddenUser.CONSTRUCTOR:
        return MessageOriginHiddenUser.fromJson(json);
      case MessageOriginChat.CONSTRUCTOR:
        return MessageOriginChat.fromJson(json);
      case MessageOriginChannel.CONSTRUCTOR:
        return MessageOriginChannel.fromJson(json);
      default:
        return const MessageOrigin();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageOrigin copyWith() => const MessageOrigin();

  static const CONSTRUCTOR = 'messageOrigin';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageOriginUser extends MessageOrigin {

  /// The message was originally sent by a known user
  const MessageOriginUser({
    required this.senderUserId,
  });
  
  /// [senderUserId] Identifier of the user that originally sent the message
  final int senderUserId;
  
  /// Parse from a json
  factory MessageOriginUser.fromJson(Map<String, dynamic> json) => MessageOriginUser(
    senderUserId: json['sender_user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
    };
  }
  
  @override
  MessageOriginUser copyWith({
    int? senderUserId,
  }) => MessageOriginUser(
    senderUserId: senderUserId ?? this.senderUserId,
  );

  static const CONSTRUCTOR = 'messageOriginUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageOriginHiddenUser extends MessageOrigin {

  /// The message was originally sent by a user, which is hidden by their privacy settings
  const MessageOriginHiddenUser({
    required this.senderName,
  });
  
  /// [senderName] Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageOriginHiddenUser.fromJson(Map<String, dynamic> json) => MessageOriginHiddenUser(
    senderName: json['sender_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_name": senderName,
    };
  }
  
  @override
  MessageOriginHiddenUser copyWith({
    String? senderName,
  }) => MessageOriginHiddenUser(
    senderName: senderName ?? this.senderName,
  );

  static const CONSTRUCTOR = 'messageOriginHiddenUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageOriginChat extends MessageOrigin {

  /// The message was originally sent on behalf of a chat
  const MessageOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });
  
  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat administrator, original message author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageOriginChat.fromJson(Map<String, dynamic> json) => MessageOriginChat(
    senderChatId: json['sender_chat_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_chat_id": senderChatId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageOriginChat copyWith({
    int? senderChatId,
    String? authorSignature,
  }) => MessageOriginChat(
    senderChatId: senderChatId ?? this.senderChatId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const CONSTRUCTOR = 'messageOriginChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageOriginChannel extends MessageOrigin {

  /// The message was originally a post in a channel
  const MessageOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });
  
  /// [chatId] Identifier of the channel chat to which the message was originally sent
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageOriginChannel.fromJson(Map<String, dynamic> json) => MessageOriginChannel(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageOriginChannel copyWith({
    int? chatId,
    int? messageId,
    String? authorSignature,
  }) => MessageOriginChannel(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const CONSTRUCTOR = 'messageOriginChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
