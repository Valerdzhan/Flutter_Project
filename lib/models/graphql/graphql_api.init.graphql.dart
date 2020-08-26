// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.init.graphql.g.dart';

mixin UserItemFragmentWithSubsMixin {
  List<UserItemFragmentWithSubsMixin$Slaves> slaves;
  List<UserItemFragmentWithSubsMixin$Masters> masters;
}
mixin SubstitutionFragmentMixin {
  String substitutionId;
  String masterId;
  String slaveId;
  SubstitutionFragmentMixin$Period period;
  bool asAssistant;
  String note;
}
mixin UserItemFragmentMixin {
  String id;
  String displayName;
  String jobTitle;
  String orgUnit;
  String department;
  String photoUrl;
  String identity;
  String email;
  DateTime lastActivity;
  int activityCount;
  bool isRetired;
  DateTime retiredDate;
  String phone;
  UserItemFragmentMixin$Vacation vacation;
  String userAgent;
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$CurrentUser
    with EquatableMixin, UserItemFragmentWithSubsMixin, UserItemFragmentMixin {
  Init$DFSQuery$CurrentUser();

  factory Init$DFSQuery$CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$CurrentUserFromJson(json);

  String personalIdentifier;

  @override
  List<Object> get props => [
        slaves,
        masters,
        id,
        displayName,
        jobTitle,
        orgUnit,
        department,
        photoUrl,
        identity,
        email,
        lastActivity,
        activityCount,
        isRetired,
        retiredDate,
        phone,
        vacation,
        userAgent,
        personalIdentifier
      ];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$CurrentUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$AllEventGroups with EquatableMixin {
  Init$DFSQuery$AllEventGroups();

  factory Init$DFSQuery$AllEventGroups.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$AllEventGroupsFromJson(json);

  String id;

  String title;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  List<String> events;

  @override
  List<Object> get props => [id, title, documentType, events];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$AllEventGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$AllRouteOption$RouteOptions with EquatableMixin {
  Init$DFSQuery$AllRouteOption$RouteOptions();

  factory Init$DFSQuery$AllRouteOption$RouteOptions.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$AllRouteOption$RouteOptionsFromJson(json);

  bool defaultValue;

  String description;

  String optionId;

  @override
  List<Object> get props => [defaultValue, description, optionId];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$AllRouteOption$RouteOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$AllRouteOption with EquatableMixin {
  Init$DFSQuery$AllRouteOption();

  factory Init$DFSQuery$AllRouteOption.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$AllRouteOptionFromJson(json);

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  List<Init$DFSQuery$AllRouteOption$RouteOptions> routeOptions;

  @override
  List<Object> get props => [documentType, routeOptions];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$AllRouteOptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$OrgUnits with EquatableMixin {
  Init$DFSQuery$OrgUnits();

  factory Init$DFSQuery$OrgUnits.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$OrgUnitsFromJson(json);

  int id;

  int parentId;

  String name;

  String shortName;

  @override
  List<Object> get props => [id, parentId, name, shortName];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$OrgUnitsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$ServerSettingsQueryAPI with EquatableMixin {
  Init$DFSQuery$ServerSettingsQueryAPI();

  factory Init$DFSQuery$ServerSettingsQueryAPI.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$ServerSettingsQueryAPIFromJson(json);

  String maintenanceMessage;

  @override
  List<Object> get props => [maintenanceMessage];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$ServerSettingsQueryAPIToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$AllGroups with EquatableMixin {
  Init$DFSQuery$AllGroups();

  factory Init$DFSQuery$AllGroups.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$AllGroupsFromJson(json);

  String id;

  String name;

  List<String> userIds;

  String authorId;

  String editorId;

  DateTime whenCreated;

  DateTime whenEdited;

  @override
  List<Object> get props =>
      [id, name, userIds, authorId, editorId, whenCreated, whenEdited];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$AllGroupsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$ServerInfo$AllUsers with EquatableMixin {
  Init$DFSQuery$ServerInfo$AllUsers();

  factory Init$DFSQuery$ServerInfo$AllUsers.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$ServerInfo$AllUsersFromJson(json);

  String d;

  String i;

  bool v;

  bool r;

  DateTime l;

  String a;

  @override
  List<Object> get props => [d, i, v, r, l, a];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$ServerInfo$AllUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$ServerInfo with EquatableMixin {
  Init$DFSQuery$ServerInfo();

  factory Init$DFSQuery$ServerInfo.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQuery$ServerInfoFromJson(json);

  List<Init$DFSQuery$ServerInfo$AllUsers> allUsers;

  @override
  List<Object> get props => [allUsers];
  Map<String, dynamic> toJson() => _$Init$DFSQuery$ServerInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$UserSettingsQueryAPI$UserSettings with EquatableMixin {
  Init$DFSQuery$UserSettingsQueryAPI$UserSettings();

  factory Init$DFSQuery$UserSettingsQueryAPI$UserSettings.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$UserSettingsQueryAPI$UserSettingsFromJson(json);

  bool isPrintBtnResolutionActive;

  bool isIncomingNumberAndDatePDFInFileEnabled;

  bool isPrintReportEnabled;

  @override
  List<Object> get props => [
        isPrintBtnResolutionActive,
        isIncomingNumberAndDatePDFInFileEnabled,
        isPrintReportEnabled
      ];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$UserSettingsQueryAPI$UserSettingsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies with EquatableMixin {
  Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies();

  factory Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifiesFromJson(json);

  String comment;

  String hostId;

  @JsonKey(unknownEnumValue: HostType.artemisUnknown)
  HostType hostType;

  DateTime notifyDate;

  DateTime whenCreated;

  @override
  List<Object> get props =>
      [comment, hostId, hostType, notifyDate, whenCreated];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$UserSettingsQueryAPI with EquatableMixin {
  Init$DFSQuery$UserSettingsQueryAPI();

  factory Init$DFSQuery$UserSettingsQueryAPI.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$UserSettingsQueryAPIFromJson(json);

  Init$DFSQuery$UserSettingsQueryAPI$UserSettings userSettings;

  List<Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies> getCustomNotifies;

  @override
  List<Object> get props => [userSettings, getCustomNotifies];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$UserSettingsQueryAPIToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$MailingGroupQueryAPI$All with EquatableMixin {
  Init$DFSQuery$MailingGroupQueryAPI$All();

  factory Init$DFSQuery$MailingGroupQueryAPI$All.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$MailingGroupQueryAPI$AllFromJson(json);

  String id;

  String parentId;

  String name;

  bool hasChildren;

  bool isDeleted;

  int type;

  @override
  List<Object> get props => [id, parentId, name, hasChildren, isDeleted, type];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$MailingGroupQueryAPI$AllToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$MailingGroupQueryAPI with EquatableMixin {
  Init$DFSQuery$MailingGroupQueryAPI();

  factory Init$DFSQuery$MailingGroupQueryAPI.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$MailingGroupQueryAPIFromJson(json);

  List<Init$DFSQuery$MailingGroupQueryAPI$All> all;

  @override
  List<Object> get props => [all];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$MailingGroupQueryAPIToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories
    with EquatableMixin {
  Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories();

  factory Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategoriesFromJson(json);

  String id;

  String title;

  String parentId;

  @override
  List<Object> get props => [id, title, parentId];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategoriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery$GenericRequestCatalogQueryAPI with EquatableMixin {
  Init$DFSQuery$GenericRequestCatalogQueryAPI();

  factory Init$DFSQuery$GenericRequestCatalogQueryAPI.fromJson(
          Map<String, dynamic> json) =>
      _$Init$DFSQuery$GenericRequestCatalogQueryAPIFromJson(json);

  List<Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories> allCategories;

  @override
  List<Object> get props => [allCategories];
  Map<String, dynamic> toJson() =>
      _$Init$DFSQuery$GenericRequestCatalogQueryAPIToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Init$DFSQuery with EquatableMixin {
  Init$DFSQuery();

  factory Init$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$Init$DFSQueryFromJson(json);

  Init$DFSQuery$CurrentUser currentUser;

  List<Init$DFSQuery$AllEventGroups> allEventGroups;

  List<Init$DFSQuery$AllRouteOption> allRouteOption;

  List<Init$DFSQuery$OrgUnits> orgUnits;

  Init$DFSQuery$ServerSettingsQueryAPI serverSettingsQueryAPI;

  List<Init$DFSQuery$AllGroups> allGroups;

  Init$DFSQuery$ServerInfo serverInfo;

  Init$DFSQuery$UserSettingsQueryAPI userSettingsQueryAPI;

  Init$DFSQuery$MailingGroupQueryAPI mailingGroupQueryAPI;

  Init$DFSQuery$GenericRequestCatalogQueryAPI genericRequestCatalogQueryAPI;

  @override
  List<Object> get props => [
        currentUser,
        allEventGroups,
        allRouteOption,
        orgUnits,
        serverSettingsQueryAPI,
        allGroups,
        serverInfo,
        userSettingsQueryAPI,
        mailingGroupQueryAPI,
        genericRequestCatalogQueryAPI
      ];
  Map<String, dynamic> toJson() => _$Init$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserItemFragmentWithSubsMixin$Slaves
    with EquatableMixin, SubstitutionFragmentMixin {
  UserItemFragmentWithSubsMixin$Slaves();

  factory UserItemFragmentWithSubsMixin$Slaves.fromJson(
          Map<String, dynamic> json) =>
      _$UserItemFragmentWithSubsMixin$SlavesFromJson(json);

  @override
  List<Object> get props =>
      [substitutionId, masterId, slaveId, period, asAssistant, note];
  Map<String, dynamic> toJson() =>
      _$UserItemFragmentWithSubsMixin$SlavesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserItemFragmentWithSubsMixin$Masters
    with EquatableMixin, SubstitutionFragmentMixin {
  UserItemFragmentWithSubsMixin$Masters();

  factory UserItemFragmentWithSubsMixin$Masters.fromJson(
          Map<String, dynamic> json) =>
      _$UserItemFragmentWithSubsMixin$MastersFromJson(json);

  @override
  List<Object> get props =>
      [substitutionId, masterId, slaveId, period, asAssistant, note];
  Map<String, dynamic> toJson() =>
      _$UserItemFragmentWithSubsMixin$MastersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubstitutionFragmentMixin$Period with EquatableMixin {
  SubstitutionFragmentMixin$Period();

  factory SubstitutionFragmentMixin$Period.fromJson(
          Map<String, dynamic> json) =>
      _$SubstitutionFragmentMixin$PeriodFromJson(json);

  DateTime startOnDate;

  DateTime endOffDate;

  @override
  List<Object> get props => [startOnDate, endOffDate];
  Map<String, dynamic> toJson() =>
      _$SubstitutionFragmentMixin$PeriodToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserItemFragmentMixin$Vacation with EquatableMixin {
  UserItemFragmentMixin$Vacation();

  factory UserItemFragmentMixin$Vacation.fromJson(Map<String, dynamic> json) =>
      _$UserItemFragmentMixin$VacationFromJson(json);

  String description;

  DateTime from;

  DateTime to;

  @override
  List<Object> get props => [description, from, to];
  Map<String, dynamic> toJson() => _$UserItemFragmentMixin$VacationToJson(this);
}

enum DocumentType {
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('CONTRACT')
  contract,
  @JsonValue('TAX_EXPERTISE')
  taxExpertise,
  @JsonValue('LETTER')
  letter,
  @JsonValue('INCOMING_DOC')
  incomingDoc,
  @JsonValue('OUTGOING_DOC')
  outgoingDoc,
  @JsonValue('CONTROL_CARD')
  controlCard,
  @JsonValue('REQUEST_TO_HIRE')
  requestToHire,
  @JsonValue('TRANSFER_REQUEST')
  transferRequest,
  @JsonValue('REQUEST_FOR_DISMISSAL')
  requestForDismissal,
  @JsonValue('CANCELLATION_REQUEST_FOR_DISMISSAL')
  cancellationRequestForDismissal,
  @JsonValue('ORDER')
  order,
  @JsonValue('DIRECTIVE')
  directive,
  @JsonValue('GENERIC_REQUEST')
  genericRequest,
  @JsonValue('MASS_MAIL')
  massMail,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum HostType {
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('TASK')
  task,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

class InitQuery extends GraphQLQuery<Init$DFSQuery, JsonSerializable> {
  InitQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'init'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'currentUser'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'userItemFragmentWithSubs'),
                    directives: []),
                FieldNode(
                    name: NameNode(value: 'personalIdentifier'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'allEventGroups'),
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'documentType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'events'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'allRouteOption'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'documentType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'routeOptions'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'defaultValue'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'description'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: NameNode(value: 'optionId'),
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ])),
          FieldNode(
              name: NameNode(value: 'orgUnits'),
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
                    name: NameNode(value: 'parentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'shortName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'serverSettingsQueryAPI'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'maintenanceMessage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'allGroups'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'userIds'),
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
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'serverInfo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'allUsers'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'displayName'),
                          alias: NameNode(value: 'd'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: NameNode(value: 'i'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isOnVacation'),
                          alias: NameNode(value: 'v'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isRetired'),
                          alias: NameNode(value: 'r'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lastActivity'),
                          alias: NameNode(value: 'l'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'adGuid'),
                          alias: NameNode(value: 'a'),
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ])),
          FieldNode(
              name: NameNode(value: 'userSettingsQueryAPI'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'userId'),
                    value: StringValueNode(value: 'init', isBlock: false))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'userSettings'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'isPrintBtnResolutionActive'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(
                              value: 'isIncomingNumberAndDatePDFInFileEnabled'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isPrintReportEnabled'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'getCustomNotifies'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'comment'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hostId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hostType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'notifyDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenCreated'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ])),
          FieldNode(
              name: NameNode(value: 'mailingGroupQueryAPI'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'all'),
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
                          name: NameNode(value: 'parentId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
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
                          name: NameNode(value: 'isDeleted'),
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
                    ]))
              ])),
          FieldNode(
              name: NameNode(value: 'genericRequestCatalogQueryAPI'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'allCategories'),
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
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'parentId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'userItemFragmentWithSubs'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'UserItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
              name: NameNode(value: 'userItemFragment'), directives: []),
          FieldNode(
              name: NameNode(value: 'slaves'),
              alias: NameNode(value: 'slaves'),
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'substitutionFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'masters'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'substitutionFragment'),
                    directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'substitutionFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'substitution'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'substitutionId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'masterId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'slaveId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'period'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'startOnDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'endOffDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'asAssistant'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'note'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'userItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'UserItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'displayName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'jobTitle'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'orgUnit'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'department'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'photoUrl'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'identity'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'lastActivity'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'activityCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isRetired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'retiredDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'phone'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'vacation'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'from'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'to'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'userAgent'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'init';

  @override
  List<Object> get props => [document, operationName];
  @override
  Init$DFSQuery parse(Map<String, dynamic> json) =>
      Init$DFSQuery.fromJson(json);
}
