import '../tdapi.dart';

class ImportMessages extends TdFunction {
  /// Imports messages exported from another app
  const ImportMessages({
    required this.chatId,
    required this.messageFile,
    required this.attachedFiles,
  });

  /// [chatId] Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info member right
  final int chatId;

  /// [messageFile] File with messages to import. Only inputFileLocal and inputFileGenerated are supported. The file must not be previously uploaded
  final InputFile messageFile;

  /// [attachedFiles] Files used in the imported messages. Only inputFileLocal and inputFileGenerated are supported. The files must not be previously uploaded
  final List<InputFile> attachedFiles;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_file": messageFile.toJson(),
      "attached_files": attachedFiles.map((e) => e.toJson()).toList(),
      "@extra": extra,
    };
  }

  ImportMessages copyWith({
    int? chatId,
    InputFile? messageFile,
    List<InputFile>? attachedFiles,
  }) {
    return ImportMessages(
      chatId: chatId ?? this.chatId,
      messageFile: messageFile ?? this.messageFile,
      attachedFiles: attachedFiles ?? this.attachedFiles,
    );
  }

  static const CONSTRUCTOR = 'importMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
