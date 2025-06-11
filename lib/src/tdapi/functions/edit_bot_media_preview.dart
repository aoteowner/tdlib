import '../tdapi.dart';

class EditBotMediaPreview extends TdFunction {

  /// Replaces media preview in the list of media previews of a bot. Returns the new preview after edit is completed server-side
  const EditBotMediaPreview({
    required this.botUserId,
    required this.languageCode,
    required this.fileId,
    required this.content,
  });
  
  /// [botUserId] Identifier of the target bot. The bot must be owned and must have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media preview to edit
  final String languageCode;

  /// [fileId] File identifier of the media to replace
  final int fileId;

  /// [content] Content of the new preview
  final InputStoryContent content;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "file_id": fileId,
      "content": content.toJson(),
      "@extra": extra,
    };
  }
  
  EditBotMediaPreview copyWith({
    int? botUserId,
    String? languageCode,
    int? fileId,
    InputStoryContent? content,
  }) => EditBotMediaPreview(
    botUserId: botUserId ?? this.botUserId,
    languageCode: languageCode ?? this.languageCode,
    fileId: fileId ?? this.fileId,
    content: content ?? this.content,
  );

  static const CONSTRUCTOR = 'editBotMediaPreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
