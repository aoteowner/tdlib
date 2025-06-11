import '../tdapi.dart';

class CheckWebAppFileDownload extends TdFunction {

  /// Checks whether a file can be downloaded and saved locally by Web App request
  const CheckWebAppFileDownload({
    required this.botUserId,
    required this.fileName,
    required this.url,
  });
  
  /// [botUserId] Identifier of the bot, providing the Web App
  final int botUserId;

  /// [fileName] Name of the file
  final String fileName;

  /// [url] URL of the file
  final String url;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "file_name": fileName,
      "url": url,
      "@extra": extra,
    };
  }
  
  CheckWebAppFileDownload copyWith({
    int? botUserId,
    String? fileName,
    String? url,
  }) => CheckWebAppFileDownload(
    botUserId: botUserId ?? this.botUserId,
    fileName: fileName ?? this.fileName,
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'checkWebAppFileDownload';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
