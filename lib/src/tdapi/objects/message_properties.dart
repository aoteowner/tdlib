import '../tdapi.dart';

class MessageProperties extends TdObject {

  /// Contains properties of a message and describes actions that can be done with the message right now
  const MessageProperties({
    required this.canBeCopiedToSecretChat,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBePaid,
    required this.canBePinned,
    required this.canBeReplied,
    required this.canBeRepliedInAnotherChat,
    required this.canBeSaved,
    required this.canBeSharedInStory,
    required this.canEditMedia,
    required this.canEditSchedulingState,
    required this.canGetEmbeddingCode,
    required this.canGetLink,
    required this.canGetMediaTimestampLinks,
    required this.canGetMessageThread,
    required this.canGetReadDate,
    required this.canGetStatistics,
    required this.canGetViewers,
    required this.canRecognizeSpeech,
    required this.canReportChat,
    required this.canReportReactions,
    required this.canReportSupergroupSpam,
    required this.canSetFactCheck,
    required this.needShowStatistics,
    this.extra,
    this.clientId,
  });
  
  /// [canBeCopiedToSecretChat] True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options
  final bool canBeCopiedToSecretChat;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all users using the method deleteMessages with revoke == true
  final bool canBeDeletedForAllUsers;

  /// [canBeEdited] True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup.. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message
  final bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded using inputMessageForwarded or forwardMessages
  final bool canBeForwarded;

  /// [canBePaid] True, if the message can be paid using inputInvoiceMessage
  final bool canBePaid;

  /// [canBePinned] True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage
  final bool canBePinned;

  /// [canBeReplied] True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage
  final bool canBeReplied;

  /// [canBeRepliedInAnotherChat] True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
  final bool canBeRepliedInAnotherChat;

  /// [canBeSaved] True, if content of the message can be saved locally or copied using inputMessageForwarded or forwardMessages with copy options
  final bool canBeSaved;

  /// [canBeSharedInStory] True, if the message can be shared in a story using inputStoryAreaTypeMessage
  final bool canBeSharedInStory;

  /// [canEditMedia] True, if the message can be edited using the method editMessageMedia
  final bool canEditMedia;

  /// [canEditSchedulingState] True, if scheduling state of the message can be edited
  final bool canEditSchedulingState;

  /// [canGetEmbeddingCode] True, if code for message embedding can be received using getMessageEmbeddingCode
  final bool canGetEmbeddingCode;

  /// [canGetLink] True, if a link can be generated for the message using getMessageLink
  final bool canGetLink;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink
  final bool canGetMediaTimestampLinks;

  /// [canGetMessageThread] True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// [canGetReadDate] True, if read date of the message can be received through getMessageReadDate
  final bool canGetReadDate;

  /// [canGetStatistics] True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards
  final bool canGetStatistics;

  /// [canGetViewers] True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// [canRecognizeSpeech] True, if speech can be recognized for the message through recognizeSpeech
  final bool canRecognizeSpeech;

  /// [canReportChat] True, if the message can be reported using reportChat
  final bool canReportChat;

  /// [canReportReactions] True, if reactions on the message can be reported through reportMessageReactions
  final bool canReportReactions;

  /// [canReportSupergroupSpam] True, if the message can be reported using reportSupergroupSpam
  final bool canReportSupergroupSpam;

  /// [canSetFactCheck] True, if fact check for the message can be changed through setMessageFactCheck
  final bool canSetFactCheck;

