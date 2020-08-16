// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.tasks.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..contractorId = json['contractorId'] as String
    ..contractorName = json['contractorName'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$ContractListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'contractorId': instance.contractorId,
          'contractorName': instance.contractorName,
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

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$HRRequestDocListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'addressee': instance.addressee,
          'addresseeName': instance.addresseeName,
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
        };

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..incomingDocAddresseeIds = (json['incomingDocAddresseeIds'] as List)
        ?.map((e) => e as String)
        ?.toList()
    ..sender = json['sender'] as String
    ..incomingDocSenderId = json['incomingDocSenderId'] as String
    ..actor = json['actor'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$IncomingDocListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'incomingDocAddresseeIds': instance.incomingDocAddresseeIds,
          'sender': instance.sender,
          'incomingDocSenderId': instance.incomingDocSenderId,
          'actor': instance.actor,
        };

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..letterAddresseeIds =
        (json['letterAddresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..senderId = json['senderId'] as String
    ..actorId = json['actorId'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LetterListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'letterAddresseeIds': instance.letterAddresseeIds,
          'senderId': instance.senderId,
          'actorId': instance.actorId,
        };

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..signerId = json['signerId'] as String
    ..actorId = json['actorId'] as String
    ..overseerId = json['overseerId'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$LNAListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'signerId': instance.signerId,
          'actorId': instance.actorId,
          'overseerId': instance.overseerId,
        };

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItemFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String
    ..addressees =
        (json['addressees'] as List)?.map((e) => e as String)?.toList()
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..senderId = json['senderId'] as String
    ..actorId = json['actorId'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItemToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion$OutgoingDocListItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
          'addressees': instance.addressees,
          'addresseeIds': instance.addresseeIds,
          'senderId': instance.senderId,
          'actorId': instance.actorId,
        };

UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersionFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..responderId = json['responderId'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersionToJson(
            UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion instance) =>
        <String, dynamic>{
          'id': instance.id,
          'compileTitle': instance.compileTitle,
          'type': _$DocumentTypeEnumMap[instance.type],
          'title': instance.title,
          'controlCardsCount': instance.controlCardsCount,
          'controlCardsRemovedCount': instance.controlCardsRemovedCount,
          'responderId': instance.responderId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          '__typename': instance.$$typename,
        };

UserTasks$DFSQuery$UserTasks$Items$Delegations
    _$UserTasks$DFSQuery$UserTasks$Items$DelegationsFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$Delegations()
    ..userId = json['userId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String);
}

Map<String, dynamic> _$UserTasks$DFSQuery$UserTasks$Items$DelegationsToJson(
        UserTasks$DFSQuery$UserTasks$Items$Delegations instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'date': instance.date?.toIso8601String(),
    };

UserTasks$DFSQuery$UserTasks$Items$ReadAuditList
    _$UserTasks$DFSQuery$UserTasks$Items$ReadAuditListFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$ReadAuditList()
    ..masters = (json['masters'] as List)?.map((e) => e as String)?.toList()
    ..userId = json['userId'] as String
    ..whenRead = json['whenRead'] == null
        ? null
        : DateTime.parse(json['whenRead'] as String);
}

Map<String, dynamic> _$UserTasks$DFSQuery$UserTasks$Items$ReadAuditListToJson(
        UserTasks$DFSQuery$UserTasks$Items$ReadAuditList instance) =>
    <String, dynamic>{
      'masters': instance.masters,
      'userId': instance.userId,
      'whenRead': instance.whenRead?.toIso8601String(),
    };

UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType
    _$UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemTypeFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType()
    ..document = json['document'] == null
        ? null
        : TaskRouteFragmentMixin$Document.fromJson(
            json['document'] as Map<String, dynamic>)
    ..routeId = json['routeId'] as String
    ..stageId = json['stageId'] as String
    ..isObsolete = json['isObsolete'] as bool
    ..routeTaskType = _$enumDecodeNullable(_$TaskTypeEnumMap, json['routeTaskType'],
        unknownValue: TaskType.artemisUnknown)
    ..id = json['id'] as String
    ..actorId = json['actorId'] as String
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..status = json['status'] as String
    ..statusEditorId = json['statusEditorId'] as String
    ..note = json['note'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..delegatedActorIds =
        (json['delegatedActorIds'] as List)?.map((e) => e as String)?.toList()
    ..delegations = (json['delegations'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..whenStatusEdited = json['whenStatusEdited'] == null
        ? null
        : DateTime.parse(json['whenStatusEdited'] as String)
    ..whenSubmitted =
        json['whenSubmitted'] == null ? null : DateTime.parse(json['whenSubmitted'] as String)
    ..isPersonalReview = json['isPersonalReview'] as bool
    ..hasChildren = json['hasChildren'] as bool
    ..readAuditList = (json['readAuditList'] as List)?.map((e) => e == null ? null : UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..resolutionsFinished = json['resolutionsFinished'] as bool
    ..subTaskCount = json['subTaskCount'] as int
    ..subTaskRejectedCount = json['subTaskRejectedCount'] as int
    ..subTaskSolvedCount = json['subTaskSolvedCount'] as int
    ..lastActorPost = json['lastActorPost'] as String
    ..$$typename = json['__typename'] as String;
}

Map<String,
    dynamic> _$UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemTypeToJson(
        UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType instance) =>
    <String, dynamic>{
      'document': instance.document?.toJson(),
      'routeId': instance.routeId,
      'stageId': instance.stageId,
      'isObsolete': instance.isObsolete,
      'routeTaskType': _$TaskTypeEnumMap[instance.routeTaskType],
      'id': instance.id,
      'actorId': instance.actorId,
      'documentLastVersion': instance.documentLastVersion?.toJson(),
      'state': instance.state,
      'status': instance.status,
      'statusEditorId': instance.statusEditorId,
      'note': instance.note,
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'delegatedActorIds': instance.delegatedActorIds,
      'delegations': instance.delegations?.map((e) => e?.toJson())?.toList(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'whenStatusEdited': instance.whenStatusEdited?.toIso8601String(),
      'whenSubmitted': instance.whenSubmitted?.toIso8601String(),
      'isPersonalReview': instance.isPersonalReview,
      'hasChildren': instance.hasChildren,
      'readAuditList':
          instance.readAuditList?.map((e) => e?.toJson())?.toList(),
      'resolutionsFinished': instance.resolutionsFinished,
      'subTaskCount': instance.subTaskCount,
      'subTaskRejectedCount': instance.subTaskRejectedCount,
      'subTaskSolvedCount': instance.subTaskSolvedCount,
      'lastActorPost': instance.lastActorPost,
      '__typename': instance.$$typename,
    };

const _$TaskTypeEnumMap = {
  TaskType.unknown: 'UNKNOWN',
  TaskType.agreement: 'AGREEMENT',
  TaskType.signing: 'SIGNING',
  TaskType.approval: 'APPROVAL',
  TaskType.registration: 'REGISTRATION',
  TaskType.normativeControl: 'NORMATIVE_CONTROL',
  TaskType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType
    _$UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemTypeFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType()
    ..hasControl = json['hasControl'] as bool
    ..resolutionId = json['resolutionId'] as String
    ..order = json['order'] as int
    ..resolutionTaskType = _$enumDecodeNullable(
        _$ResolutionTaskTypeEnumMap, json['resolutionTaskType'],
        unknownValue: ResolutionTaskType.artemisUnknown)
    ..isResponsible = json['isResponsible'] as bool
    ..overseerId = json['overseerId'] as String
    ..originatorId = json['originatorId'] as String
    ..id = json['id'] as String
    ..actorId = json['actorId'] as String
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..status = json['status'] as String
    ..statusEditorId = json['statusEditorId'] as String
    ..note = json['note'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..delegatedActorIds =
        (json['delegatedActorIds'] as List)?.map((e) => e as String)?.toList()
    ..delegations = (json['delegations'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..whenStatusEdited = json['whenStatusEdited'] == null
        ? null
        : DateTime.parse(json['whenStatusEdited'] as String)
    ..whenSubmitted =
        json['whenSubmitted'] == null ? null : DateTime.parse(json['whenSubmitted'] as String)
    ..isPersonalReview = json['isPersonalReview'] as bool
    ..hasChildren = json['hasChildren'] as bool
    ..readAuditList = (json['readAuditList'] as List)?.map((e) => e == null ? null : UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..resolutionsFinished = json['resolutionsFinished'] as bool
    ..subTaskCount = json['subTaskCount'] as int
    ..subTaskRejectedCount = json['subTaskRejectedCount'] as int
    ..subTaskSolvedCount = json['subTaskSolvedCount'] as int
    ..lastActorPost = json['lastActorPost'] as String
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemTypeToJson(
            UserTasks$DFSQuery$UserTasks$Items$ResolutionTaskListItemType
                instance) =>
        <String, dynamic>{
          'hasControl': instance.hasControl,
          'resolutionId': instance.resolutionId,
          'order': instance.order,
          'resolutionTaskType':
              _$ResolutionTaskTypeEnumMap[instance.resolutionTaskType],
          'isResponsible': instance.isResponsible,
          'overseerId': instance.overseerId,
          'originatorId': instance.originatorId,
          'id': instance.id,
          'actorId': instance.actorId,
          'documentLastVersion': instance.documentLastVersion?.toJson(),
          'state': instance.state,
          'status': instance.status,
          'statusEditorId': instance.statusEditorId,
          'note': instance.note,
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'delegatedActorIds': instance.delegatedActorIds,
          'delegations':
              instance.delegations?.map((e) => e?.toJson())?.toList(),
          'dueDate': instance.dueDate?.toIso8601String(),
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'whenStatusEdited': instance.whenStatusEdited?.toIso8601String(),
          'whenSubmitted': instance.whenSubmitted?.toIso8601String(),
          'isPersonalReview': instance.isPersonalReview,
          'hasChildren': instance.hasChildren,
          'readAuditList':
              instance.readAuditList?.map((e) => e?.toJson())?.toList(),
          'resolutionsFinished': instance.resolutionsFinished,
          'subTaskCount': instance.subTaskCount,
          'subTaskRejectedCount': instance.subTaskRejectedCount,
          'subTaskSolvedCount': instance.subTaskSolvedCount,
          'lastActorPost': instance.lastActorPost,
          '__typename': instance.$$typename,
        };

const _$ResolutionTaskTypeEnumMap = {
  ResolutionTaskType.unknown: 'UNKNOWN',
  ResolutionTaskType.forPerformance: 'FOR_PERFORMANCE',
  ResolutionTaskType.forConsideration: 'FOR_CONSIDERATION',
  ResolutionTaskType.forAgreement: 'FOR_AGREEMENT',
  ResolutionTaskType.forInformation: 'FOR_INFORMATION',
  ResolutionTaskType.forTaxExpertise: 'FOR_TAX_EXPERTISE',
  ResolutionTaskType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType
    _$UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemTypeFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType()
    ..senderId = json['senderId'] as String
    ..internalTaskType = _$enumDecodeNullable(
        _$ProcessingTaskTypeEnumMap, json['internalTaskType'],
        unknownValue: ProcessingTaskType.artemisUnknown)
    ..id = json['id'] as String
    ..actorId = json['actorId'] as String
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..status = json['status'] as String
    ..statusEditorId = json['statusEditorId'] as String
    ..note = json['note'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..delegatedActorIds =
        (json['delegatedActorIds'] as List)?.map((e) => e as String)?.toList()
    ..delegations = (json['delegations'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..whenStatusEdited = json['whenStatusEdited'] == null
        ? null
        : DateTime.parse(json['whenStatusEdited'] as String)
    ..whenSubmitted =
        json['whenSubmitted'] == null ? null : DateTime.parse(json['whenSubmitted'] as String)
    ..isPersonalReview = json['isPersonalReview'] as bool
    ..hasChildren = json['hasChildren'] as bool
    ..readAuditList = (json['readAuditList'] as List)?.map((e) => e == null ? null : UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..resolutionsFinished = json['resolutionsFinished'] as bool
    ..subTaskCount = json['subTaskCount'] as int
    ..subTaskRejectedCount = json['subTaskRejectedCount'] as int
    ..subTaskSolvedCount = json['subTaskSolvedCount'] as int
    ..lastActorPost = json['lastActorPost'] as String
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemTypeToJson(
            UserTasks$DFSQuery$UserTasks$Items$ProcessingTaskListItemType
                instance) =>
        <String, dynamic>{
          'senderId': instance.senderId,
          'internalTaskType':
              _$ProcessingTaskTypeEnumMap[instance.internalTaskType],
          'id': instance.id,
          'actorId': instance.actorId,
          'documentLastVersion': instance.documentLastVersion?.toJson(),
          'state': instance.state,
          'status': instance.status,
          'statusEditorId': instance.statusEditorId,
          'note': instance.note,
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'delegatedActorIds': instance.delegatedActorIds,
          'delegations':
              instance.delegations?.map((e) => e?.toJson())?.toList(),
          'dueDate': instance.dueDate?.toIso8601String(),
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'whenStatusEdited': instance.whenStatusEdited?.toIso8601String(),
          'whenSubmitted': instance.whenSubmitted?.toIso8601String(),
          'isPersonalReview': instance.isPersonalReview,
          'hasChildren': instance.hasChildren,
          'readAuditList':
              instance.readAuditList?.map((e) => e?.toJson())?.toList(),
          'resolutionsFinished': instance.resolutionsFinished,
          'subTaskCount': instance.subTaskCount,
          'subTaskRejectedCount': instance.subTaskRejectedCount,
          'subTaskSolvedCount': instance.subTaskSolvedCount,
          'lastActorPost': instance.lastActorPost,
          '__typename': instance.$$typename,
        };

const _$ProcessingTaskTypeEnumMap = {
  ProcessingTaskType.unknown: 'UNKNOWN',
  ProcessingTaskType.forIncoming: 'FOR_INCOMING',
  ProcessingTaskType.forOutcoming: 'FOR_OUTCOMING',
  ProcessingTaskType.forInternalUse: 'FOR_INTERNAL_USE',
  ProcessingTaskType.forHrDecision: 'FOR_HR_DECISION',
  ProcessingTaskType.forImplementation: 'FOR_IMPLEMENTATION',
  ProcessingTaskType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType
    _$UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemTypeFromJson(
        Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType()
    ..sender = json['sender'] == null
        ? null
        : DecisionTaskFragmentMixin$Sender.fromJson(
            json['sender'] as Map<String, dynamic>)
    ..decisionTaskType = _$enumDecodeNullable(
        _$ProcessingTaskTypeEnumMap, json['decisionTaskType'],
        unknownValue: ProcessingTaskType.artemisUnknown)
    ..id = json['id'] as String
    ..actorId = json['actorId'] as String
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..status = json['status'] as String
    ..statusEditorId = json['statusEditorId'] as String
    ..note = json['note'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..delegatedActorIds =
        (json['delegatedActorIds'] as List)?.map((e) => e as String)?.toList()
    ..delegations = (json['delegations'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited =
        json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..whenStatusEdited = json['whenStatusEdited'] == null ? null : DateTime.parse(json['whenStatusEdited'] as String)
    ..whenSubmitted = json['whenSubmitted'] == null ? null : DateTime.parse(json['whenSubmitted'] as String)
    ..isPersonalReview = json['isPersonalReview'] as bool
    ..hasChildren = json['hasChildren'] as bool
    ..readAuditList = (json['readAuditList'] as List)?.map((e) => e == null ? null : UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..resolutionsFinished = json['resolutionsFinished'] as bool
    ..subTaskCount = json['subTaskCount'] as int
    ..subTaskRejectedCount = json['subTaskRejectedCount'] as int
    ..subTaskSolvedCount = json['subTaskSolvedCount'] as int
    ..lastActorPost = json['lastActorPost'] as String
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemTypeToJson(
            UserTasks$DFSQuery$UserTasks$Items$ForHRDecisionTaskListItemType
                instance) =>
        <String, dynamic>{
          'sender': instance.sender?.toJson(),
          'decisionTaskType':
              _$ProcessingTaskTypeEnumMap[instance.decisionTaskType],
          'id': instance.id,
          'actorId': instance.actorId,
          'documentLastVersion': instance.documentLastVersion?.toJson(),
          'state': instance.state,
          'status': instance.status,
          'statusEditorId': instance.statusEditorId,
          'note': instance.note,
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'delegatedActorIds': instance.delegatedActorIds,
          'delegations':
              instance.delegations?.map((e) => e?.toJson())?.toList(),
          'dueDate': instance.dueDate?.toIso8601String(),
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'whenStatusEdited': instance.whenStatusEdited?.toIso8601String(),
          'whenSubmitted': instance.whenSubmitted?.toIso8601String(),
          'isPersonalReview': instance.isPersonalReview,
          'hasChildren': instance.hasChildren,
          'readAuditList':
              instance.readAuditList?.map((e) => e?.toJson())?.toList(),
          'resolutionsFinished': instance.resolutionsFinished,
          'subTaskCount': instance.subTaskCount,
          'subTaskRejectedCount': instance.subTaskRejectedCount,
          'subTaskSolvedCount': instance.subTaskSolvedCount,
          'lastActorPost': instance.lastActorPost,
          '__typename': instance.$$typename,
        };

UserTasks$DFSQuery$UserTasks$Items _$UserTasks$DFSQuery$UserTasks$ItemsFromJson(
    Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks$Items()
    ..id = json['id'] as String
    ..actorId = json['actorId'] as String
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks$Items$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..status = json['status'] as String
    ..statusEditorId = json['statusEditorId'] as String
    ..note = json['note'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..delegatedActorIds =
        (json['delegatedActorIds'] as List)?.map((e) => e as String)?.toList()
    ..delegations = (json['delegations'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$Delegations.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..whenStatusEdited = json['whenStatusEdited'] == null
        ? null
        : DateTime.parse(json['whenStatusEdited'] as String)
    ..whenSubmitted = json['whenSubmitted'] == null
        ? null
        : DateTime.parse(json['whenSubmitted'] as String)
    ..isPersonalReview = json['isPersonalReview'] as bool
    ..hasChildren = json['hasChildren'] as bool
    ..readAuditList = (json['readAuditList'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items$ReadAuditList.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..resolutionsFinished = json['resolutionsFinished'] as bool
    ..subTaskCount = json['subTaskCount'] as int
    ..subTaskRejectedCount = json['subTaskRejectedCount'] as int
    ..subTaskSolvedCount = json['subTaskSolvedCount'] as int
    ..lastActorPost = json['lastActorPost'] as String
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic> _$UserTasks$DFSQuery$UserTasks$ItemsToJson(
        UserTasks$DFSQuery$UserTasks$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actorId': instance.actorId,
      'documentLastVersion': instance.documentLastVersion?.toJson(),
      'state': instance.state,
      'status': instance.status,
      'statusEditorId': instance.statusEditorId,
      'note': instance.note,
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'delegatedActorIds': instance.delegatedActorIds,
      'delegations': instance.delegations?.map((e) => e?.toJson())?.toList(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'whenStatusEdited': instance.whenStatusEdited?.toIso8601String(),
      'whenSubmitted': instance.whenSubmitted?.toIso8601String(),
      'isPersonalReview': instance.isPersonalReview,
      'hasChildren': instance.hasChildren,
      'readAuditList':
          instance.readAuditList?.map((e) => e?.toJson())?.toList(),
      'resolutionsFinished': instance.resolutionsFinished,
      'subTaskCount': instance.subTaskCount,
      'subTaskRejectedCount': instance.subTaskRejectedCount,
      'subTaskSolvedCount': instance.subTaskSolvedCount,
      'lastActorPost': instance.lastActorPost,
      '__typename': instance.$$typename,
    };

UserTasks$DFSQuery$UserTasks _$UserTasks$DFSQuery$UserTasksFromJson(
    Map<String, dynamic> json) {
  return UserTasks$DFSQuery$UserTasks()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : UserTasks$DFSQuery$UserTasks$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UserTasks$DFSQuery$UserTasksToJson(
        UserTasks$DFSQuery$UserTasks instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

UserTasks$DFSQuery _$UserTasks$DFSQueryFromJson(Map<String, dynamic> json) {
  return UserTasks$DFSQuery()
    ..userTasks = json['userTasks'] == null
        ? null
        : UserTasks$DFSQuery$UserTasks.fromJson(
            json['userTasks'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserTasks$DFSQueryToJson(UserTasks$DFSQuery instance) =>
    <String, dynamic>{
      'userTasks': instance.userTasks?.toJson(),
    };

TaskRouteFragmentMixin$Document _$TaskRouteFragmentMixin$DocumentFromJson(
    Map<String, dynamic> json) {
  return TaskRouteFragmentMixin$Document()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown);
}

Map<String, dynamic> _$TaskRouteFragmentMixin$DocumentToJson(
        TaskRouteFragmentMixin$Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventCount': instance.eventCount,
      'type': _$DocumentTypeEnumMap[instance.type],
    };

DecisionTaskFragmentMixin$Sender _$DecisionTaskFragmentMixin$SenderFromJson(
    Map<String, dynamic> json) {
  return DecisionTaskFragmentMixin$Sender()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$DecisionTaskFragmentMixin$SenderToJson(
        DecisionTaskFragmentMixin$Sender instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

SortInputUserTaskSortFieldEnumType _$SortInputUserTaskSortFieldEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SortInputUserTaskSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$UserTaskSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: UserTaskSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputUserTaskSortFieldEnumTypeToJson(
        SortInputUserTaskSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$UserTaskSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$UserTaskSortFieldEnumTypeEnumMap = {
  UserTaskSortFieldEnumType.whenCreated: 'whenCreated',
  UserTaskSortFieldEnumType.dueDate: 'dueDate',
  UserTaskSortFieldEnumType.status: 'status',
  UserTaskSortFieldEnumType.type: 'type',
  UserTaskSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserTasksAttributeSearchType _$UserTasksAttributeSearchTypeFromJson(
    Map<String, dynamic> json) {
  return UserTasksAttributeSearchType(
    actor: json['actor'] as String,
    taskTypes: (json['taskTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$AllTaskTypeEnumTypeEnumMap, e))
        ?.toList(),
    documentTypeFilter: (json['documentTypeFilter'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    hideWithChildren: json['hideWithChildren'] as bool,
    withChildrenDone: json['withChildrenDone'] as bool,
    withChildrenOverdue: json['withChildrenOverdue'] as bool,
    showCompletedTasks: json['showCompletedTasks'] as bool,
    showCompletedTasksDays: json['showCompletedTasksDays'] as int,
    showRejectedTasks: json['showRejectedTasks'] as bool,
    showRejectedTasksDays: json['showRejectedTasksDays'] as int,
    hideDelegatedTasks: json['hideDelegatedTasks'] as bool,
    showObsoleteTasks: json['showObsoleteTasks'] as bool,
    withChildrenRejected: json['withChildrenRejected'] as bool,
    withTasksOnControl: json['withTasksOnControl'] as bool,
    onlyPreparedTasks: json['onlyPreparedTasks'] as bool,
    onlyOnControlTasks: json['onlyOnControlTasks'] as bool,
    contains: json['contains'] as String,
    isPersonalReview: json['isPersonalReview'] as bool,
  );
}

Map<String, dynamic> _$UserTasksAttributeSearchTypeToJson(
        UserTasksAttributeSearchType instance) =>
    <String, dynamic>{
      'actor': instance.actor,
      'taskTypes': instance.taskTypes
          ?.map((e) => _$AllTaskTypeEnumTypeEnumMap[e])
          ?.toList(),
      'documentTypeFilter': instance.documentTypeFilter
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'hideWithChildren': instance.hideWithChildren,
      'withChildrenDone': instance.withChildrenDone,
      'withChildrenOverdue': instance.withChildrenOverdue,
      'showCompletedTasks': instance.showCompletedTasks,
      'showCompletedTasksDays': instance.showCompletedTasksDays,
      'showRejectedTasks': instance.showRejectedTasks,
      'showRejectedTasksDays': instance.showRejectedTasksDays,
      'hideDelegatedTasks': instance.hideDelegatedTasks,
      'showObsoleteTasks': instance.showObsoleteTasks,
      'withChildrenRejected': instance.withChildrenRejected,
      'withTasksOnControl': instance.withTasksOnControl,
      'onlyPreparedTasks': instance.onlyPreparedTasks,
      'onlyOnControlTasks': instance.onlyOnControlTasks,
      'contains': instance.contains,
      'isPersonalReview': instance.isPersonalReview,
    };

const _$AllTaskTypeEnumTypeEnumMap = {
  AllTaskTypeEnumType.unknown: 'UNKNOWN',
  AllTaskTypeEnumType.agreement: 'AGREEMENT',
  AllTaskTypeEnumType.signing: 'SIGNING',
  AllTaskTypeEnumType.approval: 'APPROVAL',
  AllTaskTypeEnumType.registration: 'REGISTRATION',
  AllTaskTypeEnumType.forPerformance: 'FOR_PERFORMANCE',
  AllTaskTypeEnumType.forConsideration: 'FOR_CONSIDERATION',
  AllTaskTypeEnumType.forAgreement: 'FOR_AGREEMENT',
  AllTaskTypeEnumType.forInformation: 'FOR_INFORMATION',
  AllTaskTypeEnumType.forIncoming: 'FOR_INCOMING',
  AllTaskTypeEnumType.forOutcoming: 'FOR_OUTCOMING',
  AllTaskTypeEnumType.forInternalUse: 'FOR_INTERNAL_USE',
  AllTaskTypeEnumType.forNormoControl: 'FOR_NORMO_CONTROL',
  AllTaskTypeEnumType.normativeControl: 'NORMATIVE_CONTROL',
  AllTaskTypeEnumType.forHrDecision: 'FOR_HR_DECISION',
  AllTaskTypeEnumType.forImplementation: 'FOR_IMPLEMENTATION',
  AllTaskTypeEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserTasksArguments _$UserTasksArgumentsFromJson(Map<String, dynamic> json) {
  return UserTasksArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputUserTaskSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : UserTasksAttributeSearchType.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserTasksArgumentsToJson(UserTasksArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };
