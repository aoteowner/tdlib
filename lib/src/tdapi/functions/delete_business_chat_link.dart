part of '../tdapi.dart';

class DeleteBusinessChatLink extends TdFunction {

  /// Deletes a business chat link of the current account
  const DeleteBusinessChatLink({
    required this.link,
  });
  
  /// [link] The link to delete
  final String link;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "@extra": extra,
    };
  }
  
  DeleteBusinessChatLink copyWith({
    String? link,
  }) => DeleteBusinessChatLink(
    link: link ?? this.link,
  );

  static const CONSTRUCTOR = 'deleteBusinessChatLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
