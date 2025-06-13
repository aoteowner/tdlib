import '../tdapi.dart';

class MessageReadDate extends TdObject {

  /// Describes read date of a recent outgoing message in a private chat
  const MessageReadDate();
  
  /// a MessageReadDate return type can be :
  /// * [MessageReadDateRead]
  /// * [MessageReadDateUnread]
  /// * [MessageReadDateTooOld]
  /// * [MessageReadDateUserPrivacyRestricted]
  /// * [MessageReadDateMyPrivacyRestricted]
  factory MessageReadDate.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageReadDateRead.CONSTRUCTOR:
        return MessageReadDateRead.fromJson(json);
      case MessageReadDateUnread.CONSTRUCTOR:
        return MessageReadDateUnread.fromJson(json);
      case MessageReadDateTooOld.CONSTRUCTOR:
        return MessageReadDateTooOld.fromJson(json);
      case MessageReadDateUserPrivacyRestricted.CONSTRUCTOR:
        return MessageReadDateUserPrivacyRestricted.fromJson(json);
      case MessageReadDateMyPrivacyRestricted.CONSTRUCTOR:
        return MessageReadDateMyPrivacyRestricted.fromJson(json);
      default:
        return const MessageReadDate();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageReadDate copyWith() => const MessageReadDate();

  static const CONSTRUCTOR = 'messageReadDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReadDateRead extends MessageReadDate {

  /// Contains read date of the message
  const MessageReadDateRead({
    required this.readDate,
    this.extra,
    this.clientId,
  });
  
  /// [readDate] Point in time (Unix timestamp) when the message was read by the other user
  final int readDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageReadDateRead.fromJson(Map<String, dynamic> json) => MessageReadDateRead(
    readDate: json['read_date'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "read_date": readDate,
    };
  }
  
  @override
  MessageReadDateRead copyWith({
    int? readDate,
    dynamic extra,
    int? clientId,
  }) => MessageReadDateRead(
    readDate: readDate ?? this.readDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageReadDateRead';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReadDateUnread extends MessageReadDate {

  /// The message is unread yet
  const MessageReadDateUnread({
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
  factory MessageReadDateUnread.fromJson(Map<String, dynamic> json) => MessageReadDateUnread(
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
  MessageReadDateUnread copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateUnread(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageReadDateUnread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReadDateTooOld extends MessageReadDate {

  /// The message is too old to get read date
  const MessageReadDateTooOld({
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
  factory MessageReadDateTooOld.fromJson(Map<String, dynamic> json) => MessageReadDateTooOld(
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
  MessageReadDateTooOld copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateTooOld(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageReadDateTooOld';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReadDateUserPrivacyRestricted extends MessageReadDate {

  /// The read date is unknown due to privacy settings of the other user
  const MessageReadDateUserPrivacyRestricted({
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
  factory MessageReadDateUserPrivacyRestricted.fromJson(Map<String, dynamic> json) => MessageReadDateUserPrivacyRestricted(
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
  MessageReadDateUserPrivacyRestricted copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateUserPrivacyRestricted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageReadDateUserPrivacyRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageReadDateMyPrivacyRestricted extends MessageReadDate {

  /// The read date is unknown due to privacy settings of the current user, but will be known if the user subscribes to Telegram Premium
  const MessageReadDateMyPrivacyRestricted({
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
  factory MessageReadDateMyPrivacyRestricted.fromJson(Map<String, dynamic> json) => MessageReadDateMyPrivacyRestricted(
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
  MessageReadDateMyPrivacyRestricted copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageReadDateMyPrivacyRestricted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageReadDateMyPrivacyRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
