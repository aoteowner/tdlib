import '../tdapi.dart';

class InviteGroupCallParticipantResult extends TdObject {

  /// Describes result of group call participant invitation
  const InviteGroupCallParticipantResult();
  
  /// a InviteGroupCallParticipantResult return type can be :
  /// * [InviteGroupCallParticipantResultUserPrivacyRestricted]
  /// * [InviteGroupCallParticipantResultUserAlreadyParticipant]
  /// * [InviteGroupCallParticipantResultUserWasBanned]
  /// * [InviteGroupCallParticipantResultSuccess]
  factory InviteGroupCallParticipantResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InviteGroupCallParticipantResultUserPrivacyRestricted.CONSTRUCTOR:
        return InviteGroupCallParticipantResultUserPrivacyRestricted.fromJson(json);
      case InviteGroupCallParticipantResultUserAlreadyParticipant.CONSTRUCTOR:
        return InviteGroupCallParticipantResultUserAlreadyParticipant.fromJson(json);
      case InviteGroupCallParticipantResultUserWasBanned.CONSTRUCTOR:
        return InviteGroupCallParticipantResultUserWasBanned.fromJson(json);
      case InviteGroupCallParticipantResultSuccess.CONSTRUCTOR:
        return InviteGroupCallParticipantResultSuccess.fromJson(json);
      default:
        return const InviteGroupCallParticipantResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InviteGroupCallParticipantResult copyWith() => const InviteGroupCallParticipantResult();

  static const CONSTRUCTOR = 'inviteGroupCallParticipantResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteGroupCallParticipantResultUserPrivacyRestricted extends InviteGroupCallParticipantResult {

  /// The user can't be invited due to their privacy settings
  const InviteGroupCallParticipantResultUserPrivacyRestricted({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InviteGroupCallParticipantResultUserPrivacyRestricted.fromJson(Map<String, dynamic> json) => InviteGroupCallParticipantResultUserPrivacyRestricted(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteGroupCallParticipantResultUserPrivacyRestricted copyWith({
    dynamic extra,
    int? clientId,
  }) => InviteGroupCallParticipantResultUserPrivacyRestricted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipantResultUserPrivacyRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteGroupCallParticipantResultUserAlreadyParticipant extends InviteGroupCallParticipantResult {

  /// The user can't be invited because they are already a participant of the call
  const InviteGroupCallParticipantResultUserAlreadyParticipant({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InviteGroupCallParticipantResultUserAlreadyParticipant.fromJson(Map<String, dynamic> json) => InviteGroupCallParticipantResultUserAlreadyParticipant(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteGroupCallParticipantResultUserAlreadyParticipant copyWith({
    dynamic extra,
    int? clientId,
  }) => InviteGroupCallParticipantResultUserAlreadyParticipant(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipantResultUserAlreadyParticipant';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteGroupCallParticipantResultUserWasBanned extends InviteGroupCallParticipantResult {

  /// The user can't be invited because they were banned by the owner of the call and can be invited back only by the owner of the group call
  const InviteGroupCallParticipantResultUserWasBanned({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InviteGroupCallParticipantResultUserWasBanned.fromJson(Map<String, dynamic> json) => InviteGroupCallParticipantResultUserWasBanned(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteGroupCallParticipantResultUserWasBanned copyWith({
    dynamic extra,
    int? clientId,
  }) => InviteGroupCallParticipantResultUserWasBanned(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipantResultUserWasBanned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteGroupCallParticipantResultSuccess extends InviteGroupCallParticipantResult {

  /// The user was invited and a service message of the type messageGroupCall was sent which can be used in declineGroupCallInvitation to cancel the invitation
  const InviteGroupCallParticipantResultSuccess({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the chat with the invitation message
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InviteGroupCallParticipantResultSuccess.fromJson(Map<String, dynamic> json) => InviteGroupCallParticipantResultSuccess(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
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
  InviteGroupCallParticipantResultSuccess copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => InviteGroupCallParticipantResultSuccess(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipantResultSuccess';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
