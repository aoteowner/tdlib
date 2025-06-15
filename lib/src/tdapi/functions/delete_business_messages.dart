import '../tdapi.dart';

class DeleteBusinessMessages extends TdFunction {
  /// Deletes messages on behalf of a business account; for bots only
  const DeleteBusinessMessages({
    required this.businessConnectionId,
    required this.messageIds,
  });

  /// [businessConnectionId] Unique identifier of business connection through which the messages were received
  final String businessConnectionId;

  /// [messageIds] Identifier of the messages
  final List<int> messageIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "business_connection_id": businessConnectionId,
      "message_ids": messageIds,
      "@extra": extra,
    };
  }

  DeleteBusinessMessages copyWith({
    String? businessConnectionId,
    List<int>? messageIds,
  }) {
    return DeleteBusinessMessages(
      businessConnectionId: businessConnectionId ?? this.businessConnectionId,
      messageIds: messageIds ?? this.messageIds,
    );
  }

  static const CONSTRUCTOR = 'deleteBusinessMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
