import '../tdapi.dart';

class ChatActionBar extends TdObject {
  /// Describes actions which must be possible to do through a chat action bar
  const ChatActionBar();

  factory ChatActionBar.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatActionBarReportSpam.CONSTRUCTOR:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarInviteMembers.CONSTRUCTOR:
        return ChatActionBarInviteMembers.fromJson(json);
      case ChatActionBarReportAddBlock.CONSTRUCTOR:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.CONSTRUCTOR:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.CONSTRUCTOR:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      case ChatActionBarJoinRequest.CONSTRUCTOR:
        return ChatActionBarJoinRequest.fromJson(json);
      default:
        return const ChatActionBar();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatActionBar copyWith() {
    return const ChatActionBar();
  }

  static const CONSTRUCTOR = 'chatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarReportSpam extends ChatActionBar {
  /// The chat can be reported as spam using the method reportChat with an empty option_id and message_ids. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
  const ChatActionBarReportSpam({
    required this.canUnarchive,
  });

  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  factory ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) =>
      ChatActionBarReportSpam(
        canUnarchive: json['can_unarchive'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
    };
  }

  @override
  ChatActionBarReportSpam copyWith({
    bool? canUnarchive,
  }) {
    return ChatActionBarReportSpam(
      canUnarchive: canUnarchive ?? this.canUnarchive,
    );
  }

  static const CONSTRUCTOR = 'chatActionBarReportSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarInviteMembers extends ChatActionBar {
  /// The chat is a recently created group chat to which new members can be invited
  const ChatActionBarInviteMembers();

  factory ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json) =>
      const ChatActionBarInviteMembers();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatActionBarInviteMembers copyWith() {
    return const ChatActionBarInviteMembers();
  }

  static const CONSTRUCTOR = 'chatActionBarInviteMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarReportAddBlock extends ChatActionBar {
  /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method setMessageSenderBlockList,. or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
  const ChatActionBarReportAddBlock({
    required this.canUnarchive,
    this.accountInfo,
  });

  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  /// [accountInfo] Basic information about the other user in the chat; may be null if unknown
  final AccountInfo? accountInfo;

  factory ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) =>
      ChatActionBarReportAddBlock(
        canUnarchive: json['can_unarchive'] ?? false,
        accountInfo: AccountInfo.fromJson(json['account_info'] ?? {}),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
      "account_info": accountInfo?.toJson(),
    };
  }

  @override
  ChatActionBarReportAddBlock copyWith({
    bool? canUnarchive,
    AccountInfo? accountInfo,
  }) {
    return ChatActionBarReportAddBlock(
      canUnarchive: canUnarchive ?? this.canUnarchive,
      accountInfo: accountInfo ?? this.accountInfo,
    );
  }

  static const CONSTRUCTOR = 'chatActionBarReportAddBlock';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarAddContact extends ChatActionBar {
  /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
  const ChatActionBarAddContact();

  factory ChatActionBarAddContact.fromJson(Map<String, dynamic> json) =>
      const ChatActionBarAddContact();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatActionBarAddContact copyWith() {
    return const ChatActionBarAddContact();
  }

  static const CONSTRUCTOR = 'chatActionBarAddContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarSharePhoneNumber extends ChatActionBar {
  /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
  const ChatActionBarSharePhoneNumber();

  factory ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json) =>
      const ChatActionBarSharePhoneNumber();
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatActionBarSharePhoneNumber copyWith() {
    return const ChatActionBarSharePhoneNumber();
  }

  static const CONSTRUCTOR = 'chatActionBarSharePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionBarJoinRequest extends ChatActionBar {
  /// The chat is a private chat with an administrator of a chat to which the user sent join request
  const ChatActionBarJoinRequest({
    required this.title,
    required this.isChannel,
    required this.requestDate,
  });

  /// [title] Title of the chat to which the join request was sent
  final String title;

  /// [isChannel] True, if the join request was sent to a channel chat
  final bool isChannel;

  /// [requestDate] Point in time (Unix timestamp) when the join request was sent
  final int requestDate;

  factory ChatActionBarJoinRequest.fromJson(Map<String, dynamic> json) =>
      ChatActionBarJoinRequest(
        title: json['title'] ?? '',
        isChannel: json['is_channel'] ?? false,
        requestDate: json['request_date'] ?? 0,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_channel": isChannel,
      "request_date": requestDate,
    };
  }

  @override
  ChatActionBarJoinRequest copyWith({
    String? title,
    bool? isChannel,
    int? requestDate,
  }) {
    return ChatActionBarJoinRequest(
      title: title ?? this.title,
      isChannel: isChannel ?? this.isChannel,
      requestDate: requestDate ?? this.requestDate,
    );
  }

  static const CONSTRUCTOR = 'chatActionBarJoinRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}
