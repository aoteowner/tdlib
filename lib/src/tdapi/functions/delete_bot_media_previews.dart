part of '../tdapi.dart';

class DeleteBotMediaPreviews extends TdFunction {

  /// Delete media previews from the list of media previews of a bot
  const DeleteBotMediaPreviews({
    required this.botUserId,
    required this.languageCode,
    required this.fileIds,
  });
  
  /// [botUserId] Identifier of the target bot. The bot must be owned and must have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media previews to delete
  final String languageCode;

  /// [fileIds] File identifiers of the media to delete
  final List<int> fileIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "file_ids": fileIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  DeleteBotMediaPreviews copyWith({
    int? botUserId,
    String? languageCode,
    List<int>? fileIds,
  }) => DeleteBotMediaPreviews(
    botUserId: botUserId ?? this.botUserId,
    languageCode: languageCode ?? this.languageCode,
    fileIds: fileIds ?? this.fileIds,
  );

  static const CONSTRUCTOR = 'deleteBotMediaPreviews';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
