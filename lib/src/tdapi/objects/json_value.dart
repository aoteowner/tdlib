import '../tdapi.dart';

class JsonValue extends TdObject {
  /// Represents a JSON value
  const JsonValue();

  factory JsonValue.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case JsonValueNull.CONSTRUCTOR:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.CONSTRUCTOR:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.CONSTRUCTOR:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.CONSTRUCTOR:
        return JsonValueString.fromJson(json);
      case JsonValueArray.CONSTRUCTOR:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.CONSTRUCTOR:
        return JsonValueObject.fromJson(json);
      default:
        return const JsonValue();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  JsonValue copyWith() {
    return const JsonValue();
  }

  static const CONSTRUCTOR = 'jsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNull extends JsonValue {
  /// Represents a null JSON value
  const JsonValueNull({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueNull.fromJson(Map<String, dynamic> json) => JsonValueNull(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  JsonValueNull copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueNull(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueNull';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueBoolean extends JsonValue {
  /// Represents a boolean JSON value
  const JsonValueBoolean({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] The value
  final bool value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueBoolean.fromJson(Map<String, dynamic> json) =>
      JsonValueBoolean(
        value: json['value'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }

  @override
  JsonValueBoolean copyWith({
    bool? value,
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueBoolean(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueBoolean';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNumber extends JsonValue {
  /// Represents a numeric JSON value
  const JsonValueNumber({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] The value
  final double value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueNumber.fromJson(Map<String, dynamic> json) =>
      JsonValueNumber(
        value: json['value'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }

  @override
  JsonValueNumber copyWith({
    double? value,
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueNumber(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueString extends JsonValue {
  /// Represents a string JSON value
  const JsonValueString({
    required this.value,
    this.extra,
    this.clientId,
  });

  /// [value] The value
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueString.fromJson(Map<String, dynamic> json) =>
      JsonValueString(
        value: json['value'] ?? '',
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }

  @override
  JsonValueString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueString(
      value: value ?? this.value,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueString';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueArray extends JsonValue {
  /// Represents a JSON array
  const JsonValueArray({
    required this.values,
    this.extra,
    this.clientId,
  });

  /// [values] The list of array elements
  final List<JsonValue> values;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueArray.fromJson(Map<String, dynamic> json) => JsonValueArray(
        values: json['values'] == null
            ? <JsonValue>[]
            : (json['values'] as List)
                .map((e) => JsonValue.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "values": values.map((e) => e.toJson()).toList(),
    };
  }

  @override
  JsonValueArray copyWith({
    List<JsonValue>? values,
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueArray(
      values: values ?? this.values,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueArray';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueObject extends JsonValue {
  /// Represents a JSON object
  const JsonValueObject({
    required this.members,
    this.extra,
    this.clientId,
  });

  /// [members] The list of object members
  final List<JsonObjectMember> members;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory JsonValueObject.fromJson(Map<String, dynamic> json) =>
      JsonValueObject(
        members: json['members'] == null
            ? <JsonObjectMember>[]
            : (json['members'] as List)
                .map((e) => JsonObjectMember.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "members": members.map((e) => e.toJson()).toList(),
    };
  }

  @override
  JsonValueObject copyWith({
    List<JsonObjectMember>? members,
    dynamic extra,
    int? clientId,
  }) {
    return JsonValueObject(
      members: members ?? this.members,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'jsonValueObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
