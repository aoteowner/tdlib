import '../tdapi.dart';

class CollectibleItemType extends TdObject {
  /// Describes a collectible item that can be purchased at https://fragment.com
  const CollectibleItemType();

  factory CollectibleItemType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CollectibleItemTypeUsername.CONSTRUCTOR:
        return CollectibleItemTypeUsername.fromJson(json);
      case CollectibleItemTypePhoneNumber.CONSTRUCTOR:
        return CollectibleItemTypePhoneNumber.fromJson(json);
      default:
        return const CollectibleItemType();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  CollectibleItemType copyWith() {
    return const CollectibleItemType();
  }

  static const CONSTRUCTOR = 'collectibleItemType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CollectibleItemTypeUsername extends CollectibleItemType {
  /// A username
  const CollectibleItemTypeUsername({
    required this.username,
  });

  /// [username] The username
  final String username;

  factory CollectibleItemTypeUsername.fromJson(Map<String, dynamic> json) =>
      CollectibleItemTypeUsername(
        username: json['username'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
    };
  }

  @override
  CollectibleItemTypeUsername copyWith({
    String? username,
  }) {
    return CollectibleItemTypeUsername(
      username: username ?? this.username,
    );
  }

  static const CONSTRUCTOR = 'collectibleItemTypeUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CollectibleItemTypePhoneNumber extends CollectibleItemType {
  /// A phone number
  const CollectibleItemTypePhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] The phone number
  final String phoneNumber;

  factory CollectibleItemTypePhoneNumber.fromJson(Map<String, dynamic> json) =>
      CollectibleItemTypePhoneNumber(
        phoneNumber: json['phone_number'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
    };
  }

  @override
  CollectibleItemTypePhoneNumber copyWith({
    String? phoneNumber,
  }) {
    return CollectibleItemTypePhoneNumber(
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  static const CONSTRUCTOR = 'collectibleItemTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
