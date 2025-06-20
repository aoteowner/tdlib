import '../tdapi.dart';

class EditMessageSchedulingState extends TdFunction {
  /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
  const EditMessageSchedulingState({
    required this.chatId,
    required this.messageId,
    this.schedulingState,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_edit_scheduling_state to check whether the message is suitable
  final int messageId;

  /// [schedulingState] The new message scheduling state; pass null to send the message immediately. Must be null for messages in the state messageSchedulingStateSendWhenVideoProcessed
  final MessageSchedulingState? schedulingState;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "scheduling_state": schedulingState?.toJson(),
      "@extra": extra,
    };
  }

  EditMessageSchedulingState copyWith({
    int? chatId,
    int? messageId,
    MessageSchedulingState? schedulingState,
  }) {
    return EditMessageSchedulingState(
      chatId: chatId ?? this.chatId,
      messageId: messageId ?? this.messageId,
      schedulingState: schedulingState ?? this.schedulingState,
    );
  }

  static const CONSTRUCTOR = 'editMessageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
