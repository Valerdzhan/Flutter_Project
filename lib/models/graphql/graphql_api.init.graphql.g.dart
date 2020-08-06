// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.init.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Init$DFSQuery$CurrentUser _$Init$DFSQuery$CurrentUserFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$CurrentUser()
    ..slaves = (json['slaves'] as List)
        ?.map((e) => e == null
            ? null
            : UserItemFragmentWithSubsMixin$Slaves.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..masters = (json['masters'] as List)
        ?.map((e) => e == null
            ? null
            : UserItemFragmentWithSubsMixin$Masters.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..id = json['id'] as String
    ..displayName = json['displayName'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String
    ..department = json['department'] as String
    ..photoUrl = json['photoUrl'] as String
    ..identity = json['identity'] as String
    ..email = json['email'] as String
    ..lastActivity = json['lastActivity'] == null
        ? null
        : DateTime.parse(json['lastActivity'] as String)
    ..activityCount = json['activityCount'] as int
    ..isRetired = json['isRetired'] as bool
    ..retiredDate = json['retiredDate'] == null
        ? null
        : DateTime.parse(json['retiredDate'] as String)
    ..phone = json['phone'] as String
    ..vacation = json['vacation'] == null
        ? null
        : UserItemFragmentMixin$Vacation.fromJson(
            json['vacation'] as Map<String, dynamic>)
    ..userAgent = json['userAgent'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$Init$DFSQuery$CurrentUserToJson(
        Init$DFSQuery$CurrentUser instance) =>
    <String, dynamic>{
      'slaves': instance.slaves?.map((e) => e?.toJson())?.toList(),
      'masters': instance.masters?.map((e) => e?.toJson())?.toList(),
      'id': instance.id,
      'displayName': instance.displayName,
      'jobTitle': instance.jobTitle,
      'orgUnit': instance.orgUnit,
      'department': instance.department,
      'photoUrl': instance.photoUrl,
      'identity': instance.identity,
      'email': instance.email,
      'lastActivity': instance.lastActivity?.toIso8601String(),
      'activityCount': instance.activityCount,
      'isRetired': instance.isRetired,
      'retiredDate': instance.retiredDate?.toIso8601String(),
      'phone': instance.phone,
      'vacation': instance.vacation?.toJson(),
      'userAgent': instance.userAgent,
      'personalIdentifier': instance.personalIdentifier,
    };

Init$DFSQuery$AllEventGroups _$Init$DFSQuery$AllEventGroupsFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$AllEventGroups()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..events = (json['events'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$AllEventGroupsToJson(
        Init$DFSQuery$AllEventGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'events': instance.events,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DocumentTypeEnumMap = {
  DocumentType.unknown: 'UNKNOWN',
  DocumentType.contract: 'CONTRACT',
  DocumentType.taxExpertise: 'TAX_EXPERTISE',
  DocumentType.letter: 'LETTER',
  DocumentType.incomingDoc: 'INCOMING_DOC',
  DocumentType.outgoingDoc: 'OUTGOING_DOC',
  DocumentType.controlCard: 'CONTROL_CARD',
  DocumentType.requestToHire: 'REQUEST_TO_HIRE',
  DocumentType.transferRequest: 'TRANSFER_REQUEST',
  DocumentType.requestForDismissal: 'REQUEST_FOR_DISMISSAL',
  DocumentType.cancellationRequestForDismissal:
      'CANCELLATION_REQUEST_FOR_DISMISSAL',
  DocumentType.order: 'ORDER',
  DocumentType.directive: 'DIRECTIVE',
  DocumentType.genericRequest: 'GENERIC_REQUEST',
  DocumentType.massMail: 'MASS_MAIL',
  DocumentType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Init$DFSQuery$AllRouteOption$RouteOptions
    _$Init$DFSQuery$AllRouteOption$RouteOptionsFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$AllRouteOption$RouteOptions()
    ..defaultValue = json['defaultValue'] as bool
    ..description = json['description'] as String
    ..optionId = json['optionId'] as String;
}

Map<String, dynamic> _$Init$DFSQuery$AllRouteOption$RouteOptionsToJson(
        Init$DFSQuery$AllRouteOption$RouteOptions instance) =>
    <String, dynamic>{
      'defaultValue': instance.defaultValue,
      'description': instance.description,
      'optionId': instance.optionId,
    };

Init$DFSQuery$AllRouteOption _$Init$DFSQuery$AllRouteOptionFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$AllRouteOption()
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..routeOptions = (json['routeOptions'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$AllRouteOption$RouteOptions.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$AllRouteOptionToJson(
        Init$DFSQuery$AllRouteOption instance) =>
    <String, dynamic>{
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'routeOptions': instance.routeOptions?.map((e) => e?.toJson())?.toList(),
    };

Init$DFSQuery$OrgUnits _$Init$DFSQuery$OrgUnitsFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$OrgUnits()
    ..id = json['id'] as int
    ..parentId = json['parentId'] as int
    ..name = json['name'] as String
    ..shortName = json['shortName'] as String;
}

Map<String, dynamic> _$Init$DFSQuery$OrgUnitsToJson(
        Init$DFSQuery$OrgUnits instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'shortName': instance.shortName,
    };

Init$DFSQuery$ServerSettingsQueryAPI
    _$Init$DFSQuery$ServerSettingsQueryAPIFromJson(Map<String, dynamic> json) {
  return Init$DFSQuery$ServerSettingsQueryAPI()
    ..maintenanceMessage = json['maintenanceMessage'] as String;
}

Map<String, dynamic> _$Init$DFSQuery$ServerSettingsQueryAPIToJson(
        Init$DFSQuery$ServerSettingsQueryAPI instance) =>
    <String, dynamic>{
      'maintenanceMessage': instance.maintenanceMessage,
    };

Init$DFSQuery$AllGroups _$Init$DFSQuery$AllGroupsFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$AllGroups()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..userIds = (json['userIds'] as List)?.map((e) => e as String)?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String);
}

Map<String, dynamic> _$Init$DFSQuery$AllGroupsToJson(
        Init$DFSQuery$AllGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userIds': instance.userIds,
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
    };

Init$DFSQuery$ServerInfo$AllUsers _$Init$DFSQuery$ServerInfo$AllUsersFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$ServerInfo$AllUsers()
    ..d = json['d'] as String
    ..i = json['i'] as String
    ..v = json['v'] as bool
    ..r = json['r'] as bool
    ..l = json['l'] == null ? null : DateTime.parse(json['l'] as String)
    ..a = json['a'] as String;
}

Map<String, dynamic> _$Init$DFSQuery$ServerInfo$AllUsersToJson(
        Init$DFSQuery$ServerInfo$AllUsers instance) =>
    <String, dynamic>{
      'd': instance.d,
      'i': instance.i,
      'v': instance.v,
      'r': instance.r,
      'l': instance.l?.toIso8601String(),
      'a': instance.a,
    };

Init$DFSQuery$ServerInfo _$Init$DFSQuery$ServerInfoFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$ServerInfo()
    ..allUsers = (json['allUsers'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$ServerInfo$AllUsers.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$ServerInfoToJson(
        Init$DFSQuery$ServerInfo instance) =>
    <String, dynamic>{
      'allUsers': instance.allUsers?.map((e) => e?.toJson())?.toList(),
    };

Init$DFSQuery$UserSettingsQueryAPI$UserSettings
    _$Init$DFSQuery$UserSettingsQueryAPI$UserSettingsFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$UserSettingsQueryAPI$UserSettings()
    ..isPrintBtnResolutionActive = json['isPrintBtnResolutionActive'] as bool
    ..isIncomingNumberAndDatePDFInFileEnabled =
        json['isIncomingNumberAndDatePDFInFileEnabled'] as bool
    ..isPrintReportEnabled = json['isPrintReportEnabled'] as bool;
}

Map<String, dynamic> _$Init$DFSQuery$UserSettingsQueryAPI$UserSettingsToJson(
        Init$DFSQuery$UserSettingsQueryAPI$UserSettings instance) =>
    <String, dynamic>{
      'isPrintBtnResolutionActive': instance.isPrintBtnResolutionActive,
      'isIncomingNumberAndDatePDFInFileEnabled':
          instance.isIncomingNumberAndDatePDFInFileEnabled,
      'isPrintReportEnabled': instance.isPrintReportEnabled,
    };

Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies
    _$Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifiesFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies()
    ..comment = json['comment'] as String
    ..hostId = json['hostId'] as String
    ..hostType = _$enumDecodeNullable(_$HostTypeEnumMap, json['hostType'],
        unknownValue: HostType.artemisUnknown)
    ..notifyDate = json['notifyDate'] == null
        ? null
        : DateTime.parse(json['notifyDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String);
}

Map<String, dynamic>
    _$Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifiesToJson(
            Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies instance) =>
        <String, dynamic>{
          'comment': instance.comment,
          'hostId': instance.hostId,
          'hostType': _$HostTypeEnumMap[instance.hostType],
          'notifyDate': instance.notifyDate?.toIso8601String(),
          'whenCreated': instance.whenCreated?.toIso8601String(),
        };

const _$HostTypeEnumMap = {
  HostType.unknown: 'UNKNOWN',
  HostType.task: 'TASK',
  HostType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Init$DFSQuery$UserSettingsQueryAPI _$Init$DFSQuery$UserSettingsQueryAPIFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$UserSettingsQueryAPI()
    ..userSettings = json['userSettings'] == null
        ? null
        : Init$DFSQuery$UserSettingsQueryAPI$UserSettings.fromJson(
            json['userSettings'] as Map<String, dynamic>)
    ..getCustomNotifies = (json['getCustomNotifies'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$UserSettingsQueryAPI$GetCustomNotifies.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$UserSettingsQueryAPIToJson(
        Init$DFSQuery$UserSettingsQueryAPI instance) =>
    <String, dynamic>{
      'userSettings': instance.userSettings?.toJson(),
      'getCustomNotifies':
          instance.getCustomNotifies?.map((e) => e?.toJson())?.toList(),
    };

Init$DFSQuery$MailingGroupQueryAPI$All
    _$Init$DFSQuery$MailingGroupQueryAPI$AllFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$MailingGroupQueryAPI$All()
    ..id = json['id'] as String
    ..parentId = json['parentId'] as String
    ..name = json['name'] as String
    ..hasChildren = json['hasChildren'] as bool
    ..isDeleted = json['isDeleted'] as bool
    ..type = json['type'] as int;
}

Map<String, dynamic> _$Init$DFSQuery$MailingGroupQueryAPI$AllToJson(
        Init$DFSQuery$MailingGroupQueryAPI$All instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'hasChildren': instance.hasChildren,
      'isDeleted': instance.isDeleted,
      'type': instance.type,
    };

Init$DFSQuery$MailingGroupQueryAPI _$Init$DFSQuery$MailingGroupQueryAPIFromJson(
    Map<String, dynamic> json) {
  return Init$DFSQuery$MailingGroupQueryAPI()
    ..all = (json['all'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$MailingGroupQueryAPI$All.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$MailingGroupQueryAPIToJson(
        Init$DFSQuery$MailingGroupQueryAPI instance) =>
    <String, dynamic>{
      'all': instance.all?.map((e) => e?.toJson())?.toList(),
    };

Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories
    _$Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategoriesFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..parentId = json['parentId'] as String;
}

Map<String,
    dynamic> _$Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategoriesToJson(
        Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parentId': instance.parentId,
    };

Init$DFSQuery$GenericRequestCatalogQueryAPI
    _$Init$DFSQuery$GenericRequestCatalogQueryAPIFromJson(
        Map<String, dynamic> json) {
  return Init$DFSQuery$GenericRequestCatalogQueryAPI()
    ..allCategories = (json['allCategories'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$GenericRequestCatalogQueryAPI$AllCategories
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Init$DFSQuery$GenericRequestCatalogQueryAPIToJson(
        Init$DFSQuery$GenericRequestCatalogQueryAPI instance) =>
    <String, dynamic>{
      'allCategories':
          instance.allCategories?.map((e) => e?.toJson())?.toList(),
    };

Init$DFSQuery _$Init$DFSQueryFromJson(Map<String, dynamic> json) {
  return Init$DFSQuery()
    ..currentUser = json['currentUser'] == null
        ? null
        : Init$DFSQuery$CurrentUser.fromJson(
            json['currentUser'] as Map<String, dynamic>)
    ..allEventGroups = (json['allEventGroups'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$AllEventGroups.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..allRouteOption = (json['allRouteOption'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$AllRouteOption.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..orgUnits = (json['orgUnits'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$OrgUnits.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..serverSettingsQueryAPI = json['serverSettingsQueryAPI'] == null
        ? null
        : Init$DFSQuery$ServerSettingsQueryAPI.fromJson(
            json['serverSettingsQueryAPI'] as Map<String, dynamic>)
    ..allGroups = (json['allGroups'] as List)
        ?.map((e) => e == null
            ? null
            : Init$DFSQuery$AllGroups.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..serverInfo = json['serverInfo'] == null
        ? null
        : Init$DFSQuery$ServerInfo.fromJson(
            json['serverInfo'] as Map<String, dynamic>)
    ..userSettingsQueryAPI = json['userSettingsQueryAPI'] == null
        ? null
        : Init$DFSQuery$UserSettingsQueryAPI.fromJson(
            json['userSettingsQueryAPI'] as Map<String, dynamic>)
    ..mailingGroupQueryAPI = json['mailingGroupQueryAPI'] == null
        ? null
        : Init$DFSQuery$MailingGroupQueryAPI.fromJson(json['mailingGroupQueryAPI'] as Map<String, dynamic>)
    ..genericRequestCatalogQueryAPI = json['genericRequestCatalogQueryAPI'] == null ? null : Init$DFSQuery$GenericRequestCatalogQueryAPI.fromJson(json['genericRequestCatalogQueryAPI'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Init$DFSQueryToJson(Init$DFSQuery instance) =>
    <String, dynamic>{
      'currentUser': instance.currentUser?.toJson(),
      'allEventGroups':
          instance.allEventGroups?.map((e) => e?.toJson())?.toList(),
      'allRouteOption':
          instance.allRouteOption?.map((e) => e?.toJson())?.toList(),
      'orgUnits': instance.orgUnits?.map((e) => e?.toJson())?.toList(),
      'serverSettingsQueryAPI': instance.serverSettingsQueryAPI?.toJson(),
      'allGroups': instance.allGroups?.map((e) => e?.toJson())?.toList(),
      'serverInfo': instance.serverInfo?.toJson(),
      'userSettingsQueryAPI': instance.userSettingsQueryAPI?.toJson(),
      'mailingGroupQueryAPI': instance.mailingGroupQueryAPI?.toJson(),
      'genericRequestCatalogQueryAPI':
          instance.genericRequestCatalogQueryAPI?.toJson(),
    };

UserItemFragmentWithSubsMixin$Slaves
    _$UserItemFragmentWithSubsMixin$SlavesFromJson(Map<String, dynamic> json) {
  return UserItemFragmentWithSubsMixin$Slaves()
    ..substitutionId = json['substitutionId'] as String
    ..masterId = json['masterId'] as String
    ..slaveId = json['slaveId'] as String
    ..period = json['period'] == null
        ? null
        : SubstitutionFragmentMixin$Period.fromJson(
            json['period'] as Map<String, dynamic>)
    ..asAssistant = json['asAssistant'] as bool
    ..note = json['note'] as String;
}

Map<String, dynamic> _$UserItemFragmentWithSubsMixin$SlavesToJson(
        UserItemFragmentWithSubsMixin$Slaves instance) =>
    <String, dynamic>{
      'substitutionId': instance.substitutionId,
      'masterId': instance.masterId,
      'slaveId': instance.slaveId,
      'period': instance.period?.toJson(),
      'asAssistant': instance.asAssistant,
      'note': instance.note,
    };

UserItemFragmentWithSubsMixin$Masters
    _$UserItemFragmentWithSubsMixin$MastersFromJson(Map<String, dynamic> json) {
  return UserItemFragmentWithSubsMixin$Masters()
    ..substitutionId = json['substitutionId'] as String
    ..masterId = json['masterId'] as String
    ..slaveId = json['slaveId'] as String
    ..period = json['period'] == null
        ? null
        : SubstitutionFragmentMixin$Period.fromJson(
            json['period'] as Map<String, dynamic>)
    ..asAssistant = json['asAssistant'] as bool
    ..note = json['note'] as String;
}

Map<String, dynamic> _$UserItemFragmentWithSubsMixin$MastersToJson(
        UserItemFragmentWithSubsMixin$Masters instance) =>
    <String, dynamic>{
      'substitutionId': instance.substitutionId,
      'masterId': instance.masterId,
      'slaveId': instance.slaveId,
      'period': instance.period?.toJson(),
      'asAssistant': instance.asAssistant,
      'note': instance.note,
    };

SubstitutionFragmentMixin$Period _$SubstitutionFragmentMixin$PeriodFromJson(
    Map<String, dynamic> json) {
  return SubstitutionFragmentMixin$Period()
    ..startOnDate = json['startOnDate'] == null
        ? null
        : DateTime.parse(json['startOnDate'] as String)
    ..endOffDate = json['endOffDate'] == null
        ? null
        : DateTime.parse(json['endOffDate'] as String);
}

Map<String, dynamic> _$SubstitutionFragmentMixin$PeriodToJson(
        SubstitutionFragmentMixin$Period instance) =>
    <String, dynamic>{
      'startOnDate': instance.startOnDate?.toIso8601String(),
      'endOffDate': instance.endOffDate?.toIso8601String(),
    };

UserItemFragmentMixin$Vacation _$UserItemFragmentMixin$VacationFromJson(
    Map<String, dynamic> json) {
  return UserItemFragmentMixin$Vacation()
    ..description = json['description'] as String
    ..from =
        json['from'] == null ? null : DateTime.parse(json['from'] as String)
    ..to = json['to'] == null ? null : DateTime.parse(json['to'] as String);
}

Map<String, dynamic> _$UserItemFragmentMixin$VacationToJson(
        UserItemFragmentMixin$Vacation instance) =>
    <String, dynamic>{
      'description': instance.description,
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
    };
