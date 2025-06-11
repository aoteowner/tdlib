import '../tdapi.dart';

class CreateInvoiceLink extends TdFunction {

  /// Creates a link for the given invoice; for bots only
  const CreateInvoiceLink({
    required this.businessConnectionId,
    required this.invoice,
  });
  
  /// [businessConnectionId] Unique identifier of business connection on behalf of which to send the request
  final String businessConnectionId;

  /// [invoice] Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "invoice": invoice.toJson(),
      "@extra": extra,
    };
  }
  
  CreateInvoiceLink copyWith({
    String? businessConnectionId,
    InputMessageContent? invoice,
  }) => CreateInvoiceLink(
    businessConnectionId: businessConnectionId ?? this.businessConnectionId,
    invoice: invoice ?? this.invoice,
  );

  static const CONSTRUCTOR = 'createInvoiceLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
