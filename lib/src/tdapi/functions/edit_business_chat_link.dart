import '../tdapi.dart';

class EditBusinessChatLink extends TdFunction {

  /// Edits a business chat link of the current account. Requires Telegram Business subscription. Returns the edited link
  const EditBusinessChatLink({
    required this.link,
    required this.linkInfo,
  });
  
  /// [link] The link to edit
  final String link;

  /// [linkInfo] New description of the link
  final InputBusinessChatLink linkInfo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "link_info": linkInfo.toJson(),
      "@extra": extra,
    };
  }
  
  EditBusinessChatLink copyWith({
    String? link,
    InputBusinessChatLink? linkInfo,
  }) => EditBusinessChatLink(
    link: link ?? this.link,
    linkInfo: linkInfo ?? this.linkInfo,
  );

  static const CONSTRUCTOR = 'editBusinessChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
