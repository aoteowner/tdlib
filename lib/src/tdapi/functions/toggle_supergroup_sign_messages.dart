part of '../tdapi.dart';

class ToggleSupergroupSignMessages extends TdFunction {

  /// Toggles whether sender signature or link to the account is added to sent messages in a channel; requires can_change_info member right
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
    required this.showMessageSender,
  });
  
  /// [supergroupId] Identifier of the channel
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  /// [showMessageSender] New value of show_message_sender
  final bool showMessageSender;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "sign_messages": signMessages,
      "show_message_sender": showMessageSender,
      "@extra": extra,
    };
  }
  
  ToggleSupergroupSignMessages copyWith({
    int? supergroupId,
    bool? signMessages,
    bool? showMessageSender,
  }) => ToggleSupergroupSignMessages(
    supergroupId: supergroupId ?? this.supergroupId,
    signMessages: signMessages ?? this.signMessages,
    showMessageSender: showMessageSender ?? this.showMessageSender,
  );

  static const CONSTRUCTOR = 'toggleSupergroupSignMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
