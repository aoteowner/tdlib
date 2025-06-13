import '../tdapi.dart';

class SharedUser extends TdObject {

  /// Contains information about a user shared with a bot
  const SharedUser({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.username,
    this.photo,
  });
  
  /// [userId] User identifier
  final int userId;

  /// [firstName] First name of the user; for bots only
  final String firstName;

  /// [lastName] Last name of the user; for bots only
  final String lastName;

  /// [username] Username of the user; for bots only
  final String username;

  /// [photo] Profile photo of the user; for bots only; may be null
  final Photo? photo;
  
  /// Parse from a json
  factory SharedUser.fromJson(Map<String, dynamic> json) => SharedUser(
    userId: json['user_id'] ?? 0,
    firstName: json['first_name'] ?? '',
    lastName: json['last_name'] ?? '',
    username: json['username'] ?? '',
    photo: Photo.fromJson(json['photo'] ?? {}),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "first_name": firstName,
      "last_name": lastName,
      "username": username,
      "photo": photo?.toJson(),
    };
  }
  
  SharedUser copyWith({
    int? userId,
    String? firstName,
    String? lastName,
    String? username,
    Photo? photo,
  }) => SharedUser(
    userId: userId ?? this.userId,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    username: username ?? this.username,
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'sharedUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
