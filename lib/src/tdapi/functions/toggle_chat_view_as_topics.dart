part of '../tdapi.dart';

class ToggleChatViewAsTopics extends TdFunction {

  /// Changes the view_as_topics setting of a forum chat or Saved Messages
  const ToggleChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "view_as_topics": viewAsTopics,
      "@extra": extra,
    };
  }
  
  ToggleChatViewAsTopics copyWith({
    int? chatId,
    bool? viewAsTopics,
  }) => ToggleChatViewAsTopics(
    chatId: chatId ?? this.chatId,
    viewAsTopics: viewAsTopics ?? this.viewAsTopics,
  );

  static const CONSTRUCTOR = 'toggleChatViewAsTopics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
