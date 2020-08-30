// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocumentsFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocumentsToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'eventCount': instance.eventCount,
          'type': _$DocumentTypeEnumMap[instance.type],
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

GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$AttachmentsFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String
    ..fileType = json['fileType'] as String
    ..fileLength = json['fileLength'] as int
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..authorId = json['authorId'] as String
    ..isDeleted = json['isDeleted'] as bool
    ..isLocked = json['isLocked'] as bool;
}

Map<String,
    dynamic> _$GetDocument$DFSQuery$DocumentQueryAPI$Document$AttachmentsToJson(
        GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'fileLength': instance.fileLength,
      'date': instance.date?.toIso8601String(),
      'authorId': instance.authorId,
      'isDeleted': instance.isDeleted,
      'isLocked': instance.isLocked,
    };

GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfoFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo()
    ..isRegistered = json['isRegistered'] as bool
    ..registerNumber = json['registerNumber'] as String
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfoToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo
                instance) =>
        <String, dynamic>{
          'isRegistered': instance.isRegistered,
          'registerNumber': instance.registerNumber,
          'registrationDate': instance.registrationDate?.toIso8601String(),
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBookFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook()
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBookToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem()
    ..authorId = json['authorId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..documentId = json['documentId'] as String
    ..isPermanent = json['isPermanent'] as bool
    ..number = json['number'] as int
    ..registrationBookId = json['registrationBookId'] as String
    ..registrationBook = json['registrationBook'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook
            .fromJson(json['registrationBook'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem
                instance) =>
        <String, dynamic>{
          'authorId': instance.authorId,
          'date': instance.date?.toIso8601String(),
          'documentId': instance.documentId,
          'isPermanent': instance.isPermanent,
          'number': instance.number,
          'registrationBookId': instance.registrationBookId,
          'registrationBook': instance.registrationBook?.toJson(),
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RevokedFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked()
    ..isRevoked = json['isRevoked'] as bool
    ..revokedNote = json['revokedNote'] as String
    ..isTaskCanceled = json['isTaskCanceled'] as bool;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RevokedToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked instance) =>
        <String, dynamic>{
          'isRevoked': instance.isRevoked,
          'revokedNote': instance.revokedNote,
          'isTaskCanceled': instance.isTaskCanceled,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem()
    ..id = json['id'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..hasAccess = json['hasAccess'] as bool
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..$$typename = json['__typename'] as String
    ..contractResponderId = json['ContractResponderId'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'title': instance.title,
          'hasAccess': instance.hasAccess,
          'adminIds': instance.adminIds,
          '__typename': instance.$$typename,
          'ContractResponderId': instance.contractResponderId,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem()
    ..id = json['id'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..hasAccess = json['hasAccess'] as bool
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..$$typename = json['__typename'] as String
    ..letterResponderId = json['LetterResponderId'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'title': instance.title,
          'hasAccess': instance.hasAccess,
          'adminIds': instance.adminIds,
          '__typename': instance.$$typename,
          'LetterResponderId': instance.letterResponderId,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem()
    ..id = json['id'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..hasAccess = json['hasAccess'] as bool
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..$$typename = json['__typename'] as String
    ..responderId = json['responderId'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'title': instance.title,
          'hasAccess': instance.hasAccess,
          'adminIds': instance.adminIds,
          '__typename': instance.$$typename,
          'responderId': instance.responderId,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$DocumentFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document()
    ..id = json['id'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..hasAccess = json['hasAccess'] as bool
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$DocumentToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'title': instance.title,
          'hasAccess': instance.hasAccess,
          'adminIds': instance.adminIds,
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RelationsFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations()
    ..relationId = json['relationId'] as String
    ..documentId = json['documentId'] as String
    ..document = json['document'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
            .fromJson(json['document'] as Map<String, dynamic>)
    ..relationType = _$enumDecodeNullable(
        _$RelationTypeEnumMap, json['relationType'],
        unknownValue: RelationType.artemisUnknown);
}

Map<String,
    dynamic> _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RelationsToJson(
        GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations instance) =>
    <String, dynamic>{
      'relationId': instance.relationId,
      'documentId': instance.documentId,
      'document': instance.document?.toJson(),
      'relationType': _$RelationTypeEnumMap[instance.relationType],
    };

const _$RelationTypeEnumMap = {
  RelationType.option1: 'OPTION_1',
  RelationType.counterOption1: 'COUNTER_OPTION_1',
  RelationType.option2: 'OPTION_2',
  RelationType.counterOption2: 'COUNTER_OPTION_2',
  RelationType.option3: 'OPTION_3',
  RelationType.counterOption3: 'COUNTER_OPTION_3',
  RelationType.option4: 'OPTION_4',
  RelationType.counterOption4: 'COUNTER_OPTION_4',
  RelationType.option5: 'OPTION_5',
  RelationType.counterOption5: 'COUNTER_OPTION_5',
  RelationType.option6: 'OPTION_6',
  RelationType.counterOption6: 'COUNTER_OPTION_6',
  RelationType.option7: 'OPTION_7',
  RelationType.counterOption7: 'COUNTER_OPTION_7',
  RelationType.option8: 'OPTION_8',
  RelationType.counterOption8: 'COUNTER_OPTION_8',
  RelationType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditListFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList()
    ..masters = (json['masters'] as List)?.map((e) => e as String)?.toList()
    ..userId = json['userId'] as String
    ..whenRead = json['whenRead'] == null
        ? null
        : DateTime.parse(json['whenRead'] as String);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditListToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList
                instance) =>
        <String, dynamic>{
          'masters': instance.masters,
          'userId': instance.userId,
          'whenRead': instance.whenRead?.toIso8601String(),
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroupsFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups()
    ..id = json['id'] as String
    ..authorId = json['authorId'] as String
    ..hasChildren = json['hasChildren'] as bool
    ..isDeleted = json['isDeleted'] as bool
    ..name = json['name'] as String
    ..parentId = json['parentId'] as String
    ..state = _$enumDecodeNullable(_$MailingItemStateEnumMap, json['state'],
        unknownValue: MailingItemState.artemisUnknown)
    ..when =
        json['when'] == null ? null : DateTime.parse(json['when'] as String);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroupsToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'authorId': instance.authorId,
          'hasChildren': instance.hasChildren,
          'isDeleted': instance.isDeleted,
          'name': instance.name,
          'parentId': instance.parentId,
          'state': _$MailingItemStateEnumMap[instance.state],
          'when': instance.when?.toIso8601String(),
        };

const _$MailingItemStateEnumMap = {
  MailingItemState.undefined: 'UNDEFINED',
  MailingItemState.pending: 'PENDING',
  MailingItemState.activated: 'ACTIVATED',
  MailingItemState.suspended: 'SUSPENDED',
  MailingItemState.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsersFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers()
    ..authorId = json['authorId'] as String
    ..state = _$enumDecodeNullable(_$MailingItemStateEnumMap, json['state'],
        unknownValue: MailingItemState.artemisUnknown)
    ..userId = json['userId'] as String
    ..when =
        json['when'] == null ? null : DateTime.parse(json['when'] as String);
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsersToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers
                instance) =>
        <String, dynamic>{
          'authorId': instance.authorId,
          'state': _$MailingItemStateEnumMap[instance.state],
          'userId': instance.userId,
          'when': instance.when?.toIso8601String(),
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem()
    ..id = json['id'] as String
    ..type = json['type'] == null
        ? null
        : ContractItemFragmentMixin$Type.fromJson(
            json['type'] as Map<String, dynamic>)
    ..conclusionDate = json['conclusionDate'] == null
        ? null
        : DateTime.parse(json['conclusionDate'] as String)
    ..contractor = json['contractor'] as String
    ..curatorId = json['curatorId'] as String
    ..departmentResponder = json['departmentResponder'] as String
    ..legalNumber = json['legalNumber'] as String
    ..paymentEndDate = json['paymentEndDate'] == null
        ? null
        : DateTime.parse(json['paymentEndDate'] as String)
    ..preparationDate = json['preparationDate'] == null
        ? null
        : DateTime.parse(json['preparationDate'] as String)
    ..reasonToEnter = json['reasonToEnter'] as String
    ..registerNumber = json['registerNumber'] as String
    ..responderId = json['responderId'] as String
    ..validityPeriod = json['validityPeriod'] == null
        ? null
        : ContractItemFragmentMixin$ValidityPeriod.fromJson(
            json['validityPeriod'] as Map<String, dynamic>)
    ..name = json['name'] as String
    ..subject = json['subject'] as String
    ..sum = json['sum'] == null
        ? null
        : ContractItemFragmentMixin$Sum.fromJson(
            json['sum'] as Map<String, dynamic>)
    ..systemNumber = json['systemNumber'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : ContractItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..status = json['status'] == null
        ? null
        : ContractItemFragmentMixin$Status.fromJson(
            json['status'] as Map<String, dynamic>)
    ..financialPositions = json['financialPositions'] == null
        ? null
        : ContractItemFragmentMixin$FinancialPositions.fromJson(
            json['financialPositions'] as Map<String, dynamic>)
    ..budgetItems = json['budgetItems'] == null
        ? null
        : ContractItemFragmentMixin$BudgetItems.fromJson(json['budgetItems'] as Map<String, dynamic>)
    ..note = json['note'] as String
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..commercialSecret = _$enumDecodeNullable(_$CommercialSecretEnumMap, json['commercialSecret'], unknownValue: CommercialSecret.artemisUnknown)
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'type': instance.type?.toJson(),
          'conclusionDate': instance.conclusionDate?.toIso8601String(),
          'contractor': instance.contractor,
          'curatorId': instance.curatorId,
          'departmentResponder': instance.departmentResponder,
          'legalNumber': instance.legalNumber,
          'paymentEndDate': instance.paymentEndDate?.toIso8601String(),
          'preparationDate': instance.preparationDate?.toIso8601String(),
          'reasonToEnter': instance.reasonToEnter,
          'registerNumber': instance.registerNumber,
          'responderId': instance.responderId,
          'validityPeriod': instance.validityPeriod?.toJson(),
          'name': instance.name,
          'subject': instance.subject,
          'sum': instance.sum?.toJson(),
          'systemNumber': instance.systemNumber,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'status': instance.status?.toJson(),
          'financialPositions': instance.financialPositions?.toJson(),
          'budgetItems': instance.budgetItems?.toJson(),
          'note': instance.note,
          'enableNetworkFolder': instance.enableNetworkFolder,
          'commercialSecret':
              _$CommercialSecretEnumMap[instance.commercialSecret],
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

const _$CommercialSecretEnumMap = {
  CommercialSecret.no: 'NO',
  CommercialSecret.containsKt: 'CONTAINS_KT',
  CommercialSecret.containsKi: 'CONTAINS_KI',
  CommercialSecret.containsDsp: 'CONTAINS_DSP',
  CommercialSecret.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$DocumentStatusEnumTypeEnumMap = {
  DocumentStatusEnumType.unknown: 'UNKNOWN',
  DocumentStatusEnumType.notSupported: 'NOT_SUPPORTED',
  DocumentStatusEnumType.draft: 'DRAFT',
  DocumentStatusEnumType.inProgress: 'IN_PROGRESS',
  DocumentStatusEnumType.expired: 'EXPIRED',
  DocumentStatusEnumType.rejected: 'REJECTED',
  DocumentStatusEnumType.completed: 'COMPLETED',
  DocumentStatusEnumType.reviewed: 'REVIEWED',
  DocumentStatusEnumType.sended: 'SENDED',
  DocumentStatusEnumType.onAgreement: 'ON_AGREEMENT',
  DocumentStatusEnumType.revoked: 'REVOKED',
  DocumentStatusEnumType.agreed: 'AGREED',
  DocumentStatusEnumType.signed: 'SIGNED',
  DocumentStatusEnumType.solved: 'SOLVED',
  DocumentStatusEnumType.onPerformance: 'ON_PERFORMANCE',
  DocumentStatusEnumType.agreedByAddressee: 'AGREED_BY_ADDRESSEE',
  DocumentStatusEnumType.agreedByAddresseeInProgress:
      'AGREED_BY_ADDRESSEE_IN_PROGRESS',
  DocumentStatusEnumType.rejectedByAddressee: 'REJECTED_BY_ADDRESSEE',
  DocumentStatusEnumType.rejectedByAddresseeInProgress:
      'REJECTED_BY_ADDRESSEE_IN_PROGRESS',
  DocumentStatusEnumType.rejectedByAddresseeByPerformer:
      'REJECTED_BY_ADDRESSEE_BY_PERFORMER',
  DocumentStatusEnumType.rejectedByAddresseeExecutedByPerformer:
      'REJECTED_BY_ADDRESSEE_EXECUTED_BY_PERFORMER',
  DocumentStatusEnumType.agreedByAddresseeRejectedByPerformer:
      'AGREED_BY_ADDRESSEE_REJECTED_BY_PERFORMER',
  DocumentStatusEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$UserRoleInDocumentEnumMap = {
  UserRoleInDocument.nobody: 'NOBODY',
  UserRoleInDocument.participant: 'PARTICIPANT',
  UserRoleInDocument.editor: 'EDITOR',
  UserRoleInDocument.registrar: 'REGISTRAR',
  UserRoleInDocument.toExamine: 'TO_EXAMINE',
  UserRoleInDocument.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem()
    ..id = json['id'] as String
    ..responderId = json['responderId'] as String
    ..status = json['status'] == null
        ? null
        : LetterItemFragmentMixin$Status.fromJson(
            json['status'] as Map<String, dynamic>)
    ..head = json['head'] as String
    ..senderId = json['senderId'] as String
    ..letterAddresseeIds =
        (json['letterAddresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..actorId = json['actorId'] as String
    ..personally = json['personally'] as bool
    ..additionSheetsQuantity = json['additionSheetsQuantity'] as int
    ..sheetsQuantity = json['sheetsQuantity'] as int
    ..remark = json['remark'] as String
    ..text = json['text'] as String
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..commercialSecret = _$enumDecodeNullable(
        _$CommercialSecretEnumMap, json['commercialSecret'],
        unknownValue: CommercialSecret.artemisUnknown)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String,
    dynamic> _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItemToJson(
        GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'responderId': instance.responderId,
      'status': instance.status?.toJson(),
      'head': instance.head,
      'senderId': instance.senderId,
      'letterAddresseeIds': instance.letterAddresseeIds,
      'actorId': instance.actorId,
      'personally': instance.personally,
      'additionSheetsQuantity': instance.additionSheetsQuantity,
      'sheetsQuantity': instance.sheetsQuantity,
      'remark': instance.remark,
      'text': instance.text,
      'tasks': instance.tasks,
      'commercialSecret': _$CommercialSecretEnumMap[instance.commercialSecret],
      'enableNetworkFolder': instance.enableNetworkFolder,
      'eventCount': instance.eventCount,
      'version': instance.version,
      'subDocuments': instance.subDocuments?.map((e) => e?.toJson())?.toList(),
      'attachments': instance.attachments?.map((e) => e?.toJson())?.toList(),
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'adminIds': instance.adminIds,
      'readerIds': instance.readerIds,
      'registrationInfo': instance.registrationInfo?.toJson(),
      'registrationBookItem': instance.registrationBookItem?.toJson(),
      'revoked': instance.revoked?.toJson(),
      'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
      'examinationAuditList':
          instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'documentSerialNumber': instance.documentSerialNumber,
      'documentSystemNumber': instance.documentSystemNumber,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'isLinkAccessAllowed': instance.isLinkAccessAllowed,
      'isPublished': instance.isPublished,
      'publisherId': instance.publisherId,
      'whenPublished': instance.whenPublished?.toIso8601String(),
      'mailingGroups':
          instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
      'mailingUsers': instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
      'userRoles': instance.userRoles
          ?.map((e) => _$UserRoleInDocumentEnumMap[e])
          ?.toList(),
      '__typename': instance.$$typename,
    };

GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem()
    ..id = json['id'] as String
    ..incomingSender = json['incomingSender'] == null
        ? null
        : IncomingDocItemFragmentMixin$IncomingSender.fromJson(
            json['incomingSender'] as Map<String, dynamic>)
    ..status = json['status'] == null
        ? null
        : IncomingDocItemFragmentMixin$Status.fromJson(
            json['status'] as Map<String, dynamic>)
    ..incomingActor = json['incomingActor'] as String
    ..documentDate = json['documentDate'] == null
        ? null
        : DateTime.parse(json['documentDate'] as String)
    ..type = json['type'] == null
        ? null
        : IncomingDocItemFragmentMixin$Type.fromJson(
            json['type'] as Map<String, dynamic>)
    ..head = json['head'] as String
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..senderOutgoingNumber = json['senderOutgoingNumber'] as String
    ..specialControls = json['specialControls'] == null
        ? null
        : IncomingDocItemFragmentMixin$SpecialControls.fromJson(
            json['specialControls'] as Map<String, dynamic>)
    ..controlDate = json['controlDate'] == null
        ? null
        : DateTime.parse(json['controlDate'] as String)
    ..controlMark = json['controlMark'] as bool
    ..remark = json['remark'] as String
    ..commercialSecret = _$enumDecodeNullable(
        _$CommercialSecretEnumMap, json['commercialSecret'],
        unknownValue: CommercialSecret.artemisUnknown)
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..controlCardsCount = json['controlCardsCount'] as int
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) =>
            e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'incomingSender': instance.incomingSender?.toJson(),
          'status': instance.status?.toJson(),
          'incomingActor': instance.incomingActor,
          'documentDate': instance.documentDate?.toIso8601String(),
          'type': instance.type?.toJson(),
          'head': instance.head,
          'addresseeIds': instance.addresseeIds,
          'senderOutgoingNumber': instance.senderOutgoingNumber,
          'specialControls': instance.specialControls?.toJson(),
          'controlDate': instance.controlDate?.toIso8601String(),
          'controlMark': instance.controlMark,
          'remark': instance.remark,
          'commercialSecret':
              _$CommercialSecretEnumMap[instance.commercialSecret],
          'tasks': instance.tasks,
          'controlCardsCount': instance.controlCardsCount,
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem()
    ..id = json['id'] as String
    ..outgoingActor = json['outgoingActor'] as String
    ..addressees = (json['addressees'] as List)
        ?.map((e) => e == null
            ? null
            : OutgoingDocItemFragmentMixin$Addressees.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..head = json['head'] as String
    ..remark = json['remark'] as String
    ..sender = json['sender'] as String
    ..outgoingResponder = json['outgoingResponder'] as String
    ..status = json['status'] == null
        ? null
        : OutgoingDocItemFragmentMixin$Status.fromJson(
            json['status'] as Map<String, dynamic>)
    ..type = json['type'] == null
        ? null
        : OutgoingDocItemFragmentMixin$Type.fromJson(
            json['type'] as Map<String, dynamic>)
    ..reservationInfo = json['reservationInfo'] == null
        ? null
        : OutgoingDocItemFragmentMixin$ReservationInfo.fromJson(
            json['reservationInfo'] as Map<String, dynamic>)
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : OutgoingDocItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..commercialSecret = _$enumDecodeNullable(
        _$CommercialSecretEnumMap, json['commercialSecret'],
        unknownValue: CommercialSecret.artemisUnknown)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'outgoingActor': instance.outgoingActor,
          'addressees': instance.addressees?.map((e) => e?.toJson())?.toList(),
          'head': instance.head,
          'remark': instance.remark,
          'sender': instance.sender,
          'outgoingResponder': instance.outgoingResponder,
          'status': instance.status?.toJson(),
          'type': instance.type?.toJson(),
          'reservationInfo': instance.reservationInfo?.toJson(),
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'commercialSecret':
              _$CommercialSecretEnumMap[instance.commercialSecret],
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..taxattachments = (json['taxattachments'] as List)
        ?.map((e) => e == null
            ? null
            : TaxExpertiseItemFragmentMixin$Taxattachments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..consequenceIncomeTax = json['consequenceIncomeTax'] == null
        ? null
        : TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax.fromJson(
            json['consequenceIncomeTax'] as Map<String, dynamic>)
    ..contractorConsequenceIncomeTax =
        json['contractorConsequenceIncomeTax'] == null
            ? null
            : TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax.fromJson(
                json['contractorConsequenceIncomeTax'] as Map<String, dynamic>)
    ..consequenceVAT = json['consequenceVAT'] == null
        ? null
        : TaxExpertiseItemFragmentMixin$ConsequenceVAT.fromJson(
            json['consequenceVAT'] as Map<String, dynamic>)
    ..contractorConsequenceVAT = json['contractorConsequenceVAT'] == null
        ? null
        : TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT.fromJson(
            json['contractorConsequenceVAT'] as Map<String, dynamic>)
    ..consequenceOtherTaxes = json['consequenceOtherTaxes'] == null
        ? null
        : TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes.fromJson(json['consequenceOtherTaxes'] as Map<String, dynamic>)
    ..contractorConsequenceOtherTaxes = json['contractorConsequenceOtherTaxes'] == null ? null : TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes.fromJson(json['contractorConsequenceOtherTaxes'] as Map<String, dynamic>)
    ..taxRisks = json['taxRisks'] == null ? null : TaxExpertiseItemFragmentMixin$TaxRisks.fromJson(json['taxRisks'] as Map<String, dynamic>)
    ..contractorTaxRisks = json['contractorTaxRisks'] == null ? null : TaxExpertiseItemFragmentMixin$ContractorTaxRisks.fromJson(json['contractorTaxRisks'] as Map<String, dynamic>)
    ..recommendations = json['recommendations'] as String
    ..notionTaxAuthorities = json['notionTaxAuthorities'] as String
    ..notionMinFin = json['notionMinFin'] as String
    ..notionTribunal = json['notionTribunal'] as String
    ..impactAssessmentKGN = json['impactAssessmentKGN'] as String
    ..conclusionResultContract = json['conclusionResultContract'] as String
    ..responderTaxId = json['responderTaxId'] as String
    ..responderAccountant = json['responderAccountant'] as String
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'eventCount': instance.eventCount,
          'taxattachments':
              instance.taxattachments?.map((e) => e?.toJson())?.toList(),
          'consequenceIncomeTax': instance.consequenceIncomeTax?.toJson(),
          'contractorConsequenceIncomeTax':
              instance.contractorConsequenceIncomeTax?.toJson(),
          'consequenceVAT': instance.consequenceVAT?.toJson(),
          'contractorConsequenceVAT':
              instance.contractorConsequenceVAT?.toJson(),
          'consequenceOtherTaxes': instance.consequenceOtherTaxes?.toJson(),
          'contractorConsequenceOtherTaxes':
              instance.contractorConsequenceOtherTaxes?.toJson(),
          'taxRisks': instance.taxRisks?.toJson(),
          'contractorTaxRisks': instance.contractorTaxRisks?.toJson(),
          'recommendations': instance.recommendations,
          'notionTaxAuthorities': instance.notionTaxAuthorities,
          'notionMinFin': instance.notionMinFin,
          'notionTribunal': instance.notionTribunal,
          'impactAssessmentKGN': instance.impactAssessmentKGN,
          'conclusionResultContract': instance.conclusionResultContract,
          'responderTaxId': instance.responderTaxId,
          'responderAccountant': instance.responderAccountant,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem()
    ..id = json['id'] as String
    ..addresseeId = json['addresseeId'] as String
    ..applicant = json['applicant'] == null
        ? null
        : RequestToHireItemFragmentMixin$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..applicantDetails = json['applicantDetails'] == null
        ? null
        : RequestToHireItemFragmentMixin$ApplicantDetails.fromJson(
            json['applicantDetails'] as Map<String, dynamic>)
    ..compileTitle = json['compileTitle'] as String
    ..dateOfVacancy = json['dateOfVacancy'] == null
        ? null
        : DateTime.parse(json['dateOfVacancy'] as String)
    ..departmentTo = json['departmentTo'] as String
    ..positionTo = json['positionTo'] as String
    ..hireDate = json['hireDate'] == null
        ? null
        : DateTime.parse(json['hireDate'] as String)
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : RequestToHireItemFragmentMixin$OrderDescriptor.fromJson(
            json['orderDescriptor'] as Map<String, dynamic>)
    ..recruitmentSource = json['recruitmentSource'] == null
        ? null
        : RequestToHireItemFragmentMixin$RecruitmentSource.fromJson(
            json['recruitmentSource'] as Map<String, dynamic>)
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..remark = json['remark'] as String
    ..responderId = json['responderId'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : RequestToHireItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'addresseeId': instance.addresseeId,
          'applicant': instance.applicant?.toJson(),
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'applicantDetails': instance.applicantDetails?.toJson(),
          'compileTitle': instance.compileTitle,
          'dateOfVacancy': instance.dateOfVacancy?.toIso8601String(),
          'departmentTo': instance.departmentTo,
          'positionTo': instance.positionTo,
          'hireDate': instance.hireDate?.toIso8601String(),
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'recruitmentSource': instance.recruitmentSource?.toJson(),
          'tasks': instance.tasks,
          'remark': instance.remark,
          'responderId': instance.responderId,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem()
    ..id = json['id'] as String
    ..addresseeId = json['addresseeId'] as String
    ..applicant = json['applicant'] == null
        ? null
        : RequestForDismissalItemFragmentMixin$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..applicantDetails = json['applicantDetails'] == null
        ? null
        : RequestForDismissalItemFragmentMixin$ApplicantDetails.fromJson(
            json['applicantDetails'] as Map<String, dynamic>)
    ..clauseEmploymentLaw = json['clauseEmploymentLaw'] as String
    ..compileTitle = json['compileTitle'] as String
    ..departmentFrom = json['departmentFrom'] as String
    ..positionFrom = json['positionFrom'] as String
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : RequestForDismissalItemFragmentMixin$OrderDescriptor.fromJson(
            json['orderDescriptor'] as Map<String, dynamic>)
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..remark = json['remark'] as String
    ..responderId = json['responderId'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : RequestForDismissalItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..dismissalDate = json['dismissalDate'] == null
        ? null
        : DateTime.parse(json['dismissalDate'] as String)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'addresseeId': instance.addresseeId,
          'applicant': instance.applicant?.toJson(),
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'applicantDetails': instance.applicantDetails?.toJson(),
          'clauseEmploymentLaw': instance.clauseEmploymentLaw,
          'compileTitle': instance.compileTitle,
          'departmentFrom': instance.departmentFrom,
          'positionFrom': instance.positionFrom,
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'tasks': instance.tasks,
          'remark': instance.remark,
          'responderId': instance.responderId,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'dismissalDate': instance.dismissalDate?.toIso8601String(),
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem()
    ..id = json['id'] as String
    ..addresseeId = json['addresseeId'] as String
    ..applicant = json['applicant'] == null
        ? null
        : TransferRequestItemFragmentMixin$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..applicantDetails = json['applicantDetails'] == null
        ? null
        : TransferRequestItemFragmentMixin$ApplicantDetails.fromJson(
            json['applicantDetails'] as Map<String, dynamic>)
    ..compileTitle = json['compileTitle'] as String
    ..dateOfVacancy = json['dateOfVacancy'] == null
        ? null
        : DateTime.parse(json['dateOfVacancy'] as String)
    ..departmentFrom = json['departmentFrom'] as String
    ..departmentTo = json['departmentTo'] as String
    ..positionFrom = json['positionFrom'] as String
    ..positionTo = json['positionTo'] as String
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : TransferRequestItemFragmentMixin$OrderDescriptor.fromJson(
            json['orderDescriptor'] as Map<String, dynamic>)
    ..recruitmentSource = json['recruitmentSource'] == null
        ? null
        : TransferRequestItemFragmentMixin$RecruitmentSource.fromJson(
            json['recruitmentSource'] as Map<String, dynamic>)
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..remark = json['remark'] as String
    ..responderId = json['responderId'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : TransferRequestItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..transferDate = json['transferDate'] == null
        ? null
        : DateTime.parse(json['transferDate'] as String)
    ..transferType = _$enumDecodeNullable(_$TransferRequestTypeEnumMap, json['transferType'],
        unknownValue: TransferRequestType.artemisUnknown)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'addresseeId': instance.addresseeId,
          'applicant': instance.applicant?.toJson(),
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'applicantDetails': instance.applicantDetails?.toJson(),
          'compileTitle': instance.compileTitle,
          'dateOfVacancy': instance.dateOfVacancy?.toIso8601String(),
          'departmentFrom': instance.departmentFrom,
          'departmentTo': instance.departmentTo,
          'positionFrom': instance.positionFrom,
          'positionTo': instance.positionTo,
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'recruitmentSource': instance.recruitmentSource?.toJson(),
          'tasks': instance.tasks,
          'remark': instance.remark,
          'responderId': instance.responderId,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'transferDate': instance.transferDate?.toIso8601String(),
          'transferType': _$TransferRequestTypeEnumMap[instance.transferType],
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

const _$TransferRequestTypeEnumMap = {
  TransferRequestType.onTemporary: 'ON_TEMPORARY',
  TransferRequestType.onPermanent: 'ON_PERMANENT',
  TransferRequestType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem()
    ..id = json['id'] as String
    ..addresseeId = json['addresseeId'] as String
    ..applicant = json['applicant'] == null
        ? null
        : RequestCancellationForDismissalItemFragmentMixin$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..applicantDetails = json['applicantDetails'] == null
        ? null
        : RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails.fromJson(
            json['applicantDetails'] as Map<String, dynamic>)
    ..clauseEmploymentLaw = json['clauseEmploymentLaw'] as String
    ..compileTitle = json['compileTitle'] as String
    ..departmentFrom = json['departmentFrom'] as String
    ..positionFrom = json['positionFrom'] as String
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor.fromJson(
            json['orderDescriptor'] as Map<String, dynamic>)
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..remark = json['remark'] as String
    ..responderId = json['responderId'] as String
    ..requestForDismissalId = json['requestForDismissalId'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal
            .fromJson(json['scanCopyOriginal'] as Map<String, dynamic>)
    ..dismissalDate = json['dismissalDate'] == null
        ? null
        : DateTime.parse(json['dismissalDate'] as String)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'addresseeId': instance.addresseeId,
          'applicant': instance.applicant?.toJson(),
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'applicantDetails': instance.applicantDetails?.toJson(),
          'clauseEmploymentLaw': instance.clauseEmploymentLaw,
          'compileTitle': instance.compileTitle,
          'departmentFrom': instance.departmentFrom,
          'positionFrom': instance.positionFrom,
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'tasks': instance.tasks,
          'remark': instance.remark,
          'responderId': instance.responderId,
          'requestForDismissalId': instance.requestForDismissalId,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'dismissalDate': instance.dismissalDate?.toIso8601String(),
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem()
    ..directiveTitle = json['directiveTitle'] as String
    ..signer = json['signer'] as String
    ..actor = json['actor'] as String
    ..responder = json['responder'] as String
    ..overseer = json['overseer'] as String
    ..placeOfRegistration = json['placeOfRegistration'] == null
        ? null
        : LnaDirectiveItemFragmentMixin$PlaceOfRegistration.fromJson(
            json['placeOfRegistration'] as Map<String, dynamic>)
    ..validStatus = json['validStatus'] == null
        ? null
        : LnaDirectiveItemFragmentMixin$ValidStatus.fromJson(
            json['validStatus'] as Map<String, dynamic>)
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : LnaDirectiveItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..remark = json['remark'] as String
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..examinationFiles =
        (json['examinationFiles'] as List)?.map((e) => e as String)?.toList()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem
                instance) =>
        <String, dynamic>{
          'directiveTitle': instance.directiveTitle,
          'signer': instance.signer,
          'actor': instance.actor,
          'responder': instance.responder,
          'overseer': instance.overseer,
          'placeOfRegistration': instance.placeOfRegistration?.toJson(),
          'validStatus': instance.validStatus?.toJson(),
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'remark': instance.remark,
          'enableNetworkFolder': instance.enableNetworkFolder,
          'tasks': instance.tasks,
          'examinationFiles': instance.examinationFiles,
          'id': instance.id,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem()
    ..orderTitle = json['orderTitle'] as String
    ..signer = json['signer'] as String
    ..actor = json['actor'] as String
    ..responder = json['responder'] as String
    ..overseer = json['overseer'] as String
    ..placeOfRegistration = json['placeOfRegistration'] == null
        ? null
        : LnaOrderItemFragmentMixin$PlaceOfRegistration.fromJson(
            json['placeOfRegistration'] as Map<String, dynamic>)
    ..validStatus = json['validStatus'] == null
        ? null
        : LnaOrderItemFragmentMixin$ValidStatus.fromJson(
            json['validStatus'] as Map<String, dynamic>)
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : LnaOrderItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..remark = json['remark'] as String
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..examinationFiles =
        (json['examinationFiles'] as List)?.map((e) => e as String)?.toList()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) =>
            e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem
                instance) =>
        <String, dynamic>{
          'orderTitle': instance.orderTitle,
          'signer': instance.signer,
          'actor': instance.actor,
          'responder': instance.responder,
          'overseer': instance.overseer,
          'placeOfRegistration': instance.placeOfRegistration?.toJson(),
          'validStatus': instance.validStatus?.toJson(),
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'remark': instance.remark,
          'enableNetworkFolder': instance.enableNetworkFolder,
          'tasks': instance.tasks,
          'examinationFiles': instance.examinationFiles,
          'id': instance.id,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem()
    ..id = json['id'] as String
    ..addresseeId = json['addresseeId'] as String
    ..applicant = json['applicant'] == null
        ? null
        : GenericItemFragmentMixin$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..applicantId = json['applicantId'] as String
    ..applicantDetails = json['applicantDetails'] == null
        ? null
        : GenericItemFragmentMixin$ApplicantDetails.fromJson(
            json['applicantDetails'] as Map<String, dynamic>)
    ..categoryId = json['categoryId'] as String
    ..compileTitle = json['compileTitle'] as String
    ..curatorId = json['curatorId'] as String
    ..tasks = (json['tasks'] as List)?.map((e) => e as String)?.toList()
    ..text = json['text'] as String
    ..remark = json['remark'] as String
    ..responderId = json['responderId'] as String
    ..scanCopyOriginal = json['scanCopyOriginal'] == null
        ? null
        : GenericItemFragmentMixin$ScanCopyOriginal.fromJson(
            json['scanCopyOriginal'] as Map<String, dynamic>)
    ..enableNetworkFolder = json['enableNetworkFolder'] as bool
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'], unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'addresseeId': instance.addresseeId,
          'applicant': instance.applicant?.toJson(),
          'applicantId': instance.applicantId,
          'applicantDetails': instance.applicantDetails?.toJson(),
          'categoryId': instance.categoryId,
          'compileTitle': instance.compileTitle,
          'curatorId': instance.curatorId,
          'tasks': instance.tasks,
          'text': instance.text,
          'remark': instance.remark,
          'responderId': instance.responderId,
          'scanCopyOriginal': instance.scanCopyOriginal?.toJson(),
          'enableNetworkFolder': instance.enableNetworkFolder,
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItemFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem()
    ..id = json['id'] as String
    ..responderId = json['responderId'] as String
    ..title = json['title'] as String
    ..senderId = json['senderId'] as String
    ..signature = json['signature'] as String
    ..mailingGroupsIds =
        (json['mailingGroupsIds'] as List)?.map((e) => e as String)?.toList()
    ..body = json['body'] as String
    ..isSent = json['isSent'] as bool
    ..sendingAuthor = json['sendingAuthor'] as String
    ..sendingDate = json['sendingDate'] == null
        ? null
        : DateTime.parse(json['sendingDate'] as String)
    ..massMailMailingGroups = (json['massMailMailingGroups'] as List)
        ?.map((e) => e == null
            ? null
            : MassMailItemFragmentMixin$MassMailMailingGroups.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked = json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItemToJson(
            GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'responderId': instance.responderId,
          'title': instance.title,
          'senderId': instance.senderId,
          'signature': instance.signature,
          'mailingGroupsIds': instance.mailingGroupsIds,
          'body': instance.body,
          'isSent': instance.isSent,
          'sendingAuthor': instance.sendingAuthor,
          'sendingDate': instance.sendingDate?.toIso8601String(),
          'massMailMailingGroups':
              instance.massMailMailingGroups?.map((e) => e?.toJson())?.toList(),
          'eventCount': instance.eventCount,
          'version': instance.version,
          'subDocuments':
              instance.subDocuments?.map((e) => e?.toJson())?.toList(),
          'attachments':
              instance.attachments?.map((e) => e?.toJson())?.toList(),
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'adminIds': instance.adminIds,
          'readerIds': instance.readerIds,
          'registrationInfo': instance.registrationInfo?.toJson(),
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'revoked': instance.revoked?.toJson(),
          'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
          'examinationAuditList':
              instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
          'authorId': instance.authorId,
          'editorId': instance.editorId,
          'whenCreated': instance.whenCreated?.toIso8601String(),
          'whenEdited': instance.whenEdited?.toIso8601String(),
          'documentSerialNumber': instance.documentSerialNumber,
          'documentSystemNumber': instance.documentSystemNumber,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'isLinkAccessAllowed': instance.isLinkAccessAllowed,
          'isPublished': instance.isPublished,
          'publisherId': instance.publisherId,
          'whenPublished': instance.whenPublished?.toIso8601String(),
          'mailingGroups':
              instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
          'mailingUsers':
              instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
          'userRoles': instance.userRoles
              ?.map((e) => _$UserRoleInDocumentEnumMap[e])
              ?.toList(),
          '__typename': instance.$$typename,
        };

GetDocument$DFSQuery$DocumentQueryAPI$Document
    _$GetDocument$DFSQuery$DocumentQueryAPI$DocumentFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$Document()
    ..id = json['id'] as String
    ..eventCount = json['eventCount'] as int
    ..version = json['version'] as int
    ..subDocuments = (json['subDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..documentType = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..adminIds = (json['adminIds'] as List)?.map((e) => e as String)?.toList()
    ..readerIds = (json['readerIds'] as List)?.map((e) => e as String)?.toList()
    ..registrationInfo = json['registrationInfo'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(
            json['registrationInfo'] as Map<String, dynamic>)
    ..registrationBookItem = json['registrationBookItem'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(
            json['registrationBookItem'] as Map<String, dynamic>)
    ..revoked =
        json['revoked'] == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(json['revoked'] as Map<String, dynamic>)
    ..relations = (json['relations'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(e as Map<String, dynamic>))?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(e as Map<String, dynamic>))?.toList()
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..whenCreated = json['whenCreated'] == null ? null : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null ? null : DateTime.parse(json['whenEdited'] as String)
    ..documentSerialNumber = json['documentSerialNumber'] as int
    ..documentSystemNumber = json['documentSystemNumber'] as String
    ..documentStatus = _$enumDecodeNullable(_$DocumentStatusEnumTypeEnumMap, json['documentStatus'], unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..isLinkAccessAllowed = json['isLinkAccessAllowed'] as bool
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null ? null : DateTime.parse(json['whenPublished'] as String)
    ..mailingGroups = (json['mailingGroups'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(e as Map<String, dynamic>))?.toList()
    ..mailingUsers = (json['mailingUsers'] as List)?.map((e) => e == null ? null : GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(e as Map<String, dynamic>))?.toList()
    ..userRoles = (json['userRoles'] as List)?.map((e) => _$enumDecodeNullable(_$UserRoleInDocumentEnumMap, e))?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic> _$GetDocument$DFSQuery$DocumentQueryAPI$DocumentToJson(
        GetDocument$DFSQuery$DocumentQueryAPI$Document instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventCount': instance.eventCount,
      'version': instance.version,
      'subDocuments': instance.subDocuments?.map((e) => e?.toJson())?.toList(),
      'attachments': instance.attachments?.map((e) => e?.toJson())?.toList(),
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'adminIds': instance.adminIds,
      'readerIds': instance.readerIds,
      'registrationInfo': instance.registrationInfo?.toJson(),
      'registrationBookItem': instance.registrationBookItem?.toJson(),
      'revoked': instance.revoked?.toJson(),
      'relations': instance.relations?.map((e) => e?.toJson())?.toList(),
      'examinationAuditList':
          instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'documentSerialNumber': instance.documentSerialNumber,
      'documentSystemNumber': instance.documentSystemNumber,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'isLinkAccessAllowed': instance.isLinkAccessAllowed,
      'isPublished': instance.isPublished,
      'publisherId': instance.publisherId,
      'whenPublished': instance.whenPublished?.toIso8601String(),
      'mailingGroups':
          instance.mailingGroups?.map((e) => e?.toJson())?.toList(),
      'mailingUsers': instance.mailingUsers?.map((e) => e?.toJson())?.toList(),
      'userRoles': instance.userRoles
          ?.map((e) => _$UserRoleInDocumentEnumMap[e])
          ?.toList(),
      '__typename': instance.$$typename,
    };

GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments
    _$GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachmentsFromJson(
        Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String
    ..fileType = json['fileType'] as String
    ..fileLength = json['fileLength'] as int
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..authorId = json['authorId'] as String
    ..isDeleted = json['isDeleted'] as bool
    ..isLocked = json['isLocked'] as bool;
}

Map<String,
    dynamic> _$GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachmentsToJson(
        GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'fileLength': instance.fileLength,
      'date': instance.date?.toIso8601String(),
      'authorId': instance.authorId,
      'isDeleted': instance.isDeleted,
      'isLocked': instance.isLocked,
    };

GetDocument$DFSQuery$DocumentQueryAPI
    _$GetDocument$DFSQuery$DocumentQueryAPIFromJson(Map<String, dynamic> json) {
  return GetDocument$DFSQuery$DocumentQueryAPI()
    ..document = json['document'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI$Document.fromJson(
            json['document'] as Map<String, dynamic>)
    ..unlockedAttachments = (json['unlockedAttachments'] as List)
        ?.map((e) => e == null
            ? null
            : GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetDocument$DFSQuery$DocumentQueryAPIToJson(
        GetDocument$DFSQuery$DocumentQueryAPI instance) =>
    <String, dynamic>{
      'document': instance.document?.toJson(),
      'unlockedAttachments':
          instance.unlockedAttachments?.map((e) => e?.toJson())?.toList(),
    };

GetDocument$DFSQuery _$GetDocument$DFSQueryFromJson(Map<String, dynamic> json) {
  return GetDocument$DFSQuery()
    ..documentQueryAPI = json['documentQueryAPI'] == null
        ? null
        : GetDocument$DFSQuery$DocumentQueryAPI.fromJson(
            json['documentQueryAPI'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetDocument$DFSQueryToJson(
        GetDocument$DFSQuery instance) =>
    <String, dynamic>{
      'documentQueryAPI': instance.documentQueryAPI?.toJson(),
    };

ContractItemFragmentMixin$Type _$ContractItemFragmentMixin$TypeFromJson(
    Map<String, dynamic> json) {
  return ContractItemFragmentMixin$Type()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$ContractItemFragmentMixin$TypeToJson(
        ContractItemFragmentMixin$Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

ContractItemFragmentMixin$ValidityPeriod
    _$ContractItemFragmentMixin$ValidityPeriodFromJson(
        Map<String, dynamic> json) {
  return ContractItemFragmentMixin$ValidityPeriod()
    ..commencementDate = json['commencementDate'] == null
        ? null
        : DateTime.parse(json['commencementDate'] as String)
    ..expirationDate = json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate'] as String);
}

Map<String, dynamic> _$ContractItemFragmentMixin$ValidityPeriodToJson(
        ContractItemFragmentMixin$ValidityPeriod instance) =>
    <String, dynamic>{
      'commencementDate': instance.commencementDate?.toIso8601String(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };

ContractItemFragmentMixin$Sum$Code _$ContractItemFragmentMixin$Sum$CodeFromJson(
    Map<String, dynamic> json) {
  return ContractItemFragmentMixin$Sum$Code()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$ContractItemFragmentMixin$Sum$CodeToJson(
        ContractItemFragmentMixin$Sum$Code instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

ContractItemFragmentMixin$Sum _$ContractItemFragmentMixin$SumFromJson(
    Map<String, dynamic> json) {
  return ContractItemFragmentMixin$Sum()
    ..amount = (json['amount'] as num)?.toDouble()
    ..amountWithTax = (json['amountWithTax'] as num)?.toDouble()
    ..code = json['code'] == null
        ? null
        : ContractItemFragmentMixin$Sum$Code.fromJson(
            json['code'] as Map<String, dynamic>)
    ..tax = json['tax'] as int;
}

Map<String, dynamic> _$ContractItemFragmentMixin$SumToJson(
        ContractItemFragmentMixin$Sum instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'code': instance.code?.toJson(),
      'tax': instance.tax,
    };

ContractItemFragmentMixin$ScanCopyOriginal
    _$ContractItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return ContractItemFragmentMixin$ScanCopyOriginal()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String;
}

Map<String, dynamic> _$ContractItemFragmentMixin$ScanCopyOriginalToJson(
        ContractItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
    };

ContractItemFragmentMixin$Status _$ContractItemFragmentMixin$StatusFromJson(
    Map<String, dynamic> json) {
  return ContractItemFragmentMixin$Status()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$ContractItemFragmentMixin$StatusToJson(
        ContractItemFragmentMixin$Status instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

ContractItemFragmentMixin$FinancialPositions
    _$ContractItemFragmentMixin$FinancialPositionsFromJson(
        Map<String, dynamic> json) {
  return ContractItemFragmentMixin$FinancialPositions()
    ..catalog = json['catalog'] == null
        ? null
        : MultiReferenceValueFragmentMixin$Catalog.fromJson(
            json['catalog'] as Map<String, dynamic>)
    ..values = (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : MultiReferenceValueFragmentMixin$Values.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ContractItemFragmentMixin$FinancialPositionsToJson(
        ContractItemFragmentMixin$FinancialPositions instance) =>
    <String, dynamic>{
      'catalog': instance.catalog?.toJson(),
      'values': instance.values?.map((e) => e?.toJson())?.toList(),
    };

ContractItemFragmentMixin$BudgetItems
    _$ContractItemFragmentMixin$BudgetItemsFromJson(Map<String, dynamic> json) {
  return ContractItemFragmentMixin$BudgetItems()
    ..catalog = json['catalog'] == null
        ? null
        : MultiReferenceValueFragmentMixin$Catalog.fromJson(
            json['catalog'] as Map<String, dynamic>)
    ..values = (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : MultiReferenceValueFragmentMixin$Values.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ContractItemFragmentMixin$BudgetItemsToJson(
        ContractItemFragmentMixin$BudgetItems instance) =>
    <String, dynamic>{
      'catalog': instance.catalog?.toJson(),
      'values': instance.values?.map((e) => e?.toJson())?.toList(),
    };

MultiReferenceValueFragmentMixin$Catalog
    _$MultiReferenceValueFragmentMixin$CatalogFromJson(
        Map<String, dynamic> json) {
  return MultiReferenceValueFragmentMixin$Catalog()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..title = json['title'] as String
    ..isUsed = json['isUsed'] as bool;
}

Map<String, dynamic> _$MultiReferenceValueFragmentMixin$CatalogToJson(
        MultiReferenceValueFragmentMixin$Catalog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'title': instance.title,
      'isUsed': instance.isUsed,
    };

MultiReferenceValueFragmentMixin$Values
    _$MultiReferenceValueFragmentMixin$ValuesFromJson(
        Map<String, dynamic> json) {
  return MultiReferenceValueFragmentMixin$Values()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String
    ..isUsed = json['isUsed'] as bool;
}

Map<String, dynamic> _$MultiReferenceValueFragmentMixin$ValuesToJson(
        MultiReferenceValueFragmentMixin$Values instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
      'isUsed': instance.isUsed,
    };

LetterItemFragmentMixin$Status _$LetterItemFragmentMixin$StatusFromJson(
    Map<String, dynamic> json) {
  return LetterItemFragmentMixin$Status()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$LetterItemFragmentMixin$StatusToJson(
        LetterItemFragmentMixin$Status instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

IncomingDocItemFragmentMixin$IncomingSender
    _$IncomingDocItemFragmentMixin$IncomingSenderFromJson(
        Map<String, dynamic> json) {
  return IncomingDocItemFragmentMixin$IncomingSender()
    ..addressImported = json['addressImported'] as String
    ..city = json['city'] as String
    ..correspondent = json['correspondent'] as String
    ..email = json['email'] as String
    ..fullTitle = json['fullTitle'] as String
    ..hasChildren = json['hasChildren'] as bool
    ..id = json['id'] as String
    ..index = json['index'] as String
    ..isDeleted = json['isDeleted'] as bool
    ..organization = json['organization'] as String
    ..parentId = json['parentId'] as String
    ..phone = json['phone'] as String
    ..position = json['position'] as String
    ..region = json['region'] as String
    ..street = json['street'] as String
    ..title = json['title'] as String;
}

Map<String, dynamic> _$IncomingDocItemFragmentMixin$IncomingSenderToJson(
        IncomingDocItemFragmentMixin$IncomingSender instance) =>
    <String, dynamic>{
      'addressImported': instance.addressImported,
      'city': instance.city,
      'correspondent': instance.correspondent,
      'email': instance.email,
      'fullTitle': instance.fullTitle,
      'hasChildren': instance.hasChildren,
      'id': instance.id,
      'index': instance.index,
      'isDeleted': instance.isDeleted,
      'organization': instance.organization,
      'parentId': instance.parentId,
      'phone': instance.phone,
      'position': instance.position,
      'region': instance.region,
      'street': instance.street,
      'title': instance.title,
    };

IncomingDocItemFragmentMixin$Status
    _$IncomingDocItemFragmentMixin$StatusFromJson(Map<String, dynamic> json) {
  return IncomingDocItemFragmentMixin$Status()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$IncomingDocItemFragmentMixin$StatusToJson(
        IncomingDocItemFragmentMixin$Status instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

IncomingDocItemFragmentMixin$Type _$IncomingDocItemFragmentMixin$TypeFromJson(
    Map<String, dynamic> json) {
  return IncomingDocItemFragmentMixin$Type()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$IncomingDocItemFragmentMixin$TypeToJson(
        IncomingDocItemFragmentMixin$Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

IncomingDocItemFragmentMixin$SpecialControls
    _$IncomingDocItemFragmentMixin$SpecialControlsFromJson(
        Map<String, dynamic> json) {
  return IncomingDocItemFragmentMixin$SpecialControls()
    ..catalog = json['catalog'] == null
        ? null
        : MultiReferenceValueFragmentMixin$Catalog.fromJson(
            json['catalog'] as Map<String, dynamic>)
    ..values = (json['values'] as List)
        ?.map((e) => e == null
            ? null
            : MultiReferenceValueFragmentMixin$Values.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$IncomingDocItemFragmentMixin$SpecialControlsToJson(
        IncomingDocItemFragmentMixin$SpecialControls instance) =>
    <String, dynamic>{
      'catalog': instance.catalog?.toJson(),
      'values': instance.values?.map((e) => e?.toJson())?.toList(),
    };

OutgoingDocItemFragmentMixin$Addressees
    _$OutgoingDocItemFragmentMixin$AddresseesFromJson(
        Map<String, dynamic> json) {
  return OutgoingDocItemFragmentMixin$Addressees()
    ..addressImported = json['addressImported'] as String
    ..city = json['city'] as String
    ..correspondent = json['correspondent'] as String
    ..email = json['email'] as String
    ..fullTitle = json['fullTitle'] as String
    ..hasChildren = json['hasChildren'] as bool
    ..id = json['id'] as String
    ..index = json['index'] as String
    ..isDeleted = json['isDeleted'] as bool
    ..organization = json['organization'] as String
    ..parentId = json['parentId'] as String
    ..phone = json['phone'] as String
    ..position = json['position'] as String
    ..region = json['region'] as String
    ..street = json['street'] as String
    ..title = json['title'] as String;
}

Map<String, dynamic> _$OutgoingDocItemFragmentMixin$AddresseesToJson(
        OutgoingDocItemFragmentMixin$Addressees instance) =>
    <String, dynamic>{
      'addressImported': instance.addressImported,
      'city': instance.city,
      'correspondent': instance.correspondent,
      'email': instance.email,
      'fullTitle': instance.fullTitle,
      'hasChildren': instance.hasChildren,
      'id': instance.id,
      'index': instance.index,
      'isDeleted': instance.isDeleted,
      'organization': instance.organization,
      'parentId': instance.parentId,
      'phone': instance.phone,
      'position': instance.position,
      'region': instance.region,
      'street': instance.street,
      'title': instance.title,
    };

OutgoingDocItemFragmentMixin$Status
    _$OutgoingDocItemFragmentMixin$StatusFromJson(Map<String, dynamic> json) {
  return OutgoingDocItemFragmentMixin$Status()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$OutgoingDocItemFragmentMixin$StatusToJson(
        OutgoingDocItemFragmentMixin$Status instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

OutgoingDocItemFragmentMixin$Type _$OutgoingDocItemFragmentMixin$TypeFromJson(
    Map<String, dynamic> json) {
  return OutgoingDocItemFragmentMixin$Type()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$OutgoingDocItemFragmentMixin$TypeToJson(
        OutgoingDocItemFragmentMixin$Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

OutgoingDocItemFragmentMixin$ReservationInfo
    _$OutgoingDocItemFragmentMixin$ReservationInfoFromJson(
        Map<String, dynamic> json) {
  return OutgoingDocItemFragmentMixin$ReservationInfo()
    ..isRegistered = json['isRegistered'] as bool
    ..registerNumber = json['registerNumber'] as String
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String);
}

Map<String, dynamic> _$OutgoingDocItemFragmentMixin$ReservationInfoToJson(
        OutgoingDocItemFragmentMixin$ReservationInfo instance) =>
    <String, dynamic>{
      'isRegistered': instance.isRegistered,
      'registerNumber': instance.registerNumber,
      'registrationDate': instance.registrationDate?.toIso8601String(),
    };

OutgoingDocItemFragmentMixin$ScanCopyOriginal
    _$OutgoingDocItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return OutgoingDocItemFragmentMixin$ScanCopyOriginal()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String;
}

Map<String, dynamic> _$OutgoingDocItemFragmentMixin$ScanCopyOriginalToJson(
        OutgoingDocItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
    };

TaxExpertiseItemFragmentMixin$Taxattachments
    _$TaxExpertiseItemFragmentMixin$TaxattachmentsFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$Taxattachments()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String;
}

Map<String, dynamic> _$TaxExpertiseItemFragmentMixin$TaxattachmentsToJson(
        TaxExpertiseItemFragmentMixin$Taxattachments instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
    };

TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax
    _$TaxExpertiseItemFragmentMixin$ConsequenceIncomeTaxFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic> _$TaxExpertiseItemFragmentMixin$ConsequenceIncomeTaxToJson(
        TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax instance) =>
    <String, dynamic>{
      'text': instance.text,
      'reason': instance.reason,
    };

TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTaxFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic>
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTaxToJson(
            TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax
                instance) =>
        <String, dynamic>{
          'text': instance.text,
          'reason': instance.reason,
        };

TaxExpertiseItemFragmentMixin$ConsequenceVAT
    _$TaxExpertiseItemFragmentMixin$ConsequenceVATFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ConsequenceVAT()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic> _$TaxExpertiseItemFragmentMixin$ConsequenceVATToJson(
        TaxExpertiseItemFragmentMixin$ConsequenceVAT instance) =>
    <String, dynamic>{
      'text': instance.text,
      'reason': instance.reason,
    };

TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceVATFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic>
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceVATToJson(
            TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT instance) =>
        <String, dynamic>{
          'text': instance.text,
          'reason': instance.reason,
        };

TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes
    _$TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxesFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic>
    _$TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxesToJson(
            TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes instance) =>
        <String, dynamic>{
          'text': instance.text,
          'reason': instance.reason,
        };

TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxesFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes()
    ..text = json['text'] as String
    ..reason = json['reason'] as String;
}

Map<String, dynamic>
    _$TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxesToJson(
            TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes
                instance) =>
        <String, dynamic>{
          'text': instance.text,
          'reason': instance.reason,
        };

TaxExpertiseItemFragmentMixin$TaxRisks
    _$TaxExpertiseItemFragmentMixin$TaxRisksFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$TaxRisks()
    ..reason = json['reason'] as String
    ..power = json['power'] as String
    ..assessment = json['assessment'] as String;
}

Map<String, dynamic> _$TaxExpertiseItemFragmentMixin$TaxRisksToJson(
        TaxExpertiseItemFragmentMixin$TaxRisks instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'power': instance.power,
      'assessment': instance.assessment,
    };

TaxExpertiseItemFragmentMixin$ContractorTaxRisks
    _$TaxExpertiseItemFragmentMixin$ContractorTaxRisksFromJson(
        Map<String, dynamic> json) {
  return TaxExpertiseItemFragmentMixin$ContractorTaxRisks()
    ..reason = json['reason'] as String
    ..power = json['power'] as String
    ..assessment = json['assessment'] as String;
}

Map<String, dynamic> _$TaxExpertiseItemFragmentMixin$ContractorTaxRisksToJson(
        TaxExpertiseItemFragmentMixin$ContractorTaxRisks instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'power': instance.power,
      'assessment': instance.assessment,
    };

RequestToHireItemFragmentMixin$Applicant
    _$RequestToHireItemFragmentMixin$ApplicantFromJson(
        Map<String, dynamic> json) {
  return RequestToHireItemFragmentMixin$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$RequestToHireItemFragmentMixin$ApplicantToJson(
        RequestToHireItemFragmentMixin$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

RequestToHireItemFragmentMixin$ApplicantDetails
    _$RequestToHireItemFragmentMixin$ApplicantDetailsFromJson(
        Map<String, dynamic> json) {
  return RequestToHireItemFragmentMixin$ApplicantDetails()
    ..department = json['department'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String;
}

Map<String, dynamic> _$RequestToHireItemFragmentMixin$ApplicantDetailsToJson(
        RequestToHireItemFragmentMixin$ApplicantDetails instance) =>
    <String, dynamic>{
      'department': instance.department,
      'jobTitle': instance.jobTitle,
      'orgUnit': instance.orgUnit,
    };

RequestToHireItemFragmentMixin$OrderDescriptor
    _$RequestToHireItemFragmentMixin$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return RequestToHireItemFragmentMixin$OrderDescriptor()
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic> _$RequestToHireItemFragmentMixin$OrderDescriptorToJson(
        RequestToHireItemFragmentMixin$OrderDescriptor instance) =>
    <String, dynamic>{
      'issuedDate': instance.issuedDate?.toIso8601String(),
      'number': instance.number,
    };

RequestToHireItemFragmentMixin$RecruitmentSource
    _$RequestToHireItemFragmentMixin$RecruitmentSourceFromJson(
        Map<String, dynamic> json) {
  return RequestToHireItemFragmentMixin$RecruitmentSource()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$RequestToHireItemFragmentMixin$RecruitmentSourceToJson(
        RequestToHireItemFragmentMixin$RecruitmentSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

RequestToHireItemFragmentMixin$ScanCopyOriginal
    _$RequestToHireItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return RequestToHireItemFragmentMixin$ScanCopyOriginal()
    ..fileContent = json['fileContent'] as String
    ..fileId = json['fileId'] as String
    ..fileName = json['fileName'] as String
    ..isLocked = json['isLocked'] as bool;
}

Map<String, dynamic> _$RequestToHireItemFragmentMixin$ScanCopyOriginalToJson(
        RequestToHireItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileContent': instance.fileContent,
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'isLocked': instance.isLocked,
    };

RequestForDismissalItemFragmentMixin$Applicant
    _$RequestForDismissalItemFragmentMixin$ApplicantFromJson(
        Map<String, dynamic> json) {
  return RequestForDismissalItemFragmentMixin$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$RequestForDismissalItemFragmentMixin$ApplicantToJson(
        RequestForDismissalItemFragmentMixin$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

RequestForDismissalItemFragmentMixin$ApplicantDetails
    _$RequestForDismissalItemFragmentMixin$ApplicantDetailsFromJson(
        Map<String, dynamic> json) {
  return RequestForDismissalItemFragmentMixin$ApplicantDetails()
    ..department = json['department'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String;
}

Map<String, dynamic>
    _$RequestForDismissalItemFragmentMixin$ApplicantDetailsToJson(
            RequestForDismissalItemFragmentMixin$ApplicantDetails instance) =>
        <String, dynamic>{
          'department': instance.department,
          'jobTitle': instance.jobTitle,
          'orgUnit': instance.orgUnit,
        };

RequestForDismissalItemFragmentMixin$OrderDescriptor
    _$RequestForDismissalItemFragmentMixin$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return RequestForDismissalItemFragmentMixin$OrderDescriptor()
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic>
    _$RequestForDismissalItemFragmentMixin$OrderDescriptorToJson(
            RequestForDismissalItemFragmentMixin$OrderDescriptor instance) =>
        <String, dynamic>{
          'issuedDate': instance.issuedDate?.toIso8601String(),
          'number': instance.number,
        };

RequestForDismissalItemFragmentMixin$ScanCopyOriginal
    _$RequestForDismissalItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return RequestForDismissalItemFragmentMixin$ScanCopyOriginal()
    ..fileContent = json['fileContent'] as String
    ..fileId = json['fileId'] as String
    ..fileName = json['fileName'] as String
    ..isLocked = json['isLocked'] as bool;
}

Map<String, dynamic>
    _$RequestForDismissalItemFragmentMixin$ScanCopyOriginalToJson(
            RequestForDismissalItemFragmentMixin$ScanCopyOriginal instance) =>
        <String, dynamic>{
          'fileContent': instance.fileContent,
          'fileId': instance.fileId,
          'fileName': instance.fileName,
          'isLocked': instance.isLocked,
        };

TransferRequestItemFragmentMixin$Applicant
    _$TransferRequestItemFragmentMixin$ApplicantFromJson(
        Map<String, dynamic> json) {
  return TransferRequestItemFragmentMixin$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$TransferRequestItemFragmentMixin$ApplicantToJson(
        TransferRequestItemFragmentMixin$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

TransferRequestItemFragmentMixin$ApplicantDetails
    _$TransferRequestItemFragmentMixin$ApplicantDetailsFromJson(
        Map<String, dynamic> json) {
  return TransferRequestItemFragmentMixin$ApplicantDetails()
    ..department = json['department'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String;
}

Map<String, dynamic> _$TransferRequestItemFragmentMixin$ApplicantDetailsToJson(
        TransferRequestItemFragmentMixin$ApplicantDetails instance) =>
    <String, dynamic>{
      'department': instance.department,
      'jobTitle': instance.jobTitle,
      'orgUnit': instance.orgUnit,
    };

TransferRequestItemFragmentMixin$OrderDescriptor
    _$TransferRequestItemFragmentMixin$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return TransferRequestItemFragmentMixin$OrderDescriptor()
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic> _$TransferRequestItemFragmentMixin$OrderDescriptorToJson(
        TransferRequestItemFragmentMixin$OrderDescriptor instance) =>
    <String, dynamic>{
      'issuedDate': instance.issuedDate?.toIso8601String(),
      'number': instance.number,
    };

TransferRequestItemFragmentMixin$RecruitmentSource
    _$TransferRequestItemFragmentMixin$RecruitmentSourceFromJson(
        Map<String, dynamic> json) {
  return TransferRequestItemFragmentMixin$RecruitmentSource()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$TransferRequestItemFragmentMixin$RecruitmentSourceToJson(
        TransferRequestItemFragmentMixin$RecruitmentSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

TransferRequestItemFragmentMixin$ScanCopyOriginal
    _$TransferRequestItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return TransferRequestItemFragmentMixin$ScanCopyOriginal()
    ..fileContent = json['fileContent'] as String
    ..fileId = json['fileId'] as String
    ..fileName = json['fileName'] as String
    ..isLocked = json['isLocked'] as bool;
}

Map<String, dynamic> _$TransferRequestItemFragmentMixin$ScanCopyOriginalToJson(
        TransferRequestItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileContent': instance.fileContent,
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'isLocked': instance.isLocked,
    };

RequestCancellationForDismissalItemFragmentMixin$Applicant
    _$RequestCancellationForDismissalItemFragmentMixin$ApplicantFromJson(
        Map<String, dynamic> json) {
  return RequestCancellationForDismissalItemFragmentMixin$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String,
    dynamic> _$RequestCancellationForDismissalItemFragmentMixin$ApplicantToJson(
        RequestCancellationForDismissalItemFragmentMixin$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails
    _$RequestCancellationForDismissalItemFragmentMixin$ApplicantDetailsFromJson(
        Map<String, dynamic> json) {
  return RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails()
    ..department = json['department'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String;
}

Map<String, dynamic>
    _$RequestCancellationForDismissalItemFragmentMixin$ApplicantDetailsToJson(
            RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails
                instance) =>
        <String, dynamic>{
          'department': instance.department,
          'jobTitle': instance.jobTitle,
          'orgUnit': instance.orgUnit,
        };

RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor
    _$RequestCancellationForDismissalItemFragmentMixin$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor()
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic>
    _$RequestCancellationForDismissalItemFragmentMixin$OrderDescriptorToJson(
            RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor
                instance) =>
        <String, dynamic>{
          'issuedDate': instance.issuedDate?.toIso8601String(),
          'number': instance.number,
        };

RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal
    _$RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal()
    ..fileContent = json['fileContent'] as String
    ..fileId = json['fileId'] as String
    ..fileName = json['fileName'] as String
    ..isLocked = json['isLocked'] as bool;
}

Map<String, dynamic>
    _$RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginalToJson(
            RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal
                instance) =>
        <String, dynamic>{
          'fileContent': instance.fileContent,
          'fileId': instance.fileId,
          'fileName': instance.fileName,
          'isLocked': instance.isLocked,
        };

LnaDirectiveItemFragmentMixin$PlaceOfRegistration
    _$LnaDirectiveItemFragmentMixin$PlaceOfRegistrationFromJson(
        Map<String, dynamic> json) {
  return LnaDirectiveItemFragmentMixin$PlaceOfRegistration()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$LnaDirectiveItemFragmentMixin$PlaceOfRegistrationToJson(
        LnaDirectiveItemFragmentMixin$PlaceOfRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

LnaDirectiveItemFragmentMixin$ValidStatus
    _$LnaDirectiveItemFragmentMixin$ValidStatusFromJson(
        Map<String, dynamic> json) {
  return LnaDirectiveItemFragmentMixin$ValidStatus()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$LnaDirectiveItemFragmentMixin$ValidStatusToJson(
        LnaDirectiveItemFragmentMixin$ValidStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

LnaDirectiveItemFragmentMixin$ScanCopyOriginal
    _$LnaDirectiveItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return LnaDirectiveItemFragmentMixin$ScanCopyOriginal()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String;
}

Map<String, dynamic> _$LnaDirectiveItemFragmentMixin$ScanCopyOriginalToJson(
        LnaDirectiveItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
    };

LnaOrderItemFragmentMixin$PlaceOfRegistration
    _$LnaOrderItemFragmentMixin$PlaceOfRegistrationFromJson(
        Map<String, dynamic> json) {
  return LnaOrderItemFragmentMixin$PlaceOfRegistration()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$LnaOrderItemFragmentMixin$PlaceOfRegistrationToJson(
        LnaOrderItemFragmentMixin$PlaceOfRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

LnaOrderItemFragmentMixin$ValidStatus
    _$LnaOrderItemFragmentMixin$ValidStatusFromJson(Map<String, dynamic> json) {
  return LnaOrderItemFragmentMixin$ValidStatus()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$LnaOrderItemFragmentMixin$ValidStatusToJson(
        LnaOrderItemFragmentMixin$ValidStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

LnaOrderItemFragmentMixin$ScanCopyOriginal
    _$LnaOrderItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return LnaOrderItemFragmentMixin$ScanCopyOriginal()
    ..fileId = json['fileId'] as String
    ..fileContent = json['fileContent'] as String
    ..fileName = json['fileName'] as String;
}

Map<String, dynamic> _$LnaOrderItemFragmentMixin$ScanCopyOriginalToJson(
        LnaOrderItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileContent': instance.fileContent,
      'fileName': instance.fileName,
    };

GenericItemFragmentMixin$Applicant _$GenericItemFragmentMixin$ApplicantFromJson(
    Map<String, dynamic> json) {
  return GenericItemFragmentMixin$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$GenericItemFragmentMixin$ApplicantToJson(
        GenericItemFragmentMixin$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

GenericItemFragmentMixin$ApplicantDetails
    _$GenericItemFragmentMixin$ApplicantDetailsFromJson(
        Map<String, dynamic> json) {
  return GenericItemFragmentMixin$ApplicantDetails()
    ..department = json['department'] as String
    ..jobTitle = json['jobTitle'] as String
    ..orgUnit = json['orgUnit'] as String;
}

Map<String, dynamic> _$GenericItemFragmentMixin$ApplicantDetailsToJson(
        GenericItemFragmentMixin$ApplicantDetails instance) =>
    <String, dynamic>{
      'department': instance.department,
      'jobTitle': instance.jobTitle,
      'orgUnit': instance.orgUnit,
    };

GenericItemFragmentMixin$ScanCopyOriginal
    _$GenericItemFragmentMixin$ScanCopyOriginalFromJson(
        Map<String, dynamic> json) {
  return GenericItemFragmentMixin$ScanCopyOriginal()
    ..fileContent = json['fileContent'] as String
    ..fileId = json['fileId'] as String
    ..fileName = json['fileName'] as String
    ..isLocked = json['isLocked'] as bool;
}

Map<String, dynamic> _$GenericItemFragmentMixin$ScanCopyOriginalToJson(
        GenericItemFragmentMixin$ScanCopyOriginal instance) =>
    <String, dynamic>{
      'fileContent': instance.fileContent,
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'isLocked': instance.isLocked,
    };

MassMailItemFragmentMixin$MassMailMailingGroups
    _$MassMailItemFragmentMixin$MassMailMailingGroupsFromJson(
        Map<String, dynamic> json) {
  return MassMailItemFragmentMixin$MassMailMailingGroups()
    ..id = json['id'] as String
    ..parentId = json['parentId'] as String
    ..name = json['name'] as String
    ..hasChildren = json['hasChildren'] as bool
    ..isDeleted = json['isDeleted'] as bool
    ..description = json['description'] as String;
}

Map<String, dynamic> _$MassMailItemFragmentMixin$MassMailMailingGroupsToJson(
        MassMailItemFragmentMixin$MassMailMailingGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'hasChildren': instance.hasChildren,
      'isDeleted': instance.isDeleted,
      'description': instance.description,
    };

GetDocumentArguments _$GetDocumentArgumentsFromJson(Map<String, dynamic> json) {
  return GetDocumentArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$GetDocumentArgumentsToJson(
        GetDocumentArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
