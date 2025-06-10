part of '../tdapi.dart';

class AllowUnpaidMessagesFromUser extends TdFunction {

  /// Allows the specified user to send unpaid private messages to the current user by adding a rule to userPrivacySettingAllowUnpaidMessages
  const AllowUnpaidMessagesFromUser({
    required this.userId,
    required this.refundPayments,
  });
  
  /// [userId] Identifier of the user
  final int userId;

  /// [refundPayments] Pass true to refund the user previously paid messages
  final bool refundPayments;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "refund_payments": refundPayments,
      "@extra": extra,
    };
  }
  
  AllowUnpaidMessagesFromUser copyWith({
    int? userId,
    bool? refundPayments,
  }) => AllowUnpaidMessagesFromUser(
    userId: userId ?? this.userId,
    refundPayments: refundPayments ?? this.refundPayments,
  );

  static const CONSTRUCTOR = 'allowUnpaidMessagesFromUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
