import '../tdapi.dart';

class SharedChat extends TdObject {

  /// Contains information about a chat shared with a bot
  const SharedChat({
    required this.chatId,
    required this.title,
    required this.username,
    this.photo,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [title] Title of the chat; for bots only
  final String title;

  /// [username] Username of the chat; for bots only
  final String username;

  /// [photo] Photo of the chat; for bots only; may be null
  final Photo? photo;
  
  /// Parse from a json
  factory SharedChat.fromJson(Map<String, dynamic> json) => SharedChat(
    chatId: json['chat_id'],
    title: json['title'],
    username: json['username'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
      "username": username,
      "photo": photo?.toJson(),
    };
  }
  
  SharedChat copyWith({
    int? chatId,
    String? title,
    String? username,
    Photo? photo,
  }) => SharedChat(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
    username: username ?? this.username,
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'sharedChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
