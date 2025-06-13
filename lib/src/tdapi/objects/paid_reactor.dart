import '../tdapi.dart';

class PaidReactor extends TdObject {

  /// Contains information about a user that added paid reactions
  const PaidReactor({
    this.senderId,
    required this.starCount,
    required this.isTop,
    required this.isMe,
    required this.isAnonymous,
  });
  
  /// [senderId] Identifier of the user or chat that added the reactions; may be null for anonymous reactors that aren't the current user
  final MessageSender? senderId;

  /// [starCount] Number of Telegram Stars added
  final int starCount;

  /// [isTop] True, if the reactor is one of the most active reactors; may be false if the reactor is the current user
  final bool isTop;

  /// [isMe] True, if the paid reaction was added by the current user
  final bool isMe;

  /// [isAnonymous] True, if the reactor is anonymous
  final bool isAnonymous;
  
  /// Parse from a json
  factory PaidReactor.fromJson(Map<String, dynamic> json) => PaidReactor(
    senderId: MessageSender.fromJson(json['sender_id'] ?? {}),
    starCount: json['star_count'] ?? 0,
    isTop: json['is_top'] ?? false,
    isMe: json['is_me'] ?? false,
    isAnonymous: json['is_anonymous'] ?? false,
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_id": senderId?.toJson(),
      "star_count": starCount,
      "is_top": isTop,
      "is_me": isMe,
      "is_anonymous": isAnonymous,
    };
  }
  
  PaidReactor copyWith({
    MessageSender? senderId,
    int? starCount,
    bool? isTop,
    bool? isMe,
    bool? isAnonymous,
  }) => PaidReactor(
    senderId: senderId ?? this.senderId,
    starCount: starCount ?? this.starCount,
    isTop: isTop ?? this.isTop,
    isMe: isMe ?? this.isMe,
    isAnonymous: isAnonymous ?? this.isAnonymous,
  );

  static const CONSTRUCTOR = 'paidReactor';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
