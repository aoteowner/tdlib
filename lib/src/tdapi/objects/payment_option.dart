import '../tdapi.dart';

class PaymentOption extends TdObject {
  /// Describes an additional payment option
  const PaymentOption({
    required this.title,
    required this.url,
  });

  /// [title] Title for the payment option
  final String title;

  /// [url] Payment form URL to be opened in a web view
  final String url;

  factory PaymentOption.fromJson(Map<String, dynamic> json) => PaymentOption(
        title: json['title'] ?? '',
        url: json['url'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "url": url,
    };
  }

  PaymentOption copyWith({
    String? title,
    String? url,
  }) {
    return PaymentOption(
      title: title ?? this.title,
      url: url ?? this.url,
    );
  }

  static const CONSTRUCTOR = 'paymentOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
