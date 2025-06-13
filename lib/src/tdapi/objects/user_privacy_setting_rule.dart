import '../tdapi.dart';

class UserPrivacySettingRule extends TdObject {

  /// Represents a single rule for managing user privacy settings
  const UserPrivacySettingRule();
  
  /// a UserPrivacySettingRule return type can be :
  /// * [UserPrivacySettingRuleAllowAll]
  /// * [UserPrivacySettingRuleAllowContacts]
  /// * [UserPrivacySettingRuleAllowBots]
  /// * [UserPrivacySettingRuleAllowPremiumUsers]
  /// * [UserPrivacySettingRuleAllowUsers]
  /// * [UserPrivacySettingRuleAllowChatMembers]
  /// * [UserPrivacySettingRuleRestrictAll]
  /// * [UserPrivacySettingRuleRestrictContacts]
  /// * [UserPrivacySettingRuleRestrictBots]
  /// * [UserPrivacySettingRuleRestrictUsers]
  /// * [UserPrivacySettingRuleRestrictChatMembers]
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowBots.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowBots.fromJson(json);
      case UserPrivacySettingRuleAllowPremiumUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowPremiumUsers.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictBots.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictBots.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        return const UserPrivacySettingRule();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserPrivacySettingRule copyWith() => const UserPrivacySettingRule();

  static const CONSTRUCTOR = 'userPrivacySettingRule';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {

  /// A rule to allow all users to do something
  const UserPrivacySettingRuleAllowAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowAll();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowAll copyWith() => const UserPrivacySettingRuleAllowAll();

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {

  /// A rule to allow all contacts of the user to do something
  const UserPrivacySettingRuleAllowContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowContacts();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowContacts copyWith() => const UserPrivacySettingRuleAllowContacts();

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowBots extends UserPrivacySettingRule {

  /// A rule to allow all bots to do something
  const UserPrivacySettingRuleAllowBots();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowBots.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowBots copyWith() => const UserPrivacySettingRuleAllowBots();

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowPremiumUsers extends UserPrivacySettingRule {

  /// A rule to allow all Premium Users to do something; currently, allowed only for userPrivacySettingAllowChatInvites
  const UserPrivacySettingRuleAllowPremiumUsers();
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowPremiumUsers.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleAllowPremiumUsers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowPremiumUsers copyWith() => const UserPrivacySettingRuleAllowPremiumUsers();

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowPremiumUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {

  /// A rule to allow certain specified users to do something
  const UserPrivacySettingRuleAllowUsers({
    required this.userIds,
  });
  
  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowUsers(
    userIds: json['user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleAllowUsers(
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {

  /// A rule to allow all members of certain specified basic groups and supergroups to doing something
  const UserPrivacySettingRuleAllowChatMembers({
    required this.chatIds,
  });
  
  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: json['chat_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": chatIds,
    };
  }
  
  @override
  UserPrivacySettingRuleAllowChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleAllowChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowChatMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {

  /// A rule to restrict all users from doing something
  const UserPrivacySettingRuleRestrictAll();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictAll();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictAll copyWith() => const UserPrivacySettingRuleRestrictAll();

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {

  /// A rule to restrict all contacts of the user from doing something
  const UserPrivacySettingRuleRestrictContacts();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictContacts();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictContacts copyWith() => const UserPrivacySettingRuleRestrictContacts();

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleRestrictBots extends UserPrivacySettingRule {

  /// A rule to restrict all bots from doing something
  const UserPrivacySettingRuleRestrictBots();
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictBots.fromJson(Map<String, dynamic> json) => const UserPrivacySettingRuleRestrictBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictBots copyWith() => const UserPrivacySettingRuleRestrictBots();

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {

  /// A rule to restrict all specified users from doing something
  const UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });
  
  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  final List<int> userIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictUsers(
    userIds: json['user_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictUsers copyWith({
    List<int>? userIds,
  }) => UserPrivacySettingRuleRestrictUsers(
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {

  /// A rule to restrict all members of specified basic groups and supergroups from doing something
  const UserPrivacySettingRuleRestrictChatMembers({
    required this.chatIds,
  });
  
  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  final List<int> chatIds;
  
  /// Parse from a json
  factory UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: json['chat_ids']?.cast<int>() ?? [],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": chatIds,
    };
  }
  
  @override
  UserPrivacySettingRuleRestrictChatMembers copyWith({
    List<int>? chatIds,
  }) => UserPrivacySettingRuleRestrictChatMembers(
    chatIds: chatIds ?? this.chatIds,
  );

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictChatMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
