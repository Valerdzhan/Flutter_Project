// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.tasks.graphql.g.dart';

mixin TaskRouteFragmentMixin {
  TaskRouteFragmentMixin$Document document;
  String routeId;
  String stageId;
  bool isObsolete;
  @JsonKey(unknownEnumValue: TaskType.artemisUnknown)
  TaskType routeTaskType;
}
mixin DocumentDescriptorFragmentMixin {
  String id;
  int eventCount;
  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;
}
mixin TaskResolutionFragmentMixin {
  bool hasControl;
  String resolutionId;
  int order;
  @JsonKey(unknownEnumValue: ResolutionTaskType.artemisUnknown)
  ResolutionTaskType resolutionTaskType;
  bool isResponsible;
  String overseerId;
  String originatorId;
}
mixin InternalTaskFragmentMixin {
  String senderId;
  @JsonKey(unknownEnumValue: ProcessingTaskType.artemisUnknown)
  ProcessingTaskType internalTaskType;
}
mixin DecisionTaskFragmentMixin {
  DecisionTaskFragmentMixin$Sender sender;
  @JsonKey(unknownEnumValue: ProcessingTaskType.artemisUnknown)
  ProcessingTaskType decisionTaskType;
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItemFromJson(
          json);

  String contractorId;

  String contractorName;

  @override
  List<Object> get props => [contractorId, contractorName];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItemFromJson(
          json);

  String addressee;

  String addresseeName;

  String applicantId;

  String applicantExternalUserId;

  @override
  List<Object> get props =>
      [addressee, addresseeName, applicantId, applicantExternalUserId];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItemFromJson(
          json);

  List<String> incomingDocAddresseeIds;

  String sender;

  String incomingDocSenderId;

  String actor;

  @override
  List<Object> get props =>
      [incomingDocAddresseeIds, sender, incomingDocSenderId, actor];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItemFromJson(
          json);

  List<String> letterAddresseeIds;

  String senderId;

  String actorId;

  @override
  List<Object> get props => [letterAddresseeIds, senderId, actorId];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItemFromJson(
          json);

  String signerId;

  String actorId;

  String overseerId;

  @override
  List<Object> get props => [signerId, actorId, overseerId];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem
    extends UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItemFromJson(
          json);

  List<String> addressees;

  List<String> addresseeIds;

  String senderId;

  String actorId;

  @override
  List<Object> get props => [addressees, addresseeIds, senderId, actorId];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion();

  factory UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ContractListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem
            .fromJson(json);
      case r'HRRequestDocListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem
            .fromJson(json);
      case r'IncomingDocListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem
            .fromJson(json);
      case r'LetterListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem
            .fromJson(json);
      case r'LNAListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem
            .fromJson(json);
      case r'OutgoingDocListItem':
        return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem
            .fromJson(json);
      default:
    }
    return _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersionFromJson(
        json);
  }

  String id;

  String compileTitle;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;

  String title;

  int controlCardsCount;

  int controlCardsRemovedCount;

  String responderId;

  DateTime whenCreated;

  DateTime whenEdited;

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props => [
        id,
        compileTitle,
        type,
        title,
        controlCardsCount,
        controlCardsRemovedCount,
        responderId,
        whenCreated,
        whenEdited,
        $$typename
      ];
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ContractListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem)
            .toJson();
      case r'HRRequestDocListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem)
            .toJson();
      case r'IncomingDocListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem)
            .toJson();
      case r'LetterListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem)
            .toJson();
      case r'LNAListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem)
            .toJson();
      case r'OutgoingDocListItem':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem)
            .toJson();
      default:
    }
    return _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersionToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$Delegations with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$Delegations();

  factory UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$DelegationsFromJson(json);

  String userId;

  DateTime date;

  @override
  List<Object> get props => [userId, date];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$DelegationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$ReadAuditList with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items$ReadAuditList();

  factory UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$ReadAuditListFromJson(json);

  List<String> masters;

  String userId;

  DateTime whenRead;

  @override
  List<Object> get props => [masters, userId, whenRead];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$ReadAuditListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType
    extends UserTasks$DFSQuery$UserTasks$Items
    with EquatableMixin, TaskRouteFragmentMixin {
  UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType();

  factory UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemTypeFromJson(json);

  @override
  List<Object> get props =>
      [document, routeId, stageId, isObsolete, routeTaskType];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType
    extends UserTasks$DFSQuery$UserTasks$Items
    with EquatableMixin, TaskResolutionFragmentMixin {
  UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType();

  factory UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemTypeFromJson(
          json);

  @override
  List<Object> get props => [
        hasControl,
        resolutionId,
        order,
        resolutionTaskType,
        isResponsible,
        overseerId,
        originatorId
      ];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType
    extends UserTasks$DFSQuery$UserTasks$Items
    with EquatableMixin, InternalTaskFragmentMixin {
  UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType();

  factory UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemTypeFromJson(
          json);

  @override
  List<Object> get props => [senderId, internalTaskType];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType
    extends UserTasks$DFSQuery$UserTasks$Items
    with EquatableMixin, DecisionTaskFragmentMixin {
  UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType();

  factory UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType.fromJson(
          Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemTypeFromJson(
          json);

  @override
  List<Object> get props => [sender, decisionTaskType];
  Map<String, dynamic> toJson() =>
      _$UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks$Items with EquatableMixin {
  UserTasks$DFSQuery$UserTasks$Items();

  factory UserTasks$DFSQuery$UserTasks$Items.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'RouteTaskListItemType':
        return UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType
            .fromJson(json);
      case r'ResolutionTaskListItemType':
        return UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType
            .fromJson(json);
      case r'ProcessingTaskListItemType':
        return UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType
            .fromJson(json);
      case r'ForHRDecisionTaskListItemType':
        return UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType
            .fromJson(json);
      default:
    }
    return _$UserTasks$DFSQuery$UserTasks$ItemsFromJson(json);
  }

  String id;

  String actorId;

  UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion documentLastVersion;

  String state;

  String status;

  String statusEditorId;

  String note;

  String authorId;

  String editorId;

  List<String> delegatedActorIds;

  List<UserTasks$DFSQuery$UserTasks$Items$Delegations> delegations;

  DateTime dueDate;

  DateTime whenCreated;

  DateTime whenEdited;

  DateTime whenStatusEdited;

  DateTime whenSubmitted;

  bool isPersonalReview;

  bool hasChildren;

  List<UserTasks$DFSQuery$UserTasks$Items$ReadAuditList> readAuditList;

  bool resolutionsFinished;

  int subTaskCount;

  int subTaskRejectedCount;

  int subTaskSolvedCount;

  String lastActorPost;

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props => [
        id,
        actorId,
        documentLastVersion,
        state,
        status,
        statusEditorId,
        note,
        authorId,
        editorId,
        delegatedActorIds,
        delegations,
        dueDate,
        whenCreated,
        whenEdited,
        whenStatusEdited,
        whenSubmitted,
        isPersonalReview,
        hasChildren,
        readAuditList,
        resolutionsFinished,
        subTaskCount,
        subTaskRejectedCount,
        subTaskSolvedCount,
        lastActorPost,
        $$typename
      ];
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'RouteTaskListItemType':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType)
            .toJson();
      case r'ResolutionTaskListItemType':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType)
            .toJson();
      case r'ProcessingTaskListItemType':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType)
            .toJson();
      case r'ForHRDecisionTaskListItemType':
        return (this
                as UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType)
            .toJson();
      default:
    }
    return _$UserTasks$DFSQuery$UserTasks$ItemsToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery$UserTasks with EquatableMixin {
  UserTasks$DFSQuery$UserTasks();

  factory UserTasks$DFSQuery$UserTasks.fromJson(Map<String, dynamic> json) =>
      _$UserTasks$DFSQuery$UserTasksFromJson(json);

  int count;

  List<UserTasks$DFSQuery$UserTasks$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$UserTasks$DFSQuery$UserTasksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserTasks$DFSQuery with EquatableMixin {
  UserTasks$DFSQuery();

  factory UserTasks$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$UserTasks$DFSQueryFromJson(json);

  UserTasks$DFSQuery$UserTasks userTasks;

  @override
  List<Object> get props => [userTasks];
  Map<String, dynamic> toJson() => _$UserTasks$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaskRouteFragmentMixin$Document
    with EquatableMixin, DocumentDescriptorFragmentMixin {
  TaskRouteFragmentMixin$Document();

  factory TaskRouteFragmentMixin$Document.fromJson(Map<String, dynamic> json) =>
      _$TaskRouteFragmentMixin$DocumentFromJson(json);

  @override
  List<Object> get props => [id, eventCount, type];
  Map<String, dynamic> toJson() =>
      _$TaskRouteFragmentMixin$DocumentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DecisionTaskFragmentMixin$Sender with EquatableMixin {
  DecisionTaskFragmentMixin$Sender();

  factory DecisionTaskFragmentMixin$Sender.fromJson(
          Map<String, dynamic> json) =>
      _$DecisionTaskFragmentMixin$SenderFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$DecisionTaskFragmentMixin$SenderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputUserTaskSortFieldEnumType with EquatableMixin {
  SortInputUserTaskSortFieldEnumType({this.field, this.isDesc});

  factory SortInputUserTaskSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputUserTaskSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: UserTaskSortFieldEnumType.artemisUnknown)
  UserTaskSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputUserTaskSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserTasksAttributeSearchType with EquatableMixin {
  UserTasksAttributeSearchType(
      {this.actor,
      this.taskTypes,
      this.documentTypeFilter,
      this.hideWithChildren,
      this.withChildrenDone,
      this.withChildrenOverdue,
      this.showCompletedTasks,
      this.showCompletedTasksDays,
      this.showRejectedTasks,
      this.showRejectedTasksDays,
      this.hideDelegatedTasks,
      this.showObsoleteTasks,
      this.withChildrenRejected,
      this.withTasksOnControl,
      this.onlyPreparedTasks,
      this.onlyOnControlTasks,
      this.contains,
      this.isPersonalReview});

  factory UserTasksAttributeSearchType.fromJson(Map<String, dynamic> json) =>
      _$UserTasksAttributeSearchTypeFromJson(json);

  String actor;

  List<AllTaskTypeEnumType> taskTypes;

  List<DocumentType> documentTypeFilter;

  bool hideWithChildren;

  bool withChildrenDone;

  bool withChildrenOverdue;

  bool showCompletedTasks;

  int showCompletedTasksDays;

  bool showRejectedTasks;

  int showRejectedTasksDays;

  bool hideDelegatedTasks;

  bool showObsoleteTasks;

  bool withChildrenRejected;

  bool withTasksOnControl;

  bool onlyPreparedTasks;

  bool onlyOnControlTasks;

  String contains;

  bool isPersonalReview;

  @override
  List<Object> get props => [
        actor,
        taskTypes,
        documentTypeFilter,
        hideWithChildren,
        withChildrenDone,
        withChildrenOverdue,
        showCompletedTasks,
        showCompletedTasksDays,
        showRejectedTasks,
        showRejectedTasksDays,
        hideDelegatedTasks,
        showObsoleteTasks,
        withChildrenRejected,
        withTasksOnControl,
        onlyPreparedTasks,
        onlyOnControlTasks,
        contains,
        isPersonalReview
      ];
  Map<String, dynamic> toJson() => _$UserTasksAttributeSearchTypeToJson(this);
}

enum AllTaskTypeEnumType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("AGREEMENT")
  agreement,
  @JsonValue("SIGNING")
  signing,
  @JsonValue("APPROVAL")
  approval,
  @JsonValue("REGISTRATION")
  registration,
  @JsonValue("FOR_PERFORMANCE")
  forPerformance,
  @JsonValue("FOR_CONSIDERATION")
  forConsideration,
  @JsonValue("FOR_AGREEMENT")
  forAgreement,
  @JsonValue("FOR_INFORMATION")
  forInformation,
  @JsonValue("FOR_INCOMING")
  forIncoming,
  @JsonValue("FOR_OUTCOMING")
  forOutcoming,
  @JsonValue("FOR_INTERNAL_USE")
  forInternalUse,
  @JsonValue("FOR_NORMO_CONTROL")
  forNormoControl,
  @JsonValue("NORMATIVE_CONTROL")
  normativeControl,
  @JsonValue("FOR_HR_DECISION")
  forHrDecision,
  @JsonValue("FOR_IMPLEMENTATION")
  forImplementation,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum DocumentType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("CONTRACT")
  contract,
  @JsonValue("TAX_EXPERTISE")
  taxExpertise,
  @JsonValue("LETTER")
  letter,
  @JsonValue("INCOMING_DOC")
  incomingDoc,
  @JsonValue("OUTGOING_DOC")
  outgoingDoc,
  @JsonValue("CONTROL_CARD")
  controlCard,
  @JsonValue("REQUEST_TO_HIRE")
  requestToHire,
  @JsonValue("TRANSFER_REQUEST")
  transferRequest,
  @JsonValue("REQUEST_FOR_DISMISSAL")
  requestForDismissal,
  @JsonValue("CANCELLATION_REQUEST_FOR_DISMISSAL")
  cancellationRequestForDismissal,
  @JsonValue("ORDER")
  order,
  @JsonValue("DIRECTIVE")
  directive,
  @JsonValue("GENERIC_REQUEST")
  genericRequest,
  @JsonValue("MASS_MAIL")
  massMail,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum ProcessingTaskType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("FOR_INCOMING")
  forIncoming,
  @JsonValue("FOR_OUTCOMING")
  forOutcoming,
  @JsonValue("FOR_INTERNAL_USE")
  forInternalUse,
  @JsonValue("FOR_HR_DECISION")
  forHrDecision,
  @JsonValue("FOR_IMPLEMENTATION")
  forImplementation,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum ResolutionTaskType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("FOR_PERFORMANCE")
  forPerformance,
  @JsonValue("FOR_CONSIDERATION")
  forConsideration,
  @JsonValue("FOR_AGREEMENT")
  forAgreement,
  @JsonValue("FOR_INFORMATION")
  forInformation,
  @JsonValue("FOR_TAX_EXPERTISE")
  forTaxExpertise,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum TaskType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("AGREEMENT")
  agreement,
  @JsonValue("SIGNING")
  signing,
  @JsonValue("APPROVAL")
  approval,
  @JsonValue("REGISTRATION")
  registration,
  @JsonValue("NORMATIVE_CONTROL")
  normativeControl,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum UserTaskSortFieldEnumType {
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("dueDate")
  dueDate,
  @JsonValue("status")
  status,
  @JsonValue("type")
  type,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class UserTasksArguments extends JsonSerializable with EquatableMixin {
  UserTasksArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory UserTasksArguments.fromJson(Map<String, dynamic> json) =>
      _$UserTasksArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputUserTaskSortFieldEnumType sort;

  final UserTasksAttributeSearchType attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$UserTasksArgumentsToJson(this);
}

class UserTasksQuery
    extends GraphQLQuery<UserTasks$DFSQuery, UserTasksArguments> {
  UserTasksQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'userTasks'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'skip')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'limit')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'sort')),
              type: NamedTypeNode(
                  name: NameNode(value: 'SortInput_UserTaskSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'UserTasksAttributeSearchType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'userTasks'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'skip'),
                    value: VariableNode(name: NameNode(value: 'skip'))),
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: VariableNode(name: NameNode(value: 'limit'))),
                ArgumentNode(
                    name: NameNode(value: 'sort'),
                    value: VariableNode(name: NameNode(value: 'sort'))),
                ArgumentNode(
                    name: NameNode(value: 'attributeSearch'),
                    value:
                        VariableNode(name: NameNode(value: 'attributeSearch')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'actorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentListItem'),
                          alias: NameNode(value: 'documentLastVersion'),
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'compileTitle'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'documentType'),
                                alias: NameNode(value: 'type'),
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'title'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'controlCardsCount'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name:
                                    NameNode(value: 'controlCardsRemovedCount'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'responderId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'whenCreated'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'whenEdited'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name:
                                            NameNode(value: 'ContractListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'contractorId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'contractorName'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name: NameNode(
                                            value: 'HRRequestDocListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'addressee'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'addresseeName'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'applicantId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(
                                          value: 'applicantExternalUserId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name: NameNode(
                                            value: 'IncomingDocListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'addresseeIds'),
                                      alias: NameNode(
                                          value: 'incomingDocAddresseeIds'),
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'sender'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'senderId'),
                                      alias: NameNode(
                                          value: 'incomingDocSenderId'),
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'actor'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name: NameNode(value: 'LetterListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'addresseeIds'),
                                      alias:
                                          NameNode(value: 'letterAddresseeIds'),
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'senderId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'actorId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name: NameNode(value: 'LNAListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'signerId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'actorId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'overseerId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            InlineFragmentNode(
                                typeCondition: TypeConditionNode(
                                    on: NamedTypeNode(
                                        name: NameNode(
                                            value: 'OutgoingDocListItem'),
                                        isNonNull: false)),
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'addressees'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'addresseeIds'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'senderId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'actorId'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
                            FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'state'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'statusEditorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'note'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'authorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'editorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'delegatedActorIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'delegations'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'userId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'date'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'dueDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenCreated'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenEdited'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenStatusEdited'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenSubmitted'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isPersonalReview'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hasChildren'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'readAuditList'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'masters'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'userId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'whenRead'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'resolutionsFinished'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'subTaskCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'subTaskRejectedCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'subTaskSolvedCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lastActorPost'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name:
                                      NameNode(value: 'RouteTaskListItemType'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'taskRouteFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(
                                      value: 'ResolutionTaskListItemType'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'taskResolutionFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(
                                      value: 'ProcessingTaskListItemType'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'internalTaskFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(
                                      value: 'ForHRDecisionTaskListItemType'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'decisionTaskFragment'),
                                directives: [])
                          ])),
                      FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'taskRouteFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'RouteTaskListItemType'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'document'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'documentDescriptorFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'routeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'stageId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isObsolete'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'taskType'),
              alias: NameNode(value: 'routeTaskType'),
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'documentDescriptorFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'DocumentDescriptor'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'eventCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'taskResolutionFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ResolutionTaskListItemType'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'hasControl'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'resolutionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'order'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'taskType'),
              alias: NameNode(value: 'resolutionTaskType'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isResponsible'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'overseerId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'originatorId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'internalTaskFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ProcessingTaskListItemType'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'senderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'taskType'),
              alias: NameNode(value: 'internalTaskType'),
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'decisionTaskFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ForHRDecisionTaskListItemType'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'sender'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'firstName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'lastName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'patronymic'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'personalIdentifier'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'taskType'),
              alias: NameNode(value: 'decisionTaskType'),
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'userTasks';

  @override
  final UserTasksArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UserTasks$DFSQuery parse(Map<String, dynamic> json) =>
      UserTasks$DFSQuery.fromJson(json);
}
