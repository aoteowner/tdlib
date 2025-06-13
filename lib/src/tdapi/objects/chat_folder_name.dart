import '../tdapi.dart';

class ChatFolderName extends TdObject {

  /// Describes name of a chat folder
  const ChatFolderName({
    required this.text,
    required this.animateCustomEmoji,
  });
  
  /// [text] The text of the chat folder name; 1-12 characters without line feeds. May contain only CustomEmoji entities
  final FormattedText text;

  /// [animateCustomEmoji] True, if custom emoji in the name must be animated
  final bool animateCustomEmoji;
  
  /// Parse from a json
  factory ChatFolderName.fromJson(Map<String, dynamic> json) => ChatFolderName(
    text: FormattedText.fromJson(json['text'] ?? {}),
    animateCustomEmoji: json['animate_custom_emoji'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "animate_custom_emoji": animateCustomEmoji,
    };
  }
  
  ChatFolderName copyWith({
    FormattedText? text,
    bool? animateCustomEmoji,
  }) => ChatFolderName(
    text: text ?? this.text,
    animateCustomEmoji: animateCustomEmoji ?? this.animateCustomEmoji,
  );

  static const CONSTRUCTOR = 'chatFolderName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
