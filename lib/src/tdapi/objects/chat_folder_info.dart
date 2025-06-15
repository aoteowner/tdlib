import '../tdapi.dart';

class ChatFolderInfo extends TdObject {
  /// Contains basic information about a chat folder
  const ChatFolderInfo({
    required this.id,
    required this.name,
    required this.icon,
    required this.colorId,
    required this.isShareable,
    required this.hasMyInviteLinks,
    this.extra,
    this.clientId,
  });

  /// [id] Unique chat folder identifier
  final int id;

  /// [name] The name of the folder
  final ChatFolderName name;

  /// [icon] The chosen or default icon for the chat folder
  final ChatFolderIcon icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon; from -1 to 6. If -1, then color is disabled
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [hasMyInviteLinks] True, if the chat folder has invite links created by the current user
  final bool hasMyInviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatFolderInfo.fromJson(Map<String, dynamic> json) => ChatFolderInfo(
        id: json['id'] ?? 0,
        name: ChatFolderName.fromJson(json['name'] ?? {}),
        icon: ChatFolderIcon.fromJson(json['icon'] ?? {}),
        colorId: json['color_id'] ?? 0,
        isShareable: json['is_shareable'] ?? false,
        hasMyInviteLinks: json['has_my_invite_links'] ?? false,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "name": name.toJson(),
      "icon": icon.toJson(),
      "color_id": colorId,
      "is_shareable": isShareable,
      "has_my_invite_links": hasMyInviteLinks,
    };
  }

  ChatFolderInfo copyWith({
    int? id,
    ChatFolderName? name,
    ChatFolderIcon? icon,
    int? colorId,
    bool? isShareable,
    bool? hasMyInviteLinks,
    dynamic extra,
    int? clientId,
  }) {
    return ChatFolderInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      colorId: colorId ?? this.colorId,
      isShareable: isShareable ?? this.isShareable,
      hasMyInviteLinks: hasMyInviteLinks ?? this.hasMyInviteLinks,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatFolderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
