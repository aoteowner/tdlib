import '../tdapi.dart';

class UserPrivacySettingRules extends TdObject {
  /// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed
  const UserPrivacySettingRules({
    required this.rules,
    this.extra,
    this.clientId,
  });

  /// [rules] A list of rules
  final List<UserPrivacySettingRule> rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory UserPrivacySettingRules.fromJson(Map<String, dynamic> json) =>
      UserPrivacySettingRules(
        rules: json['rules'] == null
            ? <UserPrivacySettingRule>[]
            : (json['rules'] as List)
                .map((e) => UserPrivacySettingRule.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "rules": rules.map((e) => e.toJson()).toList(),
    };
  }

  UserPrivacySettingRules copyWith({
    List<UserPrivacySettingRule>? rules,
    dynamic extra,
    int? clientId,
  }) {
    return UserPrivacySettingRules(
      rules: rules ?? this.rules,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'userPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
