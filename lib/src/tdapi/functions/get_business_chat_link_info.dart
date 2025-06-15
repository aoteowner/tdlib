import '../tdapi.dart';

class GetBusinessChatLinkInfo extends TdFunction {
  /// Returns information about a business chat link
  const GetBusinessChatLinkInfo({
    required this.linkName,
  });

  /// [linkName] Name of the link
  final String linkName;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link_name": linkName,
      "@extra": extra,
    };
  }

  GetBusinessChatLinkInfo copyWith({
    String? linkName,
  }) {
    return GetBusinessChatLinkInfo(
      linkName: linkName ?? this.linkName,
    );
  }

  static const CONSTRUCTOR = 'getBusinessChatLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
