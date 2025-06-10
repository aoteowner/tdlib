part of '../tdapi.dart';

class CanSendMessageToUserResult extends TdObject {

  /// Describes result of canSendMessageToUser
  const CanSendMessageToUserResult();
  
  /// a CanSendMessageToUserResult return type can be :
  /// * [CanSendMessageToUserResultOk]
  /// * [CanSendMessageToUserResultUserHasPaidMessages]
  /// * [CanSendMessageToUserResultUserIsDeleted]
  /// * [CanSendMessageToUserResultUserRestrictsNewChats]
  factory CanSendMessageToUserResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CanSendMessageToUserResultOk.CONSTRUCTOR:
        return CanSendMessageToUserResultOk.fromJson(json);
      case CanSendMessageToUserResultUserHasPaidMessages.CONSTRUCTOR:
        return CanSendMessageToUserResultUserHasPaidMessages.fromJson(json);
      case CanSendMessageToUserResultUserIsDeleted.CONSTRUCTOR:
        return CanSendMessageToUserResultUserIsDeleted.fromJson(json);
      case CanSendMessageToUserResultUserRestrictsNewChats.CONSTRUCTOR:
        return CanSendMessageToUserResultUserRestrictsNewChats.fromJson(json);
      default:
        return const CanSendMessageToUserResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CanSendMessageToUserResult copyWith() => const CanSendMessageToUserResult();

  static const CONSTRUCTOR = 'canSendMessageToUserResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanSendMessageToUserResultOk extends CanSendMessageToUserResult {

  /// The user can be messaged
  const CanSendMessageToUserResultOk({
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
  factory CanSendMessageToUserResultOk.fromJson(Map<String, dynamic> json) => CanSendMessageToUserResultOk(
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
  CanSendMessageToUserResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CanSendMessageToUserResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canSendMessageToUserResultOk';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanSendMessageToUserResultUserHasPaidMessages extends CanSendMessageToUserResult {

  /// The user can be messaged, but the messages are paid
  const CanSendMessageToUserResultUserHasPaidMessages({
    required this.outgoingPaidMessageStarCount,
    this.extra,
    this.clientId,
  });
  
  /// [outgoingPaidMessageStarCount] Number of Telegram Stars that must be paid by the current user for each sent message to the user
  final int outgoingPaidMessageStarCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanSendMessageToUserResultUserHasPaidMessages.fromJson(Map<String, dynamic> json) => CanSendMessageToUserResultUserHasPaidMessages(
    outgoingPaidMessageStarCount: json['outgoing_paid_message_star_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "outgoing_paid_message_star_count": outgoingPaidMessageStarCount,
    };
  }
  
  @override
  CanSendMessageToUserResultUserHasPaidMessages copyWith({
    int? outgoingPaidMessageStarCount,
    dynamic extra,
    int? clientId,
  }) => CanSendMessageToUserResultUserHasPaidMessages(
    outgoingPaidMessageStarCount: outgoingPaidMessageStarCount ?? this.outgoingPaidMessageStarCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canSendMessageToUserResultUserHasPaidMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanSendMessageToUserResultUserIsDeleted extends CanSendMessageToUserResult {

  /// The user can't be messaged, because they are deleted or unknown
  const CanSendMessageToUserResultUserIsDeleted({
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
  factory CanSendMessageToUserResultUserIsDeleted.fromJson(Map<String, dynamic> json) => CanSendMessageToUserResultUserIsDeleted(
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
  CanSendMessageToUserResultUserIsDeleted copyWith({
    dynamic extra,
    int? clientId,
  }) => CanSendMessageToUserResultUserIsDeleted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canSendMessageToUserResultUserIsDeleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CanSendMessageToUserResultUserRestrictsNewChats extends CanSendMessageToUserResult {

  /// The user can't be messaged, because they restrict new chats with non-contacts
  const CanSendMessageToUserResultUserRestrictsNewChats({
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
  factory CanSendMessageToUserResultUserRestrictsNewChats.fromJson(Map<String, dynamic> json) => CanSendMessageToUserResultUserRestrictsNewChats(
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
  CanSendMessageToUserResultUserRestrictsNewChats copyWith({
    dynamic extra,
    int? clientId,
  }) => CanSendMessageToUserResultUserRestrictsNewChats(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'canSendMessageToUserResultUserRestrictsNewChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
