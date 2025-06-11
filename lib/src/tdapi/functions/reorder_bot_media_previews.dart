import '../tdapi.dart';

class ReorderBotMediaPreviews extends TdFunction {

  /// Changes order of media previews in the list of media previews of a bot
  const ReorderBotMediaPreviews({
    required this.botUserId,
    required this.languageCode,
    required this.fileIds,
  });
  
  /// [botUserId] Identifier of the target bot. The bot must be owned and must have the main Web App
  final int botUserId;

  /// [languageCode] Language code of the media previews to reorder
  final String languageCode;

  /// [fileIds] File identifiers of the media in the new order
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
  
  ReorderBotMediaPreviews copyWith({
    int? botUserId,
    String? languageCode,
    List<int>? fileIds,
  }) => ReorderBotMediaPreviews(
    botUserId: botUserId ?? this.botUserId,
    languageCode: languageCode ?? this.languageCode,
    fileIds: fileIds ?? this.fileIds,
  );

  static const CONSTRUCTOR = 'reorderBotMediaPreviews';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
