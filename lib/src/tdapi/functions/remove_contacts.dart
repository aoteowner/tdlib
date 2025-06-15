import '../tdapi.dart';

class RemoveContacts extends TdFunction {
  /// Removes users from the contact list
  const RemoveContacts({
    required this.userIds,
  });

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds,
      "@extra": extra,
    };
  }

  RemoveContacts copyWith({
    List<int>? userIds,
  }) {
    return RemoveContacts(
      userIds: userIds ?? this.userIds,
    );
  }

  static const CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
