part of '../tdapi.dart';

class ReactionUnavailabilityReason extends TdObject {

  /// Describes why the current user can't add reactions to the message, despite some other users can
  const ReactionUnavailabilityReason();
  
  /// a ReactionUnavailabilityReason return type can be :
  /// * [ReactionUnavailabilityReasonAnonymousAdministrator]
  /// * [ReactionUnavailabilityReasonGuest]
  factory ReactionUnavailabilityReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReactionUnavailabilityReasonAnonymousAdministrator.CONSTRUCTOR:
        return ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(json);
      case ReactionUnavailabilityReasonGuest.CONSTRUCTOR:
        return ReactionUnavailabilityReasonGuest.fromJson(json);
      default:
        return const ReactionUnavailabilityReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ReactionUnavailabilityReason copyWith() => const ReactionUnavailabilityReason();

  static const CONSTRUCTOR = 'reactionUnavailabilityReason';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReactionUnavailabilityReasonAnonymousAdministrator extends ReactionUnavailabilityReason {

  /// The user is an anonymous administrator in the supergroup, but isn't a creator of it, so they can't vote on behalf of the supergroup
  const ReactionUnavailabilityReasonAnonymousAdministrator();
  
  /// Parse from a json
  factory ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(Map<String, dynamic> json) => const ReactionUnavailabilityReasonAnonymousAdministrator();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ReactionUnavailabilityReasonAnonymousAdministrator copyWith() => const ReactionUnavailabilityReasonAnonymousAdministrator();

  static const CONSTRUCTOR = 'reactionUnavailabilityReasonAnonymousAdministrator';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ReactionUnavailabilityReasonGuest extends ReactionUnavailabilityReason {

  /// The user isn't a member of the supergroup and can't send messages and reactions there without joining
  const ReactionUnavailabilityReasonGuest();
  
  /// Parse from a json
  factory ReactionUnavailabilityReasonGuest.fromJson(Map<String, dynamic> json) => const ReactionUnavailabilityReasonGuest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ReactionUnavailabilityReasonGuest copyWith() => const ReactionUnavailabilityReasonGuest();

  static const CONSTRUCTOR = 'reactionUnavailabilityReasonGuest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
