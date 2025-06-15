import '../tdapi.dart';

class InputInvoice extends TdObject {
  /// Describes an invoice to process
  const InputInvoice();

  factory InputInvoice.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputInvoiceMessage.CONSTRUCTOR:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.CONSTRUCTOR:
        return InputInvoiceName.fromJson(json);
      case InputInvoiceTelegram.CONSTRUCTOR:
        return InputInvoiceTelegram.fromJson(json);
      default:
        return const InputInvoice();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  InputInvoice copyWith() {
    return const InputInvoice();
  }

  static const CONSTRUCTOR = 'inputInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInvoiceMessage extends InputInvoice {
  /// An invoice from a message of the type messageInvoice or paid media purchase from messagePaidMedia
  const InputInvoiceMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier. Use messageProperties.can_be_paid to check whether the message can be used in the method
  final int messageId;

  factory InputInvoiceMessage.fromJson(Map<String, dynamic> json) =>
      InputInvoiceMessage(
        chatId: json['chat_id'] ?? 0,
        messageId: json['message_id'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  InputInvoiceMessage copyWith({
    int? chatId,
    int? messageId,
  }) {
    return InputInvoiceMessage(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
    );
  }

  static const CONSTRUCTOR = 'inputInvoiceMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInvoiceName extends InputInvoice {
  /// An invoice from a link of the type internalLinkTypeInvoice
  const InputInvoiceName({
    required this.name,
  });

  /// [name] Name of the invoice
  final String name;

  factory InputInvoiceName.fromJson(Map<String, dynamic> json) =>
      InputInvoiceName(
        name: json['name'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
    };
  }

  @override
  InputInvoiceName copyWith({
    String? name,
  }) {
    return InputInvoiceName(
      name: name ?? this.name,
    );
  }

  static const CONSTRUCTOR = 'inputInvoiceName';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInvoiceTelegram extends InputInvoice {
  /// An invoice for a payment toward Telegram; must not be used in the in-store apps
  const InputInvoiceTelegram({
    required this.purpose,
  });

  /// [purpose] Transaction purpose
  final TelegramPaymentPurpose purpose;

  factory InputInvoiceTelegram.fromJson(Map<String, dynamic> json) =>
      InputInvoiceTelegram(
        purpose: TelegramPaymentPurpose.fromJson(json['purpose'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "purpose": purpose.toJson(),
    };
  }

  @override
  InputInvoiceTelegram copyWith({
    TelegramPaymentPurpose? purpose,
  }) {
    return InputInvoiceTelegram(
      purpose: purpose ?? this.purpose,
    );
  }

  static const CONSTRUCTOR = 'inputInvoiceTelegram';

  @override
  String getConstructor() => CONSTRUCTOR;
}
