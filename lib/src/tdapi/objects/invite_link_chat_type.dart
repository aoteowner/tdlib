import '../tdapi.dart';

class InviteLinkChatType extends TdObject {

  /// Describes the type of chat to which points an invite link
  const InviteLinkChatType();
  
  /// a InviteLinkChatType return type can be :
  /// * [InviteLinkChatTypeBasicGroup]
  /// * [InviteLinkChatTypeSupergroup]
  /// * [InviteLinkChatTypeChannel]
  factory InviteLinkChatType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InviteLinkChatTypeBasicGroup.CONSTRUCTOR:
        return InviteLinkChatTypeBasicGroup.fromJson(json);
      case InviteLinkChatTypeSupergroup.CONSTRUCTOR:
        return InviteLinkChatTypeSupergroup.fromJson(json);
      case InviteLinkChatTypeChannel.CONSTRUCTOR:
        return InviteLinkChatTypeChannel.fromJson(json);
      default:
        return const InviteLinkChatType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InviteLinkChatType copyWith() => const InviteLinkChatType();

  static const CONSTRUCTOR = 'inviteLinkChatType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteLinkChatTypeBasicGroup extends InviteLinkChatType {

  /// The link is an invite link for a basic group
  const InviteLinkChatTypeBasicGroup();
  
  /// Parse from a json
  factory InviteLinkChatTypeBasicGroup.fromJson(Map<String, dynamic> json) => const InviteLinkChatTypeBasicGroup();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteLinkChatTypeBasicGroup copyWith() => const InviteLinkChatTypeBasicGroup();

  static const CONSTRUCTOR = 'inviteLinkChatTypeBasicGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteLinkChatTypeSupergroup extends InviteLinkChatType {

  /// The link is an invite link for a supergroup
  const InviteLinkChatTypeSupergroup();
  
  /// Parse from a json
  factory InviteLinkChatTypeSupergroup.fromJson(Map<String, dynamic> json) => const InviteLinkChatTypeSupergroup();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteLinkChatTypeSupergroup copyWith() => const InviteLinkChatTypeSupergroup();

  static const CONSTRUCTOR = 'inviteLinkChatTypeSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InviteLinkChatTypeChannel extends InviteLinkChatType {

  /// The link is an invite link for a channel
  const InviteLinkChatTypeChannel();
  
  /// Parse from a json
  factory InviteLinkChatTypeChannel.fromJson(Map<String, dynamic> json) => const InviteLinkChatTypeChannel();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  InviteLinkChatTypeChannel copyWith() => const InviteLinkChatTypeChannel();

  static const CONSTRUCTOR = 'inviteLinkChatTypeChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
