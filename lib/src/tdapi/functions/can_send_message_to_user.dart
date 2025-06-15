import '../tdapi.dart';

class CanSendMessageToUser extends TdFunction {
  /// Check whether the current user can message another user or try to create a chat with them
  const CanSendMessageToUser({
    required this.userId,
    required this.onlyLocal,
  });

  /// [userId] Identifier of the other user
  final int userId;

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }

  CanSendMessageToUser copyWith({
    int? userId,
    bool? onlyLocal,
  }) {
    return CanSendMessageToUser(
      userId: userId ?? this.userId,
      onlyLocal: onlyLocal ?? this.onlyLocal,
    );
  }

  static const CONSTRUCTOR = 'canSendMessageToUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
