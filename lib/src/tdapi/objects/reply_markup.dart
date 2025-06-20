import '../tdapi.dart';

class ReplyMarkup extends TdObject {
  /// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
  const ReplyMarkup();

  factory ReplyMarkup.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReplyMarkupRemoveKeyboard.CONSTRUCTOR:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupForceReply.CONSTRUCTOR:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupShowKeyboard.CONSTRUCTOR:
        return ReplyMarkupShowKeyboard.fromJson(json);
      case ReplyMarkupInlineKeyboard.CONSTRUCTOR:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      default:
        return const ReplyMarkup();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ReplyMarkup copyWith() {
    return const ReplyMarkup();
  }

  static const CONSTRUCTOR = 'replyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  /// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0 will be sent
  const ReplyMarkupRemoveKeyboard({
    required this.isPersonal,
  });

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users or the target user of a reply
  final bool isPersonal;

  factory ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupRemoveKeyboard(
        isPersonal: json['is_personal'] ?? false,
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": isPersonal,
    };
  }

  @override
  ReplyMarkupRemoveKeyboard copyWith({
    bool? isPersonal,
  }) {
    return ReplyMarkupRemoveKeyboard(
      isPersonal: isPersonal ?? this.isPersonal,
    );
  }

  static const CONSTRUCTOR = 'replyMarkupRemoveKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupForceReply extends ReplyMarkup {
  /// Instructs application to force a reply to this message
  const ReplyMarkupForceReply({
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [isPersonal] True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;

  factory ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupForceReply(
        isPersonal: json['is_personal'] ?? false,
        inputFieldPlaceholder: json['input_field_placeholder'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": isPersonal,
      "input_field_placeholder": inputFieldPlaceholder,
    };
  }

  @override
  ReplyMarkupForceReply copyWith({
    bool? isPersonal,
    String? inputFieldPlaceholder,
  }) {
    return ReplyMarkupForceReply(
      isPersonal: isPersonal ?? this.isPersonal,
      inputFieldPlaceholder:
          inputFieldPlaceholder ?? this.inputFieldPlaceholder,
    );
  }

  static const CONSTRUCTOR = 'replyMarkupForceReply';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupShowKeyboard extends ReplyMarkup {
  /// Contains a custom keyboard layout to quickly reply to bots
  const ReplyMarkupShowKeyboard({
    required this.rows,
    required this.isPersistent,
    required this.resizeKeyboard,
    required this.oneTime,
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [rows] A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// [isPersistent] True, if the keyboard is expected to always be shown when the ordinary keyboard is hidden
  final bool isPersistent;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard vertically
  final bool resizeKeyboard;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// [isPersonal] True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters
  final String inputFieldPlaceholder;

  factory ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupShowKeyboard(
        rows: json['rows'] == null
            ? <List<KeyboardButton>>[]
            : (json['rows'] as List)
                .map((e) => e == null
                    ? <KeyboardButton>[]
                    : (e as List)
                        .map((e) => KeyboardButton.fromJson(e ?? {}))
                        .toList())
                .toList(),
        isPersistent: json['is_persistent'] ?? false,
        resizeKeyboard: json['resize_keyboard'] ?? false,
        oneTime: json['one_time'] ?? false,
        isPersonal: json['is_personal'] ?? false,
        inputFieldPlaceholder: json['input_field_placeholder'] ?? '',
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "rows": rows,
      "is_persistent": isPersistent,
      "resize_keyboard": resizeKeyboard,
      "one_time": oneTime,
      "is_personal": isPersonal,
      "input_field_placeholder": inputFieldPlaceholder,
    };
  }

  @override
  ReplyMarkupShowKeyboard copyWith({
    List<List<KeyboardButton>>? rows,
    bool? isPersistent,
    bool? resizeKeyboard,
    bool? oneTime,
    bool? isPersonal,
    String? inputFieldPlaceholder,
  }) {
    return ReplyMarkupShowKeyboard(
      rows: rows ?? this.rows,
      isPersistent: isPersistent ?? this.isPersistent,
      resizeKeyboard: resizeKeyboard ?? this.resizeKeyboard,
      oneTime: oneTime ?? this.oneTime,
      isPersonal: isPersonal ?? this.isPersonal,
      inputFieldPlaceholder:
          inputFieldPlaceholder ?? this.inputFieldPlaceholder,
    );
  }

  static const CONSTRUCTOR = 'replyMarkupShowKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  /// Contains an inline keyboard layout
  const ReplyMarkupInlineKeyboard({
    required this.rows,
  });

  /// [rows] A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  factory ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupInlineKeyboard(
        rows: json['rows'] == null
            ? <List<InlineKeyboardButton>>[]
            : (json['rows'] as List)
                .map((e) => e == null
                    ? <InlineKeyboardButton>[]
                    : (e as List)
                        .map((e) => InlineKeyboardButton.fromJson(e ?? {}))
                        .toList())
                .toList(),
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "rows": rows,
    };
  }

  @override
  ReplyMarkupInlineKeyboard copyWith({
    List<List<InlineKeyboardButton>>? rows,
  }) {
    return ReplyMarkupInlineKeyboard(
      rows: rows ?? this.rows,
    );
  }

  static const CONSTRUCTOR = 'replyMarkupInlineKeyboard';

  @override
  String getConstructor() => CONSTRUCTOR;
}
