import '../tdapi.dart';

class LogStream extends TdObject {
  /// Describes a stream to which TDLib internal log is written
  const LogStream();

  factory LogStream.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case LogStreamDefault.CONSTRUCTOR:
        return LogStreamDefault.fromJson(json);
      case LogStreamFile.CONSTRUCTOR:
        return LogStreamFile.fromJson(json);
      case LogStreamEmpty.CONSTRUCTOR:
        return LogStreamEmpty.fromJson(json);
      default:
        return const LogStream();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  LogStream copyWith() {
    return const LogStream();
  }

  static const CONSTRUCTOR = 'logStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamDefault extends LogStream {
  /// The log is written to stderr or an OS specific log
  const LogStreamDefault({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LogStreamDefault.fromJson(Map<String, dynamic> json) =>
      LogStreamDefault(
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
  LogStreamDefault copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return LogStreamDefault(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'logStreamDefault';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamFile extends LogStream {
  /// The log is written to a file
  const LogStreamFile({
    required this.path,
    required this.maxFileSize,
    required this.redirectStderr,
    this.extra,
    this.clientId,
  });

  /// [path] Path to the file to where the internal TDLib log will be written
  final String path;

  /// [maxFileSize] The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes
  final int maxFileSize;

  /// [redirectStderr] Pass true to additionally redirect stderr to the log file. Ignored on Windows
  final bool redirectStderr;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LogStreamFile.fromJson(Map<String, dynamic> json) => LogStreamFile(
        path: json['path'] ?? '',
        maxFileSize: json['max_file_size'] ?? 0,
        redirectStderr: json['redirect_stderr'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "path": path,
      "max_file_size": maxFileSize,
      "redirect_stderr": redirectStderr,
    };
  }

  @override
  LogStreamFile copyWith({
    String? path,
    int? maxFileSize,
    bool? redirectStderr,
    dynamic extra,
    int? clientId,
  }) {
    return LogStreamFile(
      path: path ?? this.path,
      maxFileSize: maxFileSize ?? this.maxFileSize,
      redirectStderr: redirectStderr ?? this.redirectStderr,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'logStreamFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamEmpty extends LogStream {
  /// The log is written nowhere
  const LogStreamEmpty({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory LogStreamEmpty.fromJson(Map<String, dynamic> json) => LogStreamEmpty(
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
  LogStreamEmpty copyWith({
    dynamic extra,
    int? clientId,
  }) {
    return LogStreamEmpty(
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'logStreamEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}
