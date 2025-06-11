import '../tdapi.dart';

class CreateBusinessChatLink extends TdFunction {

  /// Creates a business chat link for the current account. Requires Telegram Business subscription. There can be up to getOption("business_chat_link_count_max") links created. Returns the created link
  const CreateBusinessChatLink({
    required this.linkInfo,
  });
  
  /// [linkInfo] Information about the link to create
  final InputBusinessChatLink linkInfo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link_info": linkInfo.toJson(),
      "@extra": extra,
    };
  }
  
  CreateBusinessChatLink copyWith({
    InputBusinessChatLink? linkInfo,
  }) => CreateBusinessChatLink(
    linkInfo: linkInfo ?? this.linkInfo,
  );

  static const CONSTRUCTOR = 'createBusinessChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
