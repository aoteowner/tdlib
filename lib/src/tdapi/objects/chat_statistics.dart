import '../tdapi.dart';

class ChatStatistics extends TdObject {
  /// Contains a detailed statistics about a chat
  const ChatStatistics();

  factory ChatStatistics.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatStatisticsSupergroup.CONSTRUCTOR:
        return ChatStatisticsSupergroup.fromJson(json);
      case ChatStatisticsChannel.CONSTRUCTOR:
        return ChatStatisticsChannel.fromJson(json);
      default:
        return const ChatStatistics();
    }
  }
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatStatistics copyWith() {
    return const ChatStatistics();
  }

  static const CONSTRUCTOR = 'chatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsSupergroup extends ChatStatistics {
  /// A detailed statistics about a supergroup chat
  const ChatStatisticsSupergroup({
    required this.period,
    required this.memberCount,
    required this.messageCount,
    required this.viewerCount,
    required this.senderCount,
    required this.memberCountGraph,
    required this.joinGraph,
    required this.joinBySourceGraph,
    required this.languageGraph,
    required this.messageContentGraph,
    required this.actionGraph,
    required this.dayGraph,
    required this.weekGraph,
    required this.topSenders,
    required this.topAdministrators,
    required this.topInviters,
    this.extra,
    this.clientId,
  });

  /// [period] A period to which the statistics applies
  final DateRange period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue memberCount;

  /// [messageCount] Number of messages sent to the chat
  final StatisticalValue messageCount;

  /// [viewerCount] Number of users who viewed messages in the chat
  final StatisticalValue viewerCount;

  /// [senderCount] Number of users who sent messages to the chat
  final StatisticalValue senderCount;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph joinGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per source
  final StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing distribution of active users per language
  final StatisticalGraph languageGraph;

  /// [messageContentGraph] A graph containing distribution of sent messages by content type
  final StatisticalGraph messageContentGraph;

  /// [actionGraph] A graph containing number of different actions in the chat
  final StatisticalGraph actionGraph;

  /// [dayGraph] A graph containing distribution of message views per hour
  final StatisticalGraph dayGraph;

  /// [weekGraph] A graph containing distribution of message views per day of week
  final StatisticalGraph weekGraph;

  /// [topSenders] List of users sent most messages in the last week
  final List<ChatStatisticsMessageSenderInfo> topSenders;

  /// [topAdministrators] List of most active administrators in the last week
  final List<ChatStatisticsAdministratorActionsInfo> topAdministrators;

  /// [topInviters] List of most active inviters of new members in the last week
  final List<ChatStatisticsInviterInfo> topInviters;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsSupergroup(
        period: DateRange.fromJson(json['period'] ?? {}),
        memberCount: StatisticalValue.fromJson(json['member_count'] ?? {}),
        messageCount: StatisticalValue.fromJson(json['message_count'] ?? {}),
        viewerCount: StatisticalValue.fromJson(json['viewer_count'] ?? {}),
        senderCount: StatisticalValue.fromJson(json['sender_count'] ?? {}),
        memberCountGraph:
            StatisticalGraph.fromJson(json['member_count_graph'] ?? {}),
        joinGraph: StatisticalGraph.fromJson(json['join_graph'] ?? {}),
        joinBySourceGraph:
            StatisticalGraph.fromJson(json['join_by_source_graph'] ?? {}),
        languageGraph: StatisticalGraph.fromJson(json['language_graph'] ?? {}),
        messageContentGraph:
            StatisticalGraph.fromJson(json['message_content_graph'] ?? {}),
        actionGraph: StatisticalGraph.fromJson(json['action_graph'] ?? {}),
        dayGraph: StatisticalGraph.fromJson(json['day_graph'] ?? {}),
        weekGraph: StatisticalGraph.fromJson(json['week_graph'] ?? {}),
        topSenders: json['top_senders'] == null
            ? <ChatStatisticsMessageSenderInfo>[]
            : (json['top_senders'] as List)
                .map((e) => ChatStatisticsMessageSenderInfo.fromJson(e ?? {}))
                .toList(),
        topAdministrators: json['top_administrators'] == null
            ? <ChatStatisticsAdministratorActionsInfo>[]
            : (json['top_administrators'] as List)
                .map((e) =>
                    ChatStatisticsAdministratorActionsInfo.fromJson(e ?? {}))
                .toList(),
        topInviters: json['top_inviters'] == null
            ? <ChatStatisticsInviterInfo>[]
            : (json['top_inviters'] as List)
                .map((e) => ChatStatisticsInviterInfo.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "period": period.toJson(),
      "member_count": memberCount.toJson(),
      "message_count": messageCount.toJson(),
      "viewer_count": viewerCount.toJson(),
      "sender_count": senderCount.toJson(),
      "member_count_graph": memberCountGraph.toJson(),
      "join_graph": joinGraph.toJson(),
      "join_by_source_graph": joinBySourceGraph.toJson(),
      "language_graph": languageGraph.toJson(),
      "message_content_graph": messageContentGraph.toJson(),
      "action_graph": actionGraph.toJson(),
      "day_graph": dayGraph.toJson(),
      "week_graph": weekGraph.toJson(),
      "top_senders": topSenders.map((e) => e.toJson()).toList(),
      "top_administrators": topAdministrators.map((e) => e.toJson()).toList(),
      "top_inviters": topInviters.map((e) => e.toJson()).toList(),
    };
  }

  @override
  ChatStatisticsSupergroup copyWith({
    DateRange? period,
    StatisticalValue? memberCount,
    StatisticalValue? messageCount,
    StatisticalValue? viewerCount,
    StatisticalValue? senderCount,
    StatisticalGraph? memberCountGraph,
    StatisticalGraph? joinGraph,
    StatisticalGraph? joinBySourceGraph,
    StatisticalGraph? languageGraph,
    StatisticalGraph? messageContentGraph,
    StatisticalGraph? actionGraph,
    StatisticalGraph? dayGraph,
    StatisticalGraph? weekGraph,
    List<ChatStatisticsMessageSenderInfo>? topSenders,
    List<ChatStatisticsAdministratorActionsInfo>? topAdministrators,
    List<ChatStatisticsInviterInfo>? topInviters,
    dynamic extra,
    int? clientId,
  }) {
    return ChatStatisticsSupergroup(
      period: period ?? this.period,
      memberCount: memberCount ?? this.memberCount,
      messageCount: messageCount ?? this.messageCount,
      viewerCount: viewerCount ?? this.viewerCount,
      senderCount: senderCount ?? this.senderCount,
      memberCountGraph: memberCountGraph ?? this.memberCountGraph,
      joinGraph: joinGraph ?? this.joinGraph,
      joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
      languageGraph: languageGraph ?? this.languageGraph,
      messageContentGraph: messageContentGraph ?? this.messageContentGraph,
      actionGraph: actionGraph ?? this.actionGraph,
      dayGraph: dayGraph ?? this.dayGraph,
      weekGraph: weekGraph ?? this.weekGraph,
      topSenders: topSenders ?? this.topSenders,
      topAdministrators: topAdministrators ?? this.topAdministrators,
      topInviters: topInviters ?? this.topInviters,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsChannel extends ChatStatistics {
  /// A detailed statistics about a channel chat
  const ChatStatisticsChannel({
    required this.period,
    required this.memberCount,
    required this.meanMessageViewCount,
    required this.meanMessageShareCount,
    required this.meanMessageReactionCount,
    required this.meanStoryViewCount,
    required this.meanStoryShareCount,
    required this.meanStoryReactionCount,
    required this.enabledNotificationsPercentage,
    required this.memberCountGraph,
    required this.joinGraph,
    required this.muteGraph,
    required this.viewCountByHourGraph,
    required this.viewCountBySourceGraph,
    required this.joinBySourceGraph,
    required this.languageGraph,
    required this.messageInteractionGraph,
    required this.messageReactionGraph,
    required this.storyInteractionGraph,
    required this.storyReactionGraph,
    required this.instantViewInteractionGraph,
    required this.recentInteractions,
    this.extra,
    this.clientId,
  });

  /// [period] A period to which the statistics applies
  final DateRange period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue memberCount;

  /// [meanMessageViewCount] Mean number of times the recently sent messages were viewed
  final StatisticalValue meanMessageViewCount;

  /// [meanMessageShareCount] Mean number of times the recently sent messages were shared
  final StatisticalValue meanMessageShareCount;

  /// [meanMessageReactionCount] Mean number of times reactions were added to the recently sent messages
  final StatisticalValue meanMessageReactionCount;

  /// [meanStoryViewCount] Mean number of times the recently posted stories were viewed
  final StatisticalValue meanStoryViewCount;

  /// [meanStoryShareCount] Mean number of times the recently posted stories were shared
  final StatisticalValue meanStoryShareCount;

  /// [meanStoryReactionCount] Mean number of times reactions were added to the recently posted stories
  final StatisticalValue meanStoryReactionCount;

  /// [enabledNotificationsPercentage] A percentage of users with enabled notifications for the chat; 0-100
  final double enabledNotificationsPercentage;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph joinGraph;

  /// [muteGraph] A graph containing number of members muted and unmuted the chat
  final StatisticalGraph muteGraph;

  /// [viewCountByHourGraph] A graph containing number of message views in a given hour in the last two weeks
  final StatisticalGraph viewCountByHourGraph;

  /// [viewCountBySourceGraph] A graph containing number of message views per source
  final StatisticalGraph viewCountBySourceGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per source
  final StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing number of users viewed chat messages per language
  final StatisticalGraph languageGraph;

  /// [messageInteractionGraph] A graph containing number of chat message views and shares
  final StatisticalGraph messageInteractionGraph;

  /// [messageReactionGraph] A graph containing number of reactions on messages
  final StatisticalGraph messageReactionGraph;

  /// [storyInteractionGraph] A graph containing number of story views and shares
  final StatisticalGraph storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of reactions on stories
  final StatisticalGraph storyReactionGraph;

  /// [instantViewInteractionGraph] A graph containing number of views of associated with the chat instant views
  final StatisticalGraph instantViewInteractionGraph;

  /// [recentInteractions] Detailed statistics about number of views and shares of recently sent messages and posted stories
  final List<ChatStatisticsInteractionInfo> recentInteractions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  factory ChatStatisticsChannel.fromJson(Map<String, dynamic> json) =>
      ChatStatisticsChannel(
        period: DateRange.fromJson(json['period'] ?? {}),
        memberCount: StatisticalValue.fromJson(json['member_count'] ?? {}),
        meanMessageViewCount:
            StatisticalValue.fromJson(json['mean_message_view_count'] ?? {}),
        meanMessageShareCount:
            StatisticalValue.fromJson(json['mean_message_share_count'] ?? {}),
        meanMessageReactionCount: StatisticalValue.fromJson(
            json['mean_message_reaction_count'] ?? {}),
        meanStoryViewCount:
            StatisticalValue.fromJson(json['mean_story_view_count'] ?? {}),
        meanStoryShareCount:
            StatisticalValue.fromJson(json['mean_story_share_count'] ?? {}),
        meanStoryReactionCount:
            StatisticalValue.fromJson(json['mean_story_reaction_count'] ?? {}),
        enabledNotificationsPercentage:
            json['enabled_notifications_percentage'] ?? 0,
        memberCountGraph:
            StatisticalGraph.fromJson(json['member_count_graph'] ?? {}),
        joinGraph: StatisticalGraph.fromJson(json['join_graph'] ?? {}),
        muteGraph: StatisticalGraph.fromJson(json['mute_graph'] ?? {}),
        viewCountByHourGraph:
            StatisticalGraph.fromJson(json['view_count_by_hour_graph'] ?? {}),
        viewCountBySourceGraph:
            StatisticalGraph.fromJson(json['view_count_by_source_graph'] ?? {}),
        joinBySourceGraph:
            StatisticalGraph.fromJson(json['join_by_source_graph'] ?? {}),
        languageGraph: StatisticalGraph.fromJson(json['language_graph'] ?? {}),
        messageInteractionGraph:
            StatisticalGraph.fromJson(json['message_interaction_graph'] ?? {}),
        messageReactionGraph:
            StatisticalGraph.fromJson(json['message_reaction_graph'] ?? {}),
        storyInteractionGraph:
            StatisticalGraph.fromJson(json['story_interaction_graph'] ?? {}),
        storyReactionGraph:
            StatisticalGraph.fromJson(json['story_reaction_graph'] ?? {}),
        instantViewInteractionGraph: StatisticalGraph.fromJson(
            json['instant_view_interaction_graph'] ?? {}),
        recentInteractions: json['recent_interactions'] == null
            ? <ChatStatisticsInteractionInfo>[]
            : (json['recent_interactions'] as List)
                .map((e) => ChatStatisticsInteractionInfo.fromJson(e ?? {}))
                .toList(),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "period": period.toJson(),
      "member_count": memberCount.toJson(),
      "mean_message_view_count": meanMessageViewCount.toJson(),
      "mean_message_share_count": meanMessageShareCount.toJson(),
      "mean_message_reaction_count": meanMessageReactionCount.toJson(),
      "mean_story_view_count": meanStoryViewCount.toJson(),
      "mean_story_share_count": meanStoryShareCount.toJson(),
      "mean_story_reaction_count": meanStoryReactionCount.toJson(),
      "enabled_notifications_percentage": enabledNotificationsPercentage,
      "member_count_graph": memberCountGraph.toJson(),
      "join_graph": joinGraph.toJson(),
      "mute_graph": muteGraph.toJson(),
      "view_count_by_hour_graph": viewCountByHourGraph.toJson(),
      "view_count_by_source_graph": viewCountBySourceGraph.toJson(),
      "join_by_source_graph": joinBySourceGraph.toJson(),
      "language_graph": languageGraph.toJson(),
      "message_interaction_graph": messageInteractionGraph.toJson(),
      "message_reaction_graph": messageReactionGraph.toJson(),
      "story_interaction_graph": storyInteractionGraph.toJson(),
      "story_reaction_graph": storyReactionGraph.toJson(),
      "instant_view_interaction_graph": instantViewInteractionGraph.toJson(),
      "recent_interactions": recentInteractions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  ChatStatisticsChannel copyWith({
    DateRange? period,
    StatisticalValue? memberCount,
    StatisticalValue? meanMessageViewCount,
    StatisticalValue? meanMessageShareCount,
    StatisticalValue? meanMessageReactionCount,
    StatisticalValue? meanStoryViewCount,
    StatisticalValue? meanStoryShareCount,
    StatisticalValue? meanStoryReactionCount,
    double? enabledNotificationsPercentage,
    StatisticalGraph? memberCountGraph,
    StatisticalGraph? joinGraph,
    StatisticalGraph? muteGraph,
    StatisticalGraph? viewCountByHourGraph,
    StatisticalGraph? viewCountBySourceGraph,
    StatisticalGraph? joinBySourceGraph,
    StatisticalGraph? languageGraph,
    StatisticalGraph? messageInteractionGraph,
    StatisticalGraph? messageReactionGraph,
    StatisticalGraph? storyInteractionGraph,
    StatisticalGraph? storyReactionGraph,
    StatisticalGraph? instantViewInteractionGraph,
    List<ChatStatisticsInteractionInfo>? recentInteractions,
    dynamic extra,
    int? clientId,
  }) {
    return ChatStatisticsChannel(
      period: period ?? this.period,
      memberCount: memberCount ?? this.memberCount,
      meanMessageViewCount: meanMessageViewCount ?? this.meanMessageViewCount,
      meanMessageShareCount:
          meanMessageShareCount ?? this.meanMessageShareCount,
      meanMessageReactionCount:
          meanMessageReactionCount ?? this.meanMessageReactionCount,
      meanStoryViewCount: meanStoryViewCount ?? this.meanStoryViewCount,
      meanStoryShareCount: meanStoryShareCount ?? this.meanStoryShareCount,
      meanStoryReactionCount:
          meanStoryReactionCount ?? this.meanStoryReactionCount,
      enabledNotificationsPercentage:
          enabledNotificationsPercentage ?? this.enabledNotificationsPercentage,
      memberCountGraph: memberCountGraph ?? this.memberCountGraph,
      joinGraph: joinGraph ?? this.joinGraph,
      muteGraph: muteGraph ?? this.muteGraph,
      viewCountByHourGraph: viewCountByHourGraph ?? this.viewCountByHourGraph,
      viewCountBySourceGraph:
          viewCountBySourceGraph ?? this.viewCountBySourceGraph,
      joinBySourceGraph: joinBySourceGraph ?? this.joinBySourceGraph,
      languageGraph: languageGraph ?? this.languageGraph,
      messageInteractionGraph:
          messageInteractionGraph ?? this.messageInteractionGraph,
      messageReactionGraph: messageReactionGraph ?? this.messageReactionGraph,
      storyInteractionGraph:
          storyInteractionGraph ?? this.storyInteractionGraph,
      storyReactionGraph: storyReactionGraph ?? this.storyReactionGraph,
      instantViewInteractionGraph:
          instantViewInteractionGraph ?? this.instantViewInteractionGraph,
      recentInteractions: recentInteractions ?? this.recentInteractions,
      extra: extra ?? this.extra,
      clientId: clientId ?? this.clientId,
    );
  }

  static const CONSTRUCTOR = 'chatStatisticsChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
