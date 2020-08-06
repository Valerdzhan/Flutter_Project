// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.lists.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contracts$DFSQuery$Contracts$Items _$Contracts$DFSQuery$Contracts$ItemsFromJson(
    Map<String, dynamic> json) {
  return Contracts$DFSQuery$Contracts$Items()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..contractorId = json['contractorId'] as int
    ..contractorName = json['contractorName'] as String
    ..sumAmountWithTax = json['sumAmountWithTax']
    ..departmentResponder = json['departmentResponder'] as String
    ..responderId = json['responderId'] as String
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..status = json['status'] as String
    ..author = json['author'] as String
    ..editor = json['editor'] as String
    ..preparationDate = json['preparationDate'] == null
        ? null
        : DateTime.parse(json['preparationDate'] as String)
    ..registerNumber = json['registerNumber'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..scanCopy = json['scanCopy'] as String
    ..documentStatusDescription = json['documentStatusDescription'] as String;
}

Map<String, dynamic> _$Contracts$DFSQuery$Contracts$ItemsToJson(
        Contracts$DFSQuery$Contracts$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contractorId': instance.contractorId,
      'contractorName': instance.contractorName,
      'sumAmountWithTax': instance.sumAmountWithTax,
      'departmentResponder': instance.departmentResponder,
      'responderId': instance.responderId,
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'status': instance.status,
      'author': instance.author,
      'editor': instance.editor,
      'preparationDate': instance.preparationDate?.toIso8601String(),
      'registerNumber': instance.registerNumber,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'scanCopy': instance.scanCopy,
      'documentStatusDescription': instance.documentStatusDescription,
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

Contracts$DFSQuery$Contracts _$Contracts$DFSQuery$ContractsFromJson(
    Map<String, dynamic> json) {
  return Contracts$DFSQuery$Contracts()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : Contracts$DFSQuery$Contracts$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Contracts$DFSQuery$ContractsToJson(
        Contracts$DFSQuery$Contracts instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Contracts$DFSQuery _$Contracts$DFSQueryFromJson(Map<String, dynamic> json) {
  return Contracts$DFSQuery()
    ..contracts = json['contracts'] == null
        ? null
        : Contracts$DFSQuery$Contracts.fromJson(
            json['contracts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Contracts$DFSQueryToJson(Contracts$DFSQuery instance) =>
    <String, dynamic>{
      'contracts': instance.contracts?.toJson(),
    };

ContractsAttributeSearch _$ContractsAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return ContractsAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    amountFrom: json['amountFrom'],
    amountTo: json['amountTo'],
    contractorId: json['contractorId'] as int,
    contractor: json['contractor'] as String,
    documentStatus: json['documentStatus'] as String,
    statusFilter:
        (json['statusFilter'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ContractsAttributeSearchToJson(
        ContractsAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'amountFrom': instance.amountFrom,
      'amountTo': instance.amountTo,
      'contractorId': instance.contractorId,
      'contractor': instance.contractor,
      'documentStatus': instance.documentStatus,
      'statusFilter': instance.statusFilter,
    };

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

SortInputContractsSortFieldEnumType
    _$SortInputContractsSortFieldEnumTypeFromJson(Map<String, dynamic> json) {
  return SortInputContractsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$ContractsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: ContractsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputContractsSortFieldEnumTypeToJson(
        SortInputContractsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$ContractsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$ContractsSortFieldEnumTypeEnumMap = {
  ContractsSortFieldEnumType.title: 'title',
  ContractsSortFieldEnumType.contractor: 'contractor',
  ContractsSortFieldEnumType.amount: 'amount',
  ContractsSortFieldEnumType.department: 'department',
  ContractsSortFieldEnumType.responder: 'responder',
  ContractsSortFieldEnumType.whenCreated: 'whenCreated',
  ContractsSortFieldEnumType.whenEdited: 'whenEdited',
  ContractsSortFieldEnumType.status: 'status',
  ContractsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ControlCards$DFSQuery$ControlCards$Items
    _$ControlCards$DFSQuery$ControlCards$ItemsFromJson(
        Map<String, dynamic> json) {
  return ControlCards$DFSQuery$ControlCards$Items()
    ..id = json['id'] as String
    ..hostDocumentId = json['hostDocumentId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..deControlDate = json['deControlDate'] == null
        ? null
        : DateTime.parse(json['deControlDate'] as String)
    ..period = _$enumDecodeNullable(
        _$ControlCardPeriodEnumTypeEnumMap, json['period'],
        unknownValue: ControlCardPeriodEnumType.artemisUnknown)
    ..responderIds =
        (json['responderIds'] as List)?.map((e) => e as String)?.toList()
    ..documentLastVersion = json['documentLastVersion'] == null
        ? null
        : ControlCardFragmentMixin$DocumentLastVersion.fromJson(
            json['documentLastVersion'] as Map<String, dynamic>)
    ..type = json['type'] == null
        ? null
        : ControlCardFragmentMixin$Type.fromJson(
            json['type'] as Map<String, dynamic>)
    ..isRemoved = json['isRemoved'] as bool
    ..authorId = json['authorId'] as String
    ..remark = json['remark'] as String
    ..report = json['report'] as String
    ..isControlRemovalRequested = json['isControlRemovalRequested'] as bool;
}

Map<String, dynamic> _$ControlCards$DFSQuery$ControlCards$ItemsToJson(
        ControlCards$DFSQuery$ControlCards$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hostDocumentId': instance.hostDocumentId,
      'date': instance.date?.toIso8601String(),
      'deControlDate': instance.deControlDate?.toIso8601String(),
      'period': _$ControlCardPeriodEnumTypeEnumMap[instance.period],
      'responderIds': instance.responderIds,
      'documentLastVersion': instance.documentLastVersion?.toJson(),
      'type': instance.type?.toJson(),
      'isRemoved': instance.isRemoved,
      'authorId': instance.authorId,
      'remark': instance.remark,
      'report': instance.report,
      'isControlRemovalRequested': instance.isControlRemovalRequested,
    };

const _$ControlCardPeriodEnumTypeEnumMap = {
  ControlCardPeriodEnumType.no: 'NO',
  ControlCardPeriodEnumType.daily: 'DAILY',
  ControlCardPeriodEnumType.weekly: 'WEEKLY',
  ControlCardPeriodEnumType.twoTimesInMonth: 'TWO_TIMES_IN_MONTH',
  ControlCardPeriodEnumType.monthly: 'MONTHLY',
  ControlCardPeriodEnumType.quarterly: 'QUARTERLY',
  ControlCardPeriodEnumType.semiannually: 'SEMIANNUALLY',
  ControlCardPeriodEnumType.yearly: 'YEARLY',
  ControlCardPeriodEnumType.onceInTwoYears: 'ONCE_IN_TWO_YEARS',
  ControlCardPeriodEnumType.onceEveryThreeYears: 'ONCE_EVERY_THREE_YEARS',
  ControlCardPeriodEnumType.continuously: 'CONTINUOUSLY',
  ControlCardPeriodEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ControlCards$DFSQuery$ControlCards _$ControlCards$DFSQuery$ControlCardsFromJson(
    Map<String, dynamic> json) {
  return ControlCards$DFSQuery$ControlCards()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ControlCards$DFSQuery$ControlCards$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ControlCards$DFSQuery$ControlCardsToJson(
        ControlCards$DFSQuery$ControlCards instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

ControlCards$DFSQuery _$ControlCards$DFSQueryFromJson(
    Map<String, dynamic> json) {
  return ControlCards$DFSQuery()
    ..controlCards = json['controlCards'] == null
        ? null
        : ControlCards$DFSQuery$ControlCards.fromJson(
            json['controlCards'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ControlCards$DFSQueryToJson(
        ControlCards$DFSQuery instance) =>
    <String, dynamic>{
      'controlCards': instance.controlCards?.toJson(),
    };

ControlCardFragmentMixin$DocumentLastVersion
    _$ControlCardFragmentMixin$DocumentLastVersionFromJson(
        Map<String, dynamic> json) {
  return ControlCardFragmentMixin$DocumentLastVersion()
    ..compileTitle = json['compileTitle'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String);
}

Map<String, dynamic> _$ControlCardFragmentMixin$DocumentLastVersionToJson(
        ControlCardFragmentMixin$DocumentLastVersion instance) =>
    <String, dynamic>{
      'compileTitle': instance.compileTitle,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
    };

ControlCardFragmentMixin$Type _$ControlCardFragmentMixin$TypeFromJson(
    Map<String, dynamic> json) {
  return ControlCardFragmentMixin$Type()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$ControlCardFragmentMixin$TypeToJson(
        ControlCardFragmentMixin$Type instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

ControlCardsAttributeSearch _$ControlCardsAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return ControlCardsAttributeSearch(
    contains: json['contains'] as String,
    responders: (json['responders'] as List)?.map((e) => e as String)?.toList(),
    filterTypes:
        (json['filterTypes'] as List)?.map((e) => e as String)?.toList(),
    fromDate: json['fromDate'] == null
        ? null
        : DateTime.parse(json['fromDate'] as String),
    toDate: json['toDate'] == null
        ? null
        : DateTime.parse(json['toDate'] as String),
    isOverdue: json['isOverdue'] as bool,
    isControlRemoval: json['isControlRemoval'] as bool,
    fromDeDate: json['fromDeDate'] == null
        ? null
        : DateTime.parse(json['fromDeDate'] as String),
    toDeDate: json['toDeDate'] == null
        ? null
        : DateTime.parse(json['toDeDate'] as String),
    isRemoved: json['isRemoved'] as bool,
  );
}

Map<String, dynamic> _$ControlCardsAttributeSearchToJson(
        ControlCardsAttributeSearch instance) =>
    <String, dynamic>{
      'contains': instance.contains,
      'responders': instance.responders,
      'filterTypes': instance.filterTypes,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'isOverdue': instance.isOverdue,
      'isControlRemoval': instance.isControlRemoval,
      'fromDeDate': instance.fromDeDate?.toIso8601String(),
      'toDeDate': instance.toDeDate?.toIso8601String(),
      'isRemoved': instance.isRemoved,
    };

SortInputControlCardsSortFieldEnumType
    _$SortInputControlCardsSortFieldEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SortInputControlCardsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$ControlCardsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: ControlCardsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputControlCardsSortFieldEnumTypeToJson(
        SortInputControlCardsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$ControlCardsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$ControlCardsSortFieldEnumTypeEnumMap = {
  ControlCardsSortFieldEnumType.documentTitle: 'documentTitle',
  ControlCardsSortFieldEnumType.date: 'date',
  ControlCardsSortFieldEnumType.whenCreated: 'whenCreated',
  ControlCardsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Documents$DFSQuery$Documents$Items _$Documents$DFSQuery$Documents$ItemsFromJson(
    Map<String, dynamic> json) {
  return Documents$DFSQuery$Documents$Items()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..type = _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown)
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..authorName = json['authorName'] as String
    ..compileTitle = json['compileTitle'] as String
    ..responderId = json['responderId'] as String
    ..authorId = json['authorId'] as String
    ..editorId = json['editorId'] as String
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..scanCopy = json['scanCopy'] as String
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null
        ? null
        : DateTime.parse(json['whenPublished'] as String)
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown);
}

Map<String, dynamic> _$Documents$DFSQuery$Documents$ItemsToJson(
        Documents$DFSQuery$Documents$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'type': _$DocumentTypeEnumMap[instance.type],
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'documentStatusDescription': instance.documentStatusDescription,
      'authorName': instance.authorName,
      'compileTitle': instance.compileTitle,
      'responderId': instance.responderId,
      'authorId': instance.authorId,
      'editorId': instance.editorId,
      'controlCardsCount': instance.controlCardsCount,
      'controlCardsRemovedCount': instance.controlCardsRemovedCount,
      'scanCopy': instance.scanCopy,
      'isPublished': instance.isPublished,
      'publisherId': instance.publisherId,
      'whenPublished': instance.whenPublished?.toIso8601String(),
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
    };

Documents$DFSQuery$Documents _$Documents$DFSQuery$DocumentsFromJson(
    Map<String, dynamic> json) {
  return Documents$DFSQuery$Documents()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : Documents$DFSQuery$Documents$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Documents$DFSQuery$DocumentsToJson(
        Documents$DFSQuery$Documents instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Documents$DFSQuery _$Documents$DFSQueryFromJson(Map<String, dynamic> json) {
  return Documents$DFSQuery()
    ..documents = json['documents'] == null
        ? null
        : Documents$DFSQuery$Documents.fromJson(
            json['documents'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Documents$DFSQueryToJson(Documents$DFSQuery instance) =>
    <String, dynamic>{
      'documents': instance.documents?.toJson(),
    };

DocumentListItemFragmentMixin$ContractListItem
    _$DocumentListItemFragmentMixin$ContractListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$ContractListItem()
    ..contractorId = json['contractorId'] as int
    ..contractorName = json['contractorName'] as String
    ..sumAmountWithTax = json['sumAmountWithTax']
    ..departmentResponder = json['departmentResponder'] as String
    ..status = json['status'] as String
    ..registerNumber = json['registerNumber'] as String
    ..preparationDate = json['preparationDate'] == null
        ? null
        : DateTime.parse(json['preparationDate'] as String);
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$ContractListItemToJson(
        DocumentListItemFragmentMixin$ContractListItem instance) =>
    <String, dynamic>{
      'contractorId': instance.contractorId,
      'contractorName': instance.contractorName,
      'sumAmountWithTax': instance.sumAmountWithTax,
      'departmentResponder': instance.departmentResponder,
      'status': instance.status,
      'registerNumber': instance.registerNumber,
      'preparationDate': instance.preparationDate?.toIso8601String(),
    };

DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant
    _$DocumentListItemFragmentMixin$HRRequestDocListItem$ApplicantFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant()
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
            .fromJson(json['orderDescriptor'] as Map<String, dynamic>)
    ..status = json['status'] as String
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$HRRequestDocListItem$ApplicantToJson(
            DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant
                instance) =>
        <String, dynamic>{
          'addressee': instance.addressee,
          'addresseeName': instance.addresseeName,
          'applicant': instance.applicant?.toJson(),
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'status': instance.status,
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'firstName': instance.firstName,
          'lastName': instance.lastName,
          'patronymic': instance.patronymic,
          'personalIdentifier': instance.personalIdentifier,
        };

DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
    _$DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor()
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
            .fromJson(json['orderDescriptor'] as Map<String, dynamic>)
    ..status = json['status'] as String
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptorToJson(
            DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
                instance) =>
        <String, dynamic>{
          'addressee': instance.addressee,
          'addresseeName': instance.addresseeName,
          'applicant': instance.applicant?.toJson(),
          'orderDescriptor': instance.orderDescriptor?.toJson(),
          'status': instance.status,
          'applicantId': instance.applicantId,
          'applicantExternalUserId': instance.applicantExternalUserId,
          'issuedDate': instance.issuedDate?.toIso8601String(),
          'number': instance.number,
        };

DocumentListItemFragmentMixin$HRRequestDocListItem
    _$DocumentListItemFragmentMixin$HRRequestDocListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$HRRequestDocListItem()
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
            .fromJson(json['orderDescriptor'] as Map<String, dynamic>)
    ..status = json['status'] as String
    ..applicantId = json['applicantId'] as String
    ..applicantExternalUserId = json['applicantExternalUserId'] as String;
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$HRRequestDocListItemToJson(
        DocumentListItemFragmentMixin$HRRequestDocListItem instance) =>
    <String, dynamic>{
      'addressee': instance.addressee,
      'addresseeName': instance.addresseeName,
      'applicant': instance.applicant?.toJson(),
      'orderDescriptor': instance.orderDescriptor?.toJson(),
      'status': instance.status,
      'applicantId': instance.applicantId,
      'applicantExternalUserId': instance.applicantExternalUserId,
    };

DocumentListItemFragmentMixin$GenericRequestListItem$Applicant
    _$DocumentListItemFragmentMixin$GenericRequestListItem$ApplicantFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$GenericRequestListItem$Applicant()
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : DocumentListItemFragmentMixin$GenericRequestListItem$Applicant
            .fromJson(json['applicant'] as Map<String, dynamic>)
    ..categoryId = json['categoryId'] as String
    ..responderId = json['responderId'] as String
    ..curatorId = json['curatorId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$GenericRequestListItem$ApplicantToJson(
            DocumentListItemFragmentMixin$GenericRequestListItem$Applicant
                instance) =>
        <String, dynamic>{
          'addressee': instance.addressee,
          'addresseeName': instance.addresseeName,
          'applicant': instance.applicant?.toJson(),
          'categoryId': instance.categoryId,
          'responderId': instance.responderId,
          'curatorId': instance.curatorId,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'documentStatusDescription': instance.documentStatusDescription,
          'scanCopy': instance.scanCopy,
          'firstName': instance.firstName,
          'lastName': instance.lastName,
          'patronymic': instance.patronymic,
          'personalIdentifier': instance.personalIdentifier,
        };

DocumentListItemFragmentMixin$GenericRequestListItem
    _$DocumentListItemFragmentMixin$GenericRequestListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$GenericRequestListItem()
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : DocumentListItemFragmentMixin$GenericRequestListItem$Applicant
            .fromJson(json['applicant'] as Map<String, dynamic>)
    ..categoryId = json['categoryId'] as String
    ..responderId = json['responderId'] as String
    ..curatorId = json['curatorId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String;
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$GenericRequestListItemToJson(
            DocumentListItemFragmentMixin$GenericRequestListItem instance) =>
        <String, dynamic>{
          'addressee': instance.addressee,
          'addresseeName': instance.addresseeName,
          'applicant': instance.applicant?.toJson(),
          'categoryId': instance.categoryId,
          'responderId': instance.responderId,
          'curatorId': instance.curatorId,
          'documentStatus':
              _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
          'documentStatusDescription': instance.documentStatusDescription,
          'scanCopy': instance.scanCopy,
        };

DocumentListItemFragmentMixin$IncomingDocListItem
    _$DocumentListItemFragmentMixin$IncomingDocListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$IncomingDocListItem()
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..sender = json['sender'] as String
    ..senderId = json['senderId'] as int
    ..senderOutgoingNumber = json['senderOutgoingNumber'] as String
    ..documentDate = json['documentDate'] == null
        ? null
        : DateTime.parse(json['documentDate'] as String)
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..registrationAuthorId = json['registrationAuthorId'] as String
    ..actor = json['actor'] as String;
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$IncomingDocListItemToJson(
        DocumentListItemFragmentMixin$IncomingDocListItem instance) =>
    <String, dynamic>{
      'addresseeIds': instance.addresseeIds,
      'sender': instance.sender,
      'senderId': instance.senderId,
      'senderOutgoingNumber': instance.senderOutgoingNumber,
      'documentDate': instance.documentDate?.toIso8601String(),
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'registrationAuthorId': instance.registrationAuthorId,
      'actor': instance.actor,
    };

DocumentListItemFragmentMixin$LetterListItem
    _$DocumentListItemFragmentMixin$LetterListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$LetterListItem()
    ..head = json['head'] as String
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..senderId = json['senderId'] as String
    ..actorId = json['actorId'] as String
    ..isRegistered = json['isRegistered'] as bool
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$LetterListItemToJson(
        DocumentListItemFragmentMixin$LetterListItem instance) =>
    <String, dynamic>{
      'head': instance.head,
      'addresseeIds': instance.addresseeIds,
      'senderId': instance.senderId,
      'actorId': instance.actorId,
      'isRegistered': instance.isRegistered,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'status': instance.status,
    };

DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
    _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBookFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook()
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..placeOfRegistrationValue = json['placeOfRegistrationValue'] as String
    ..placeOfRegistrationKey = json['placeOfRegistrationKey'] as String
    ..validStatusValue = json['validStatusValue'] as String
    ..isRegistered = json['isRegistered'] as bool
    ..registrationBookItem = json['registrationBookItem'] == null
        ? null
        : DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
            .fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..signerId = json['signerId'] as String
    ..actorId = json['actorId'] as String
    ..overseerId = json['overseerId'] as String
    ..authorId = json['authorId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..documentId = json['documentId'] as String
    ..isPermanent = json['isPermanent'] as bool
    ..number = json['number'] as int
    ..registrationBookId = json['registrationBookId'] as String
    ..registrationBook = json['registrationBook'] == null
        ? null
        : DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
            .fromJson(json['registrationBook'] as Map<String, dynamic>)
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBookToJson(
            DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
                instance) =>
        <String, dynamic>{
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'placeOfRegistrationValue': instance.placeOfRegistrationValue,
          'placeOfRegistrationKey': instance.placeOfRegistrationKey,
          'validStatusValue': instance.validStatusValue,
          'isRegistered': instance.isRegistered,
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'signerId': instance.signerId,
          'actorId': instance.actorId,
          'overseerId': instance.overseerId,
          'authorId': instance.authorId,
          'date': instance.date?.toIso8601String(),
          'documentId': instance.documentId,
          'isPermanent': instance.isPermanent,
          'number': instance.number,
          'registrationBookId': instance.registrationBookId,
          'registrationBook': instance.registrationBook?.toJson(),
          'name': instance.name,
        };

DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
    _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem()
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..placeOfRegistrationValue = json['placeOfRegistrationValue'] as String
    ..placeOfRegistrationKey = json['placeOfRegistrationKey'] as String
    ..validStatusValue = json['validStatusValue'] as String
    ..isRegistered = json['isRegistered'] as bool
    ..registrationBookItem = json['registrationBookItem'] == null
        ? null
        : DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
            .fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..signerId = json['signerId'] as String
    ..actorId = json['actorId'] as String
    ..overseerId = json['overseerId'] as String
    ..authorId = json['authorId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..documentId = json['documentId'] as String
    ..isPermanent = json['isPermanent'] as bool
    ..number = json['number'] as int
    ..registrationBookId = json['registrationBookId'] as String
    ..registrationBook = json['registrationBook'] == null
        ? null
        : DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
            .fromJson(json['registrationBook'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItemToJson(
            DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
                instance) =>
        <String, dynamic>{
          'documentType': _$DocumentTypeEnumMap[instance.documentType],
          'placeOfRegistrationValue': instance.placeOfRegistrationValue,
          'placeOfRegistrationKey': instance.placeOfRegistrationKey,
          'validStatusValue': instance.validStatusValue,
          'isRegistered': instance.isRegistered,
          'registrationBookItem': instance.registrationBookItem?.toJson(),
          'signerId': instance.signerId,
          'actorId': instance.actorId,
          'overseerId': instance.overseerId,
          'authorId': instance.authorId,
          'date': instance.date?.toIso8601String(),
          'documentId': instance.documentId,
          'isPermanent': instance.isPermanent,
          'number': instance.number,
          'registrationBookId': instance.registrationBookId,
          'registrationBook': instance.registrationBook?.toJson(),
        };

DocumentListItemFragmentMixin$LNAListItem
    _$DocumentListItemFragmentMixin$LNAListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$LNAListItem()
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..placeOfRegistrationValue = json['placeOfRegistrationValue'] as String
    ..placeOfRegistrationKey = json['placeOfRegistrationKey'] as String
    ..validStatusValue = json['validStatusValue'] as String
    ..isRegistered = json['isRegistered'] as bool
    ..registrationBookItem = json['registrationBookItem'] == null
        ? null
        : DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
            .fromJson(json['registrationBookItem'] as Map<String, dynamic>)
    ..signerId = json['signerId'] as String
    ..actorId = json['actorId'] as String
    ..overseerId = json['overseerId'] as String;
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$LNAListItemToJson(
        DocumentListItemFragmentMixin$LNAListItem instance) =>
    <String, dynamic>{
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'placeOfRegistrationValue': instance.placeOfRegistrationValue,
      'placeOfRegistrationKey': instance.placeOfRegistrationKey,
      'validStatusValue': instance.validStatusValue,
      'isRegistered': instance.isRegistered,
      'registrationBookItem': instance.registrationBookItem?.toJson(),
      'signerId': instance.signerId,
      'actorId': instance.actorId,
      'overseerId': instance.overseerId,
    };

DocumentListItemFragmentMixin$OutgoingDocListItem
    _$DocumentListItemFragmentMixin$OutgoingDocListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$OutgoingDocListItem()
    ..addressees =
        (json['addressees'] as List)?.map((e) => e as String)?.toList()
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as int)?.toList()
    ..senderId = json['senderId'] as String
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..actorId = json['actorId'] as String;
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$OutgoingDocListItemToJson(
        DocumentListItemFragmentMixin$OutgoingDocListItem instance) =>
    <String, dynamic>{
      'addressees': instance.addressees,
      'addresseeIds': instance.addresseeIds,
      'senderId': instance.senderId,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'actorId': instance.actorId,
    };

DocumentListItemFragmentMixin$MassMailListItem
    _$DocumentListItemFragmentMixin$MassMailListItemFromJson(
        Map<String, dynamic> json) {
  return DocumentListItemFragmentMixin$MassMailListItem()
    ..isSent = json['isSent'] as bool
    ..senderId = json['senderId'] as String
    ..sendingDate = json['sendingDate'] == null
        ? null
        : DateTime.parse(json['sendingDate'] as String)
    ..sendingAuthor = json['sendingAuthor'] as String
    ..mailingGroupsIds =
        (json['mailingGroupsIds'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$DocumentListItemFragmentMixin$MassMailListItemToJson(
        DocumentListItemFragmentMixin$MassMailListItem instance) =>
    <String, dynamic>{
      'isSent': instance.isSent,
      'senderId': instance.senderId,
      'sendingDate': instance.sendingDate?.toIso8601String(),
      'sendingAuthor': instance.sendingAuthor,
      'mailingGroupsIds': instance.mailingGroupsIds,
    };

BaseAttributeSearch _$BaseAttributeSearchFromJson(Map<String, dynamic> json) {
  return BaseAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
  );
}

Map<String, dynamic> _$BaseAttributeSearchToJson(
        BaseAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
    };

SortInputDocumentSortFieldEnumType _$SortInputDocumentSortFieldEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SortInputDocumentSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$DocumentSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: DocumentSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputDocumentSortFieldEnumTypeToJson(
        SortInputDocumentSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$DocumentSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$DocumentSortFieldEnumTypeEnumMap = {
  DocumentSortFieldEnumType.whenCreated: 'whenCreated',
  DocumentSortFieldEnumType.title: 'title',
  DocumentSortFieldEnumType.whenEdited: 'whenEdited',
  DocumentSortFieldEnumType.author: 'author',
  DocumentSortFieldEnumType.type: 'type',
  DocumentSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList
    _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditListFromJson(
        Map<String, dynamic> json) {
  return ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList()
    ..userId = json['userId'] as String
    ..whenRead = json['whenRead'] == null
        ? null
        : DateTime.parse(json['whenRead'] as String)
    ..masters = (json['masters'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic>
    _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditListToJson(
            ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList
                instance) =>
        <String, dynamic>{
          'userId': instance.userId,
          'whenRead': instance.whenRead?.toIso8601String(),
          'masters': instance.masters,
        };

ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList
    _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditListFromJson(
        Map<String, dynamic> json) {
  return ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList()
    ..userId = json['userId'] as String
    ..whenRead = json['whenRead'] == null
        ? null
        : DateTime.parse(json['whenRead'] as String)
    ..masters = (json['masters'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic>
    _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditListToJson(
            ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList
                instance) =>
        <String, dynamic>{
          'userId': instance.userId,
          'whenRead': instance.whenRead?.toIso8601String(),
          'masters': instance.masters,
        };

ExaminationDocuments$DFSQuery$ExaminationDocuments$Items
    _$ExaminationDocuments$DFSQuery$ExaminationDocuments$ItemsFromJson(
        Map<String, dynamic> json) {
  return ExaminationDocuments$DFSQuery$ExaminationDocuments$Items()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..title = json['title'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..readAuditList = (json['readAuditList'] as List)
        ?.map((e) => e == null
            ? null
            : ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..examinationAuditList = (json['examinationAuditList'] as List)
        ?.map((e) => e == null
            ? null
            : ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null
        ? null
        : DateTime.parse(json['whenPublished'] as String);
}

Map<String,
    dynamic> _$ExaminationDocuments$DFSQuery$ExaminationDocuments$ItemsToJson(
        ExaminationDocuments$DFSQuery$ExaminationDocuments$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'compileTitle': instance.compileTitle,
      'title': instance.title,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'readAuditList':
          instance.readAuditList?.map((e) => e?.toJson())?.toList(),
      'examinationAuditList':
          instance.examinationAuditList?.map((e) => e?.toJson())?.toList(),
      'publisherId': instance.publisherId,
      'whenPublished': instance.whenPublished?.toIso8601String(),
    };

ExaminationDocuments$DFSQuery$ExaminationDocuments
    _$ExaminationDocuments$DFSQuery$ExaminationDocumentsFromJson(
        Map<String, dynamic> json) {
  return ExaminationDocuments$DFSQuery$ExaminationDocuments()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ExaminationDocuments$DFSQuery$ExaminationDocuments$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ExaminationDocuments$DFSQuery$ExaminationDocumentsToJson(
        ExaminationDocuments$DFSQuery$ExaminationDocuments instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

ExaminationDocuments$DFSQuery _$ExaminationDocuments$DFSQueryFromJson(
    Map<String, dynamic> json) {
  return ExaminationDocuments$DFSQuery()
    ..examinationDocuments = json['examinationDocuments'] == null
        ? null
        : ExaminationDocuments$DFSQuery$ExaminationDocuments.fromJson(
            json['examinationDocuments'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ExaminationDocuments$DFSQueryToJson(
        ExaminationDocuments$DFSQuery instance) =>
    <String, dynamic>{
      'examinationDocuments': instance.examinationDocuments?.toJson(),
    };

ExaminationDocumentsAttributeSearch
    _$ExaminationDocumentsAttributeSearchFromJson(Map<String, dynamic> json) {
  return ExaminationDocumentsAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    person: json['person'] as String,
    hideExamined: json['hideExamined'] as bool,
    hideRead: json['hideRead'] as bool,
    showDisabled: json['showDisabled'] as bool,
  );
}

Map<String, dynamic> _$ExaminationDocumentsAttributeSearchToJson(
        ExaminationDocumentsAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'person': instance.person,
      'hideExamined': instance.hideExamined,
      'hideRead': instance.hideRead,
      'showDisabled': instance.showDisabled,
    };

GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant
    _$GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$ApplicantFromJson(
        Map<String, dynamic> json) {
  return GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic>
    _$GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$ApplicantToJson(
            GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant
                instance) =>
        <String, dynamic>{
          'firstName': instance.firstName,
          'lastName': instance.lastName,
          'patronymic': instance.patronymic,
          'personalIdentifier': instance.personalIdentifier,
        };

GenericRequestDoc$DFSQuery$GenericRequestDoc$Items
    _$GenericRequestDoc$DFSQuery$GenericRequestDoc$ItemsFromJson(
        Map<String, dynamic> json) {
  return GenericRequestDoc$DFSQuery$GenericRequestDoc$Items()
    ..id = json['id'] as String
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..categoryId = json['categoryId'] as String
    ..compileTitle = json['compileTitle'] as String
    ..title = json['title'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..responderId = json['responderId'] as String
    ..curatorId = json['curatorId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..editorId = json['editorId'] as String
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String;
}

Map<String, dynamic> _$GenericRequestDoc$DFSQuery$GenericRequestDoc$ItemsToJson(
        GenericRequestDoc$DFSQuery$GenericRequestDoc$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressee': instance.addressee,
      'addresseeName': instance.addresseeName,
      'applicant': instance.applicant?.toJson(),
      'categoryId': instance.categoryId,
      'compileTitle': instance.compileTitle,
      'title': instance.title,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'responderId': instance.responderId,
      'curatorId': instance.curatorId,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'editorId': instance.editorId,
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'documentStatusDescription': instance.documentStatusDescription,
      'scanCopy': instance.scanCopy,
    };

GenericRequestDoc$DFSQuery$GenericRequestDoc
    _$GenericRequestDoc$DFSQuery$GenericRequestDocFromJson(
        Map<String, dynamic> json) {
  return GenericRequestDoc$DFSQuery$GenericRequestDoc()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : GenericRequestDoc$DFSQuery$GenericRequestDoc$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GenericRequestDoc$DFSQuery$GenericRequestDocToJson(
        GenericRequestDoc$DFSQuery$GenericRequestDoc instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

GenericRequestDoc$DFSQuery _$GenericRequestDoc$DFSQueryFromJson(
    Map<String, dynamic> json) {
  return GenericRequestDoc$DFSQuery()
    ..genericRequestDoc = json['genericRequestDoc'] == null
        ? null
        : GenericRequestDoc$DFSQuery$GenericRequestDoc.fromJson(
            json['genericRequestDoc'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenericRequestDoc$DFSQueryToJson(
        GenericRequestDoc$DFSQuery instance) =>
    <String, dynamic>{
      'genericRequestDoc': instance.genericRequestDoc?.toJson(),
    };

GenericRequestDocAttributeSearch _$GenericRequestDocAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return GenericRequestDocAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    addresseeIds:
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList(),
    responder: json['responder'] as String,
    overseer: json['overseer'] as String,
    applicant: json['applicant'] as String,
    category: _$enumDecodeNullable(_$DocumentTypeEnumMap, json['category'],
        unknownValue: DocumentType.artemisUnknown),
  );
}

Map<String, dynamic> _$GenericRequestDocAttributeSearchToJson(
        GenericRequestDocAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'addresseeIds': instance.addresseeIds,
      'responder': instance.responder,
      'overseer': instance.overseer,
      'applicant': instance.applicant,
      'category': _$DocumentTypeEnumMap[instance.category],
    };

SortInputGenericRequestDocsSortFieldEnumType
    _$SortInputGenericRequestDocsSortFieldEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SortInputGenericRequestDocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$GenericRequestDocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: GenericRequestDocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputGenericRequestDocsSortFieldEnumTypeToJson(
        SortInputGenericRequestDocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$GenericRequestDocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$GenericRequestDocsSortFieldEnumTypeEnumMap = {
  GenericRequestDocsSortFieldEnumType.applicant: 'applicant',
  GenericRequestDocsSortFieldEnumType.categoryId: 'categoryId',
  GenericRequestDocsSortFieldEnumType.whenCreated: 'whenCreated',
  GenericRequestDocsSortFieldEnumType.whenEdited: 'whenEdited',
  GenericRequestDocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

HrDocs$DFSQuery$HRRequestDoc$Items$Applicant
    _$HrDocs$DFSQuery$HRRequestDoc$Items$ApplicantFromJson(
        Map<String, dynamic> json) {
  return HrDocs$DFSQuery$HRRequestDoc$Items$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$HrDocs$DFSQuery$HRRequestDoc$Items$ApplicantToJson(
        HrDocs$DFSQuery$HRRequestDoc$Items$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor
    _$HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptorFromJson(
        Map<String, dynamic> json) {
  return HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor()
    ..issuedDate = json['issuedDate'] == null
        ? null
        : DateTime.parse(json['issuedDate'] as String)
    ..number = json['number'] as String;
}

Map<String, dynamic> _$HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptorToJson(
        HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor instance) =>
    <String, dynamic>{
      'issuedDate': instance.issuedDate?.toIso8601String(),
      'number': instance.number,
    };

HrDocs$DFSQuery$HRRequestDoc$Items _$HrDocs$DFSQuery$HRRequestDoc$ItemsFromJson(
    Map<String, dynamic> json) {
  return HrDocs$DFSQuery$HRRequestDoc$Items()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..title = json['title'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..applicant = json['applicant'] == null
        ? null
        : HrDocs$DFSQuery$HRRequestDoc$Items$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..responder = json['responder'] as String
    ..addresseeName = json['addresseeName'] as String
    ..addressee = json['addressee'] as String
    ..status = json['status'] as String
    ..orderDescriptor = json['orderDescriptor'] == null
        ? null
        : HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor.fromJson(
            json['orderDescriptor'] as Map<String, dynamic>)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..editorId = json['editorId'] as String
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..scanCopy = json['scanCopy'] as String
    ..documentStatusDescription = json['documentStatusDescription'] as String;
}

Map<String, dynamic> _$HrDocs$DFSQuery$HRRequestDoc$ItemsToJson(
        HrDocs$DFSQuery$HRRequestDoc$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'compileTitle': instance.compileTitle,
      'title': instance.title,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'applicant': instance.applicant?.toJson(),
      'responder': instance.responder,
      'addresseeName': instance.addresseeName,
      'addressee': instance.addressee,
      'status': instance.status,
      'orderDescriptor': instance.orderDescriptor?.toJson(),
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'editorId': instance.editorId,
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'scanCopy': instance.scanCopy,
      'documentStatusDescription': instance.documentStatusDescription,
    };

HrDocs$DFSQuery$HRRequestDoc _$HrDocs$DFSQuery$HRRequestDocFromJson(
    Map<String, dynamic> json) {
  return HrDocs$DFSQuery$HRRequestDoc()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : HrDocs$DFSQuery$HRRequestDoc$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HrDocs$DFSQuery$HRRequestDocToJson(
        HrDocs$DFSQuery$HRRequestDoc instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

HrDocs$DFSQuery _$HrDocs$DFSQueryFromJson(Map<String, dynamic> json) {
  return HrDocs$DFSQuery()
    ..hRRequestDoc = json['hRRequestDoc'] == null
        ? null
        : HrDocs$DFSQuery$HRRequestDoc.fromJson(
            json['hRRequestDoc'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HrDocs$DFSQueryToJson(HrDocs$DFSQuery instance) =>
    <String, dynamic>{
      'hRRequestDoc': instance.hRRequestDoc?.toJson(),
    };

HrDocAttributeSearch _$HrDocAttributeSearchFromJson(Map<String, dynamic> json) {
  return HrDocAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    addresseeIds:
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList(),
    responder: json['responder'] as String,
    applicant: json['applicant'] as String,
    orderNumber: json['orderNumber'] as String,
    documentStatus: json['documentStatus'] as String,
    type: _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown),
    statusFilter:
        (json['statusFilter'] as List)?.map((e) => e as String)?.toList(),
    isShowDocsWithOrders: json['isShowDocsWithOrders'] as bool,
    isShowRevokedDocs: json['isShowRevokedDocs'] as bool,
    isShowInProgressDocs: json['isShowInProgressDocs'] as bool,
  );
}

Map<String, dynamic> _$HrDocAttributeSearchToJson(
        HrDocAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'addresseeIds': instance.addresseeIds,
      'responder': instance.responder,
      'applicant': instance.applicant,
      'orderNumber': instance.orderNumber,
      'documentStatus': instance.documentStatus,
      'type': _$DocumentTypeEnumMap[instance.type],
      'statusFilter': instance.statusFilter,
      'isShowDocsWithOrders': instance.isShowDocsWithOrders,
      'isShowRevokedDocs': instance.isShowRevokedDocs,
      'isShowInProgressDocs': instance.isShowInProgressDocs,
    };

SortInputHRRequestDocsSortFieldEnumType
    _$SortInputHRRequestDocsSortFieldEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SortInputHRRequestDocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$HRRequestDocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: HRRequestDocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputHRRequestDocsSortFieldEnumTypeToJson(
        SortInputHRRequestDocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$HRRequestDocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$HRRequestDocsSortFieldEnumTypeEnumMap = {
  HRRequestDocsSortFieldEnumType.applicant: 'applicant',
  HRRequestDocsSortFieldEnumType.type: 'type',
  HRRequestDocsSortFieldEnumType.whenCreated: 'whenCreated',
  HRRequestDocsSortFieldEnumType.whenEdited: 'whenEdited',
  HRRequestDocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

IncomingDocs$DFSQuery$IncomingDocs$Items
    _$IncomingDocs$DFSQuery$IncomingDocs$ItemsFromJson(
        Map<String, dynamic> json) {
  return IncomingDocs$DFSQuery$IncomingDocs$Items()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..compileTitle = json['compileTitle'] as String
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..sender = json['sender'] as String
    ..senderId = json['senderId'] as int
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..registrationAuthorId = json['registrationAuthorId'] as String
    ..reservedRegistrationDate = json['reservedRegistrationDate'] == null
        ? null
        : DateTime.parse(json['reservedRegistrationDate'] as String)
    ..reservedRegistrationNumber = json['reservedRegistrationNumber'] as String
    ..reservedRegistrationAuthorId =
        json['reservedRegistrationAuthorId'] as String
    ..senderOutgoingNumber = json['senderOutgoingNumber'] as String
    ..documentDate = json['documentDate'] == null
        ? null
        : DateTime.parse(json['documentDate'] as String)
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..controlCardsCount = json['controlCardsCount'] as int
    ..controlCardsRemovedCount = json['controlCardsRemovedCount'] as int
    ..documentStatusDescription = json['documentStatusDescription'] as String;
}

Map<String, dynamic> _$IncomingDocs$DFSQuery$IncomingDocs$ItemsToJson(
        IncomingDocs$DFSQuery$IncomingDocs$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'compileTitle': instance.compileTitle,
      'addresseeIds': instance.addresseeIds,
      'sender': instance.sender,
      'senderId': instance.senderId,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'registrationAuthorId': instance.registrationAuthorId,
      'reservedRegistrationDate':
          instance.reservedRegistrationDate?.toIso8601String(),
      'reservedRegistrationNumber': instance.reservedRegistrationNumber,
      'reservedRegistrationAuthorId': instance.reservedRegistrationAuthorId,
      'senderOutgoingNumber': instance.senderOutgoingNumber,
      'documentDate': instance.documentDate?.toIso8601String(),
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'controlCardsCount': instance.controlCardsCount,
      'controlCardsRemovedCount': instance.controlCardsRemovedCount,
      'documentStatusDescription': instance.documentStatusDescription,
    };

IncomingDocs$DFSQuery$IncomingDocs _$IncomingDocs$DFSQuery$IncomingDocsFromJson(
    Map<String, dynamic> json) {
  return IncomingDocs$DFSQuery$IncomingDocs()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : IncomingDocs$DFSQuery$IncomingDocs$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$IncomingDocs$DFSQuery$IncomingDocsToJson(
        IncomingDocs$DFSQuery$IncomingDocs instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

IncomingDocs$DFSQuery _$IncomingDocs$DFSQueryFromJson(
    Map<String, dynamic> json) {
  return IncomingDocs$DFSQuery()
    ..incomingDocs = json['incomingDocs'] == null
        ? null
        : IncomingDocs$DFSQuery$IncomingDocs.fromJson(
            json['incomingDocs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$IncomingDocs$DFSQueryToJson(
        IncomingDocs$DFSQuery instance) =>
    <String, dynamic>{
      'incomingDocs': instance.incomingDocs?.toJson(),
    };

IncomingDocsAttributeSearch _$IncomingDocsAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return IncomingDocsAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    sender: json['sender'] as String,
    addresseeIds:
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList(),
    senderOutgoingNumber: json['senderOutgoingNumber'] as String,
    fromDocumentDate: json['fromDocumentDate'] == null
        ? null
        : DateTime.parse(json['fromDocumentDate'] as String),
    toDocumentDate: json['toDocumentDate'] == null
        ? null
        : DateTime.parse(json['toDocumentDate'] as String),
    correspondentId: json['correspondentId'] as int,
  );
}

Map<String, dynamic> _$IncomingDocsAttributeSearchToJson(
        IncomingDocsAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'sender': instance.sender,
      'addresseeIds': instance.addresseeIds,
      'senderOutgoingNumber': instance.senderOutgoingNumber,
      'fromDocumentDate': instance.fromDocumentDate?.toIso8601String(),
      'toDocumentDate': instance.toDocumentDate?.toIso8601String(),
      'correspondentId': instance.correspondentId,
    };

SortInputIncomingDocsSortFieldEnumType
    _$SortInputIncomingDocsSortFieldEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SortInputIncomingDocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$IncomingDocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: IncomingDocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputIncomingDocsSortFieldEnumTypeToJson(
        SortInputIncomingDocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$IncomingDocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$IncomingDocsSortFieldEnumTypeEnumMap = {
  IncomingDocsSortFieldEnumType.title: 'title',
  IncomingDocsSortFieldEnumType.sender: 'sender',
  IncomingDocsSortFieldEnumType.outNum: 'outNum',
  IncomingDocsSortFieldEnumType.docDate: 'docDate',
  IncomingDocsSortFieldEnumType.regnum: 'regnum',
  IncomingDocsSortFieldEnumType.regdate: 'regdate',
  IncomingDocsSortFieldEnumType.whenCreated: 'whenCreated',
  IncomingDocsSortFieldEnumType.whenEdited: 'whenEdited',
  IncomingDocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Letters$DFSQuery$Letters$Items _$Letters$DFSQuery$Letters$ItemsFromJson(
    Map<String, dynamic> json) {
  return Letters$DFSQuery$Letters$Items()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..head = json['head'] as String
    ..actorId = json['actorId'] as String
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList()
    ..isRegistered = json['isRegistered'] as bool
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..senderId = json['senderId'] as String
    ..status = json['status'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String;
}

Map<String, dynamic> _$Letters$DFSQuery$Letters$ItemsToJson(
        Letters$DFSQuery$Letters$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'compileTitle': instance.compileTitle,
      'head': instance.head,
      'actorId': instance.actorId,
      'addresseeIds': instance.addresseeIds,
      'isRegistered': instance.isRegistered,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'senderId': instance.senderId,
      'status': instance.status,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'documentStatusDescription': instance.documentStatusDescription,
    };

Letters$DFSQuery$Letters _$Letters$DFSQuery$LettersFromJson(
    Map<String, dynamic> json) {
  return Letters$DFSQuery$Letters()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : Letters$DFSQuery$Letters$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Letters$DFSQuery$LettersToJson(
        Letters$DFSQuery$Letters instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Letters$DFSQuery _$Letters$DFSQueryFromJson(Map<String, dynamic> json) {
  return Letters$DFSQuery()
    ..letters = json['letters'] == null
        ? null
        : Letters$DFSQuery$Letters.fromJson(
            json['letters'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Letters$DFSQueryToJson(Letters$DFSQuery instance) =>
    <String, dynamic>{
      'letters': instance.letters?.toJson(),
    };

LetterAttributeSearch _$LetterAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return LetterAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    addresseeIds:
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList(),
    sender: (json['sender'] as List)?.map((e) => e as String)?.toList(),
    actor: json['actor'] as String,
    responder: json['responder'] as String,
  );
}

Map<String, dynamic> _$LetterAttributeSearchToJson(
        LetterAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'addresseeIds': instance.addresseeIds,
      'sender': instance.sender,
      'actor': instance.actor,
      'responder': instance.responder,
    };

SortInputLettersSortFieldEnumType _$SortInputLettersSortFieldEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SortInputLettersSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$LettersSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: LettersSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputLettersSortFieldEnumTypeToJson(
        SortInputLettersSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$LettersSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$LettersSortFieldEnumTypeEnumMap = {
  LettersSortFieldEnumType.title: 'title',
  LettersSortFieldEnumType.sender: 'sender',
  LettersSortFieldEnumType.actor: 'actor',
  LettersSortFieldEnumType.regnum: 'regnum',
  LettersSortFieldEnumType.regdate: 'regdate',
  LettersSortFieldEnumType.whenCreated: 'whenCreated',
  LettersSortFieldEnumType.whenEdited: 'whenEdited',
  LettersSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem
    _$LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItemFromJson(
        Map<String, dynamic> json) {
  return LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem()
    ..authorId = json['authorId'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..documentId = json['documentId'] as String
    ..isPermanent = json['isPermanent'] as bool
    ..number = json['number'] as int
    ..registrationBookId = json['registrationBookId'] as String;
}

Map<String, dynamic>
    _$LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItemToJson(
            LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem instance) =>
        <String, dynamic>{
          'authorId': instance.authorId,
          'date': instance.date?.toIso8601String(),
          'documentId': instance.documentId,
          'isPermanent': instance.isPermanent,
          'number': instance.number,
          'registrationBookId': instance.registrationBookId,
        };

LNADocs$DFSQuery$LNADocs$Items _$LNADocs$DFSQuery$LNADocs$ItemsFromJson(
    Map<String, dynamic> json) {
  return LNADocs$DFSQuery$LNADocs$Items()
    ..id = json['id'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..title = json['title'] as String
    ..compileTitle = json['compileTitle'] as String
    ..isRegistered = json['isRegistered'] as bool
    ..placeOfRegistrationValue = json['placeOfRegistrationValue'] as String
    ..placeOfRegistrationKey = json['placeOfRegistrationKey'] as String
    ..validStatusValue = json['validStatusValue'] as String
    ..isPublished = json['isPublished'] as bool
    ..publisherId = json['publisherId'] as String
    ..whenPublished = json['whenPublished'] == null
        ? null
        : DateTime.parse(json['whenPublished'] as String)
    ..registrationBookItem = json['registrationBookItem'] == null
        ? null
        : LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem.fromJson(
            json['registrationBookItem'] as Map<String, dynamic>)
    ..signerId = json['signerId'] as String
    ..actorId = json['actorId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..overseerId = json['overseerId'] as String
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String;
}

Map<String, dynamic> _$LNADocs$DFSQuery$LNADocs$ItemsToJson(
        LNADocs$DFSQuery$LNADocs$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'title': instance.title,
      'compileTitle': instance.compileTitle,
      'isRegistered': instance.isRegistered,
      'placeOfRegistrationValue': instance.placeOfRegistrationValue,
      'placeOfRegistrationKey': instance.placeOfRegistrationKey,
      'validStatusValue': instance.validStatusValue,
      'isPublished': instance.isPublished,
      'publisherId': instance.publisherId,
      'whenPublished': instance.whenPublished?.toIso8601String(),
      'registrationBookItem': instance.registrationBookItem?.toJson(),
      'signerId': instance.signerId,
      'actorId': instance.actorId,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'overseerId': instance.overseerId,
      'documentStatusDescription': instance.documentStatusDescription,
      'scanCopy': instance.scanCopy,
    };

LNADocs$DFSQuery$LNADocs _$LNADocs$DFSQuery$LNADocsFromJson(
    Map<String, dynamic> json) {
  return LNADocs$DFSQuery$LNADocs()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : LNADocs$DFSQuery$LNADocs$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LNADocs$DFSQuery$LNADocsToJson(
        LNADocs$DFSQuery$LNADocs instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

LNADocs$DFSQuery _$LNADocs$DFSQueryFromJson(Map<String, dynamic> json) {
  return LNADocs$DFSQuery()
    ..lNADocs = json['lNADocs'] == null
        ? null
        : LNADocs$DFSQuery$LNADocs.fromJson(
            json['lNADocs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LNADocs$DFSQueryToJson(LNADocs$DFSQuery instance) =>
    <String, dynamic>{
      'lNADocs': instance.lNADocs?.toJson(),
    };

LNAAttributeSearch _$LNAAttributeSearchFromJson(Map<String, dynamic> json) {
  return LNAAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    title: json['title'] as String,
    placeOfRegistration: json['placeOfRegistration'] as String,
    signerId: json['signerId'] as String,
    overseerId: json['overseerId'] as String,
    actorId: json['actorId'] as String,
    responderId: json['responderId'] as String,
    autorId: json['autorId'] as String,
    documentStatus: json['documentStatus'] as String,
    type: _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown),
    validStatusKey: json['validStatusKey'] as String,
    statusFilter:
        (json['statusFilter'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$LNAAttributeSearchToJson(LNAAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'title': instance.title,
      'placeOfRegistration': instance.placeOfRegistration,
      'signerId': instance.signerId,
      'overseerId': instance.overseerId,
      'actorId': instance.actorId,
      'responderId': instance.responderId,
      'autorId': instance.autorId,
      'documentStatus': instance.documentStatus,
      'type': _$DocumentTypeEnumMap[instance.type],
      'validStatusKey': instance.validStatusKey,
      'statusFilter': instance.statusFilter,
    };

SortInputLNADocsSortFieldEnumType _$SortInputLNADocsSortFieldEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SortInputLNADocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$LNADocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: LNADocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputLNADocsSortFieldEnumTypeToJson(
        SortInputLNADocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$LNADocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$LNADocsSortFieldEnumTypeEnumMap = {
  LNADocsSortFieldEnumType.registrationDate: 'registrationDate',
  LNADocsSortFieldEnumType.whenCreated: 'whenCreated',
  LNADocsSortFieldEnumType.whenEdited: 'whenEdited',
  LNADocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

MassMails$DFSQuery$MassMails$Items _$MassMails$DFSQuery$MassMails$ItemsFromJson(
    Map<String, dynamic> json) {
  return MassMails$DFSQuery$MassMails$Items()
    ..id = json['id'] as String
    ..compileTitle = json['compileTitle'] as String
    ..title = json['title'] as String
    ..senderId = json['senderId'] as String
    ..responderId = json['responderId'] as String
    ..mailingGroupsIds =
        (json['mailingGroupsIds'] as List)?.map((e) => e as String)?.toList()
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..isSent = json['isSent'] as bool
    ..sendingAuthor = json['sendingAuthor'] as String
    ..sendingDate = json['sendingDate'] == null
        ? null
        : DateTime.parse(json['sendingDate'] as String);
}

Map<String, dynamic> _$MassMails$DFSQuery$MassMails$ItemsToJson(
        MassMails$DFSQuery$MassMails$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'compileTitle': instance.compileTitle,
      'title': instance.title,
      'senderId': instance.senderId,
      'responderId': instance.responderId,
      'mailingGroupsIds': instance.mailingGroupsIds,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'documentStatusDescription': instance.documentStatusDescription,
      'isSent': instance.isSent,
      'sendingAuthor': instance.sendingAuthor,
      'sendingDate': instance.sendingDate?.toIso8601String(),
    };

MassMails$DFSQuery$MassMails _$MassMails$DFSQuery$MassMailsFromJson(
    Map<String, dynamic> json) {
  return MassMails$DFSQuery$MassMails()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : MassMails$DFSQuery$MassMails$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MassMails$DFSQuery$MassMailsToJson(
        MassMails$DFSQuery$MassMails instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

MassMails$DFSQuery _$MassMails$DFSQueryFromJson(Map<String, dynamic> json) {
  return MassMails$DFSQuery()
    ..massMails = json['massMails'] == null
        ? null
        : MassMails$DFSQuery$MassMails.fromJson(
            json['massMails'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MassMails$DFSQueryToJson(MassMails$DFSQuery instance) =>
    <String, dynamic>{
      'massMails': instance.massMails?.toJson(),
    };

MassMailAttributeSearch _$MassMailAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return MassMailAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    mailingGroupsIds:
        (json['mailingGroupsIds'] as List)?.map((e) => e as String)?.toList(),
    sender: (json['sender'] as List)?.map((e) => e as String)?.toList(),
    responder: json['responder'] as String,
  );
}

Map<String, dynamic> _$MassMailAttributeSearchToJson(
        MassMailAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'mailingGroupsIds': instance.mailingGroupsIds,
      'sender': instance.sender,
      'responder': instance.responder,
    };

SortInputMassMailsSortFieldEnumType
    _$SortInputMassMailsSortFieldEnumTypeFromJson(Map<String, dynamic> json) {
  return SortInputMassMailsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$MassMailsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: MassMailsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputMassMailsSortFieldEnumTypeToJson(
        SortInputMassMailsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$MassMailsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$MassMailsSortFieldEnumTypeEnumMap = {
  MassMailsSortFieldEnumType.title: 'title',
  MassMailsSortFieldEnumType.sender: 'sender',
  MassMailsSortFieldEnumType.whenCreated: 'whenCreated',
  MassMailsSortFieldEnumType.whenEdited: 'whenEdited',
  MassMailsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

OutgoingDocs$DFSQuery$OutgoingDocs$Items
    _$OutgoingDocs$DFSQuery$OutgoingDocs$ItemsFromJson(
        Map<String, dynamic> json) {
  return OutgoingDocs$DFSQuery$OutgoingDocs$Items()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..compileTitle = json['compileTitle'] as String
    ..addressees =
        (json['addressees'] as List)?.map((e) => e as String)?.toList()
    ..senderId = json['senderId'] as String
    ..addresseeIds =
        (json['addresseeIds'] as List)?.map((e) => e as int)?.toList()
    ..registrationDate = json['registrationDate'] == null
        ? null
        : DateTime.parse(json['registrationDate'] as String)
    ..registrationNumber = json['registrationNumber'] as String
    ..registrationAuthorId = json['registrationAuthorId'] as String
    ..reservedRegistrationDate = json['reservedRegistrationDate'] == null
        ? null
        : DateTime.parse(json['reservedRegistrationDate'] as String)
    ..reservedRegistrationNumber = json['reservedRegistrationNumber'] as String
    ..reservedRegistrationAuthorId =
        json['reservedRegistrationAuthorId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String;
}

Map<String, dynamic> _$OutgoingDocs$DFSQuery$OutgoingDocs$ItemsToJson(
        OutgoingDocs$DFSQuery$OutgoingDocs$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'compileTitle': instance.compileTitle,
      'addressees': instance.addressees,
      'senderId': instance.senderId,
      'addresseeIds': instance.addresseeIds,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'registrationNumber': instance.registrationNumber,
      'registrationAuthorId': instance.registrationAuthorId,
      'reservedRegistrationDate':
          instance.reservedRegistrationDate?.toIso8601String(),
      'reservedRegistrationNumber': instance.reservedRegistrationNumber,
      'reservedRegistrationAuthorId': instance.reservedRegistrationAuthorId,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'documentStatusDescription': instance.documentStatusDescription,
      'scanCopy': instance.scanCopy,
    };

OutgoingDocs$DFSQuery$OutgoingDocs _$OutgoingDocs$DFSQuery$OutgoingDocsFromJson(
    Map<String, dynamic> json) {
  return OutgoingDocs$DFSQuery$OutgoingDocs()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : OutgoingDocs$DFSQuery$OutgoingDocs$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OutgoingDocs$DFSQuery$OutgoingDocsToJson(
        OutgoingDocs$DFSQuery$OutgoingDocs instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

OutgoingDocs$DFSQuery _$OutgoingDocs$DFSQueryFromJson(
    Map<String, dynamic> json) {
  return OutgoingDocs$DFSQuery()
    ..outgoingDocs = json['outgoingDocs'] == null
        ? null
        : OutgoingDocs$DFSQuery$OutgoingDocs.fromJson(
            json['outgoingDocs'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OutgoingDocs$DFSQueryToJson(
        OutgoingDocs$DFSQuery instance) =>
    <String, dynamic>{
      'outgoingDocs': instance.outgoingDocs?.toJson(),
    };

OutgoingAttributeSearch _$OutgoingAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return OutgoingAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    subDocumentType: json['subDocumentType'] as String,
    addressee: json['addressee'] as String,
    responderId: json['responderId'] as String,
    actorId: json['actorId'] as String,
    senderId: json['senderId'] as String,
    correspondentId: json['correspondentId'] as int,
  );
}

Map<String, dynamic> _$OutgoingAttributeSearchToJson(
        OutgoingAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'subDocumentType': instance.subDocumentType,
      'addressee': instance.addressee,
      'responderId': instance.responderId,
      'actorId': instance.actorId,
      'senderId': instance.senderId,
      'correspondentId': instance.correspondentId,
    };

SortInputOutgoingDocsSortFieldEnumType
    _$SortInputOutgoingDocsSortFieldEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SortInputOutgoingDocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$OutgoingDocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: OutgoingDocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputOutgoingDocsSortFieldEnumTypeToJson(
        SortInputOutgoingDocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$OutgoingDocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$OutgoingDocsSortFieldEnumTypeEnumMap = {
  OutgoingDocsSortFieldEnumType.title: 'title',
  OutgoingDocsSortFieldEnumType.sender: 'sender',
  OutgoingDocsSortFieldEnumType.docDate: 'docDate',
  OutgoingDocsSortFieldEnumType.whenCreated: 'whenCreated',
  OutgoingDocsSortFieldEnumType.whenEdited: 'whenEdited',
  OutgoingDocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

RequestDoc$DFSQuery$RequestDoc$Items$Applicant
    _$RequestDoc$DFSQuery$RequestDoc$Items$ApplicantFromJson(
        Map<String, dynamic> json) {
  return RequestDoc$DFSQuery$RequestDoc$Items$Applicant()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..patronymic = json['patronymic'] as String
    ..personalIdentifier = json['personalIdentifier'] as String;
}

Map<String, dynamic> _$RequestDoc$DFSQuery$RequestDoc$Items$ApplicantToJson(
        RequestDoc$DFSQuery$RequestDoc$Items$Applicant instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'patronymic': instance.patronymic,
      'personalIdentifier': instance.personalIdentifier,
    };

RequestDoc$DFSQuery$RequestDoc$Items
    _$RequestDoc$DFSQuery$RequestDoc$ItemsFromJson(Map<String, dynamic> json) {
  return RequestDoc$DFSQuery$RequestDoc$Items()
    ..id = json['id'] as String
    ..addressee = json['addressee'] as String
    ..addresseeName = json['addresseeName'] as String
    ..applicant = json['applicant'] == null
        ? null
        : RequestDoc$DFSQuery$RequestDoc$Items$Applicant.fromJson(
            json['applicant'] as Map<String, dynamic>)
    ..compileTitle = json['compileTitle'] as String
    ..title = json['title'] as String
    ..documentType = _$enumDecodeNullable(
        _$DocumentTypeEnumMap, json['documentType'],
        unknownValue: DocumentType.artemisUnknown)
    ..responderId = json['responderId'] as String
    ..documentStatus = _$enumDecodeNullable(
        _$DocumentStatusEnumTypeEnumMap, json['documentStatus'],
        unknownValue: DocumentStatusEnumType.artemisUnknown)
    ..whenCreated = json['whenCreated'] == null
        ? null
        : DateTime.parse(json['whenCreated'] as String)
    ..editorId = json['editorId'] as String
    ..whenEdited = json['whenEdited'] == null
        ? null
        : DateTime.parse(json['whenEdited'] as String)
    ..documentStatusDescription = json['documentStatusDescription'] as String
    ..scanCopy = json['scanCopy'] as String;
}

Map<String, dynamic> _$RequestDoc$DFSQuery$RequestDoc$ItemsToJson(
        RequestDoc$DFSQuery$RequestDoc$Items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressee': instance.addressee,
      'addresseeName': instance.addresseeName,
      'applicant': instance.applicant?.toJson(),
      'compileTitle': instance.compileTitle,
      'title': instance.title,
      'documentType': _$DocumentTypeEnumMap[instance.documentType],
      'responderId': instance.responderId,
      'documentStatus':
          _$DocumentStatusEnumTypeEnumMap[instance.documentStatus],
      'whenCreated': instance.whenCreated?.toIso8601String(),
      'editorId': instance.editorId,
      'whenEdited': instance.whenEdited?.toIso8601String(),
      'documentStatusDescription': instance.documentStatusDescription,
      'scanCopy': instance.scanCopy,
    };

RequestDoc$DFSQuery$RequestDoc _$RequestDoc$DFSQuery$RequestDocFromJson(
    Map<String, dynamic> json) {
  return RequestDoc$DFSQuery$RequestDoc()
    ..count = json['count'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : RequestDoc$DFSQuery$RequestDoc$Items.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RequestDoc$DFSQuery$RequestDocToJson(
        RequestDoc$DFSQuery$RequestDoc instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

RequestDoc$DFSQuery _$RequestDoc$DFSQueryFromJson(Map<String, dynamic> json) {
  return RequestDoc$DFSQuery()
    ..requestDoc = json['requestDoc'] == null
        ? null
        : RequestDoc$DFSQuery$RequestDoc.fromJson(
            json['requestDoc'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RequestDoc$DFSQueryToJson(
        RequestDoc$DFSQuery instance) =>
    <String, dynamic>{
      'requestDoc': instance.requestDoc?.toJson(),
    };

RequestDocAttributeSearch _$RequestDocAttributeSearchFromJson(
    Map<String, dynamic> json) {
  return RequestDocAttributeSearch(
    author: json['author'] as String,
    contains: json['contains'] as String,
    isRegistred: json['isRegistred'] as bool,
    registrationNumber: json['registrationNumber'] as String,
    fromRegistrationDate: json['fromRegistrationDate'] == null
        ? null
        : DateTime.parse(json['fromRegistrationDate'] as String),
    toRegistrationDate: json['toRegistrationDate'] == null
        ? null
        : DateTime.parse(json['toRegistrationDate'] as String),
    documentSystemNumber: json['documentSystemNumber'] as String,
    documentSerialNumber: json['documentSerialNumber'] as String,
    documentTypes: (json['documentTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DocumentTypeEnumMap, e))
        ?.toList(),
    isScanCopyExists: json['isScanCopyExists'] as bool,
    addresseeIds:
        (json['addresseeIds'] as List)?.map((e) => e as String)?.toList(),
    responder: json['responder'] as String,
    applicant: json['applicant'] as String,
    documentStatus: json['documentStatus'] as String,
    type: _$enumDecodeNullable(_$DocumentTypeEnumMap, json['type'],
        unknownValue: DocumentType.artemisUnknown),
    statusFilter:
        (json['statusFilter'] as List)?.map((e) => e as String)?.toList(),
    isShowRevokedDocs: json['isShowRevokedDocs'] as bool,
    isShowInProgressDocs: json['isShowInProgressDocs'] as bool,
  );
}

Map<String, dynamic> _$RequestDocAttributeSearchToJson(
        RequestDocAttributeSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'contains': instance.contains,
      'isRegistred': instance.isRegistred,
      'registrationNumber': instance.registrationNumber,
      'fromRegistrationDate': instance.fromRegistrationDate?.toIso8601String(),
      'toRegistrationDate': instance.toRegistrationDate?.toIso8601String(),
      'documentSystemNumber': instance.documentSystemNumber,
      'documentSerialNumber': instance.documentSerialNumber,
      'documentTypes': instance.documentTypes
          ?.map((e) => _$DocumentTypeEnumMap[e])
          ?.toList(),
      'isScanCopyExists': instance.isScanCopyExists,
      'addresseeIds': instance.addresseeIds,
      'responder': instance.responder,
      'applicant': instance.applicant,
      'documentStatus': instance.documentStatus,
      'type': _$DocumentTypeEnumMap[instance.type],
      'statusFilter': instance.statusFilter,
      'isShowRevokedDocs': instance.isShowRevokedDocs,
      'isShowInProgressDocs': instance.isShowInProgressDocs,
    };

SortInputRequestDocsSortFieldEnumType
    _$SortInputRequestDocsSortFieldEnumTypeFromJson(Map<String, dynamic> json) {
  return SortInputRequestDocsSortFieldEnumType(
    field: _$enumDecodeNullable(
        _$RequestDocsSortFieldEnumTypeEnumMap, json['field'],
        unknownValue: RequestDocsSortFieldEnumType.artemisUnknown),
    isDesc: json['isDesc'] as bool,
  );
}

Map<String, dynamic> _$SortInputRequestDocsSortFieldEnumTypeToJson(
        SortInputRequestDocsSortFieldEnumType instance) =>
    <String, dynamic>{
      'field': _$RequestDocsSortFieldEnumTypeEnumMap[instance.field],
      'isDesc': instance.isDesc,
    };

const _$RequestDocsSortFieldEnumTypeEnumMap = {
  RequestDocsSortFieldEnumType.applicant: 'applicant',
  RequestDocsSortFieldEnumType.type: 'type',
  RequestDocsSortFieldEnumType.whenCreated: 'whenCreated',
  RequestDocsSortFieldEnumType.whenEdited: 'whenEdited',
  RequestDocsSortFieldEnumType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ContractsArguments _$ContractsArgumentsFromJson(Map<String, dynamic> json) {
  return ContractsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputContractsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : ContractsAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContractsArgumentsToJson(ContractsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

ControlCardsArguments _$ControlCardsArgumentsFromJson(
    Map<String, dynamic> json) {
  return ControlCardsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputControlCardsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : ControlCardsAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ControlCardsArgumentsToJson(
        ControlCardsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

DocumentsArguments _$DocumentsArgumentsFromJson(Map<String, dynamic> json) {
  return DocumentsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    attributeSearch: json['attributeSearch'] == null
        ? null
        : BaseAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
    sort: json['sort'] == null
        ? null
        : SortInputDocumentSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    onRegisterFilter: json['onRegisterFilter'] as bool,
  );
}

Map<String, dynamic> _$DocumentsArgumentsToJson(DocumentsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'attributeSearch': instance.attributeSearch?.toJson(),
      'sort': instance.sort?.toJson(),
      'onRegisterFilter': instance.onRegisterFilter,
    };

ExaminationDocumentsArguments _$ExaminationDocumentsArgumentsFromJson(
    Map<String, dynamic> json) {
  return ExaminationDocumentsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputDocumentSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : ExaminationDocumentsAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExaminationDocumentsArgumentsToJson(
        ExaminationDocumentsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

GenericRequestDocArguments _$GenericRequestDocArgumentsFromJson(
    Map<String, dynamic> json) {
  return GenericRequestDocArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputGenericRequestDocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : GenericRequestDocAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GenericRequestDocArgumentsToJson(
        GenericRequestDocArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

HrDocsArguments _$HrDocsArgumentsFromJson(Map<String, dynamic> json) {
  return HrDocsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputHRRequestDocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : HrDocAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HrDocsArgumentsToJson(HrDocsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

IncomingDocsArguments _$IncomingDocsArgumentsFromJson(
    Map<String, dynamic> json) {
  return IncomingDocsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputIncomingDocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : IncomingDocsAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IncomingDocsArgumentsToJson(
        IncomingDocsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

LettersArguments _$LettersArgumentsFromJson(Map<String, dynamic> json) {
  return LettersArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputLettersSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : LetterAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LettersArgumentsToJson(LettersArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

LNADocsArguments _$LNADocsArgumentsFromJson(Map<String, dynamic> json) {
  return LNADocsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputLNADocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : LNAAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LNADocsArgumentsToJson(LNADocsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

MassMailsArguments _$MassMailsArgumentsFromJson(Map<String, dynamic> json) {
  return MassMailsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputMassMailsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : MassMailAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MassMailsArgumentsToJson(MassMailsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

OutgoingDocsArguments _$OutgoingDocsArgumentsFromJson(
    Map<String, dynamic> json) {
  return OutgoingDocsArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputOutgoingDocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : OutgoingAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OutgoingDocsArgumentsToJson(
        OutgoingDocsArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };

RequestDocArguments _$RequestDocArgumentsFromJson(Map<String, dynamic> json) {
  return RequestDocArguments(
    skip: json['skip'] as int,
    limit: json['limit'] as int,
    sort: json['sort'] == null
        ? null
        : SortInputRequestDocsSortFieldEnumType.fromJson(
            json['sort'] as Map<String, dynamic>),
    attributeSearch: json['attributeSearch'] == null
        ? null
        : RequestDocAttributeSearch.fromJson(
            json['attributeSearch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RequestDocArgumentsToJson(
        RequestDocArguments instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'sort': instance.sort?.toJson(),
      'attributeSearch': instance.attributeSearch?.toJson(),
    };
