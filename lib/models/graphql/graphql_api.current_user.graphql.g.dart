// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.current_user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUser$DFSQuery$CurrentUser _$CurrentUser$DFSQuery$CurrentUserFromJson(
    Map<String, dynamic> json) {
  return CurrentUser$DFSQuery$CurrentUser()
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

Map<String, dynamic> _$CurrentUser$DFSQuery$CurrentUserToJson(
        CurrentUser$DFSQuery$CurrentUser instance) =>
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

CurrentUser$DFSQuery _$CurrentUser$DFSQueryFromJson(Map<String, dynamic> json) {
  return CurrentUser$DFSQuery()
    ..currentUser = json['currentUser'] == null
        ? null
        : CurrentUser$DFSQuery$CurrentUser.fromJson(
            json['currentUser'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CurrentUser$DFSQueryToJson(
        CurrentUser$DFSQuery instance) =>
    <String, dynamic>{
      'currentUser': instance.currentUser?.toJson(),
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
