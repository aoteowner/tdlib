import '../tdapi.dart';

class GetStoryStatistics extends TdFunction {

  /// Returns detailed statistics about a story. Can be used only if story.can_get_statistics == true
  const GetStoryStatistics({
    required this.chatId,
    required this.storyId,
    required this.isDark,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [storyId] Story identifier 
  final int storyId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "story_id": storyId,
      "is_dark": isDark,
      "@extra": extra,
    };
  }
  
  GetStoryStatistics copyWith({
    int? chatId,
    int? storyId,
    bool? isDark,
  }) => GetStoryStatistics(
    chatId: chatId ?? this.chatId,
    storyId: storyId ?? this.storyId,
    isDark: isDark ?? this.isDark,
  );

  static const CONSTRUCTOR = 'getStoryStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
