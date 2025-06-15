import '../tdapi.dart';

class GetChatBoostLinkInfo extends TdFunction {
  /// Returns information about a link to boost a chat. Can be called for any internal link of the type internalLinkTypeChatBoost
  const GetChatBoostLinkInfo({
    required this.url,
  });

  /// [url] The link to boost a chat
  final String url;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "@extra": extra,
    };
  }

  GetChatBoostLinkInfo copyWith({
    String? url,
  }) {
    return GetChatBoostLinkInfo(
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'getChatBoostLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
