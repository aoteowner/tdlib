import '../tdapi.dart';

class ViewSponsoredChat extends TdFunction {
  /// Informs TDLib that the user fully viewed a sponsored chat
  const ViewSponsoredChat({
    required this.sponsoredChatUniqueId,
  });

  /// [sponsoredChatUniqueId] Unique identifier of the sponsored chat
  final int sponsoredChatUniqueId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sponsored_chat_unique_id": sponsoredChatUniqueId,
      "@extra": extra,
    };
  }

  ViewSponsoredChat copyWith({
    int? sponsoredChatUniqueId,
  }) {
    return ViewSponsoredChat(
      sponsoredChatUniqueId:
          sponsoredChatUniqueId ?? this.sponsoredChatUniqueId,
    );
  }

  static const CONSTRUCTOR = 'viewSponsoredChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