  /// [needShowStatistics] True, if message statistics must be available from context menu of the message
  final bool needShowStatistics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageProperties.fromJson(Map<String, dynamic> json) => MessageProperties(
    canBeCopiedToSecretChat: json['can_be_copied_to_secret_chat'] ?? false,
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] ?? false,
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] ?? false,
    canBeEdited: json['can_be_edited'] ?? false,
    canBeForwarded: json['can_be_forwarded'] ?? false,
    canBePaid: json['can_be_paid'] ?? false,
    canBePinned: json['can_be_pinned'] ?? false,
    canBeReplied: json['can_be_replied'] ?? false,
    canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'] ?? false,
    canBeSaved: json['can_be_saved'] ?? false,
    canBeSharedInStory: json['can_be_shared_in_story'] ?? false,
    canEditMedia: json['can_edit_media'] ?? false,
    canEditSchedulingState: json['can_edit_scheduling_state'] ?? false,
    canGetEmbeddingCode: json['can_get_embedding_code'] ?? false,
    canGetLink: json['can_get_link'] ?? false,
    canGetMediaTimestampLinks: json['can_get_media_timestamp_links'] ?? false,
    canGetMessageThread: json['can_get_message_thread'] ?? false,
    canGetReadDate: json['can_get_read_date'] ?? false,
    canGetStatistics: json['can_get_statistics'] ?? false,
    canGetViewers: json['can_get_viewers'] ?? false,
    canRecognizeSpeech: json['can_recognize_speech'] ?? false,
    canReportChat: json['can_report_chat'] ?? false,
    canReportReactions: json['can_report_reactions'] ?? false,
    canReportSupergroupSpam: json['can_report_supergroup_spam'] ?? false,
    canSetFactCheck: json['can_set_fact_check'] ?? false,
    needShowStatistics: json['need_show_statistics'] ?? false,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_be_copied_to_secret_chat": canBeCopiedToSecretChat,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_paid": canBePaid,
      "can_be_pinned": canBePinned,
      "can_be_replied": canBeReplied,
      "can_be_replied_in_another_chat": canBeRepliedInAnotherChat,
      "can_be_saved": canBeSaved,
      "can_be_shared_in_story": canBeSharedInStory,
      "can_edit_media": canEditMedia,
      "can_edit_scheduling_state": canEditSchedulingState,
      "can_get_embedding_code": canGetEmbeddingCode,
      "can_get_link": canGetLink,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "can_get_message_thread": canGetMessageThread,
      "can_get_read_date": canGetReadDate,
      "can_get_statistics": canGetStatistics,
      "can_get_viewers": canGetViewers,
      "can_recognize_speech": canRecognizeSpeech,
      "can_report_chat": canReportChat,
      "can_report_reactions": canReportReactions,
      "can_report_supergroup_spam": canReportSupergroupSpam,
      "can_set_fact_check": canSetFactCheck,
      "need_show_statistics": needShowStatistics,
    };
  }
  
  MessageProperties copyWith({
    bool? canBeCopiedToSecretChat,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBePaid,
    bool? canBePinned,
    bool? canBeReplied,
    bool? canBeRepliedInAnotherChat,
    bool? canBeSaved,
    bool? canBeSharedInStory,
    bool? canEditMedia,
    bool? canEditSchedulingState,
    bool? canGetEmbeddingCode,
    bool? canGetLink,
    bool? canGetMediaTimestampLinks,
    bool? canGetMessageThread,
    bool? canGetReadDate,
    bool? canGetStatistics,
    bool? canGetViewers,
    bool? canRecognizeSpeech,
    bool? canReportChat,
    bool? canReportReactions,
    bool? canReportSupergroupSpam,
    bool? canSetFactCheck,
    bool? needShowStatistics,
    dynamic extra,
    int? clientId,
  }) => MessageProperties(
    canBeCopiedToSecretChat: canBeCopiedToSecretChat ?? this.canBeCopiedToSecretChat,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBePaid: canBePaid ?? this.canBePaid,
    canBePinned: canBePinned ?? this.canBePinned,
    canBeReplied: canBeReplied ?? this.canBeReplied,
    canBeRepliedInAnotherChat: canBeRepliedInAnotherChat ?? this.canBeRepliedInAnotherChat,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    canBeSharedInStory: canBeSharedInStory ?? this.canBeSharedInStory,
    canEditMedia: canEditMedia ?? this.canEditMedia,
    canEditSchedulingState: canEditSchedulingState ?? this.canEditSchedulingState,
    canGetEmbeddingCode: canGetEmbeddingCode ?? this.canGetEmbeddingCode,
    canGetLink: canGetLink ?? this.canGetLink,
    canGetMediaTimestampLinks: canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
    canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
    canGetReadDate: canGetReadDate ?? this.canGetReadDate,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetViewers: canGetViewers ?? this.canGetViewers,
    canRecognizeSpeech: canRecognizeSpeech ?? this.canRecognizeSpeech,
    canReportChat: canReportChat ?? this.canReportChat,
    canReportReactions: canReportReactions ?? this.canReportReactions,
    canReportSupergroupSpam: canReportSupergroupSpam ?? this.canReportSupergroupSpam,
    canSetFactCheck: canSetFactCheck ?? this.canSetFactCheck,
    needShowStatistics: needShowStatistics ?? this.needShowStatistics,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageProperties';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
