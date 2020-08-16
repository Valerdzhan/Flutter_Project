// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:ffi';

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.lists.graphql.g.dart';

mixin ControlCardFragmentMixin {
  String id;
  String hostDocumentId;
  DateTime date;
  DateTime deControlDate;
  @JsonKey(unknownEnumValue: ControlCardPeriodEnumType.artemisUnknown)
  ControlCardPeriodEnumType period;
  List<String> responderIds;
  ControlCardFragmentMixin$DocumentLastVersion documentLastVersion;
  ControlCardFragmentMixin$Type type;
  bool isRemoved;
  String authorId;
  String remark;
  String report;
  bool isControlRemovalRequested;
}
mixin ReferenceValueFragmentMixin {
  String id;
  String key;
  String value;
}
mixin DocumentListItemFragmentMixin {
  String id;
  String title;
  DateTime whenCreated;
  DateTime whenEdited;
  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;
  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;
  String documentStatusDescription;
  String authorName;
  String compileTitle;
  String responderId;
  String authorId;
  String editorId;
  int controlCardsCount;
  int controlCardsRemovedCount;
  String scanCopy;
  bool isPublished;
  String publisherId;
  DateTime whenPublished;
}

@JsonSerializable(explicitToJson: true)
class Contracts$DFSQuery$Contracts$Items with EquatableMixin {
  Contracts$DFSQuery$Contracts$Items();

  factory Contracts$DFSQuery$Contracts$Items.fromJson(
          Map<String, dynamic> json) =>
      _$Contracts$DFSQuery$Contracts$ItemsFromJson(json);

  String id;

  String title;

  String contractorId;

  String contractorName;

  Float sumAmountWithTax;

  String departmentResponder;

  String responderId;

  DateTime whenEdited;

  DateTime whenCreated;

  String status;

  String author;

  String editor;

  DateTime preparationDate;

  String registerNumber;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String scanCopy;

  String documentStatusDescription;

  @override
  List<Object> get props => [
        id,
        title,
        contractorId,
        contractorName,
        sumAmountWithTax,
        departmentResponder,
        responderId,
        whenEdited,
        whenCreated,
        status,
        author,
        editor,
        preparationDate,
        registerNumber,
        documentStatus,
        scanCopy,
        documentStatusDescription
      ];
  Map<String, dynamic> toJson() =>
      _$Contracts$DFSQuery$Contracts$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contracts$DFSQuery$Contracts with EquatableMixin {
  Contracts$DFSQuery$Contracts();

  factory Contracts$DFSQuery$Contracts.fromJson(Map<String, dynamic> json) =>
      _$Contracts$DFSQuery$ContractsFromJson(json);

  int count;

  List<Contracts$DFSQuery$Contracts$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$Contracts$DFSQuery$ContractsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Contracts$DFSQuery with EquatableMixin {
  Contracts$DFSQuery();

  factory Contracts$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$Contracts$DFSQueryFromJson(json);

  Contracts$DFSQuery$Contracts contracts;

  @override
  List<Object> get props => [contracts];
  Map<String, dynamic> toJson() => _$Contracts$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractsAttributeSearch with EquatableMixin {
  ContractsAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.amountFrom,
      this.amountTo,
      this.contractorId,
      this.contractor,
      this.documentStatus,
      this.statusFilter});

  factory ContractsAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$ContractsAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  Float amountFrom;

  Float amountTo;

  String contractorId;

  String contractor;

  String documentStatus;

  List<String> statusFilter;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        amountFrom,
        amountTo,
        contractorId,
        contractor,
        documentStatus,
        statusFilter
      ];
  Map<String, dynamic> toJson() => _$ContractsAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputContractsSortFieldEnumType with EquatableMixin {
  SortInputContractsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputContractsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputContractsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: ContractsSortFieldEnumType.artemisUnknown)
  ContractsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputContractsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCards$DFSQuery$ControlCards$Items
    with EquatableMixin, ControlCardFragmentMixin {
  ControlCards$DFSQuery$ControlCards$Items();

  factory ControlCards$DFSQuery$ControlCards$Items.fromJson(
          Map<String, dynamic> json) =>
      _$ControlCards$DFSQuery$ControlCards$ItemsFromJson(json);

  @override
  List<Object> get props => [
        id,
        hostDocumentId,
        date,
        deControlDate,
        period,
        responderIds,
        documentLastVersion,
        type,
        isRemoved,
        authorId,
        remark,
        report,
        isControlRemovalRequested
      ];
  Map<String, dynamic> toJson() =>
      _$ControlCards$DFSQuery$ControlCards$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCards$DFSQuery$ControlCards with EquatableMixin {
  ControlCards$DFSQuery$ControlCards();

  factory ControlCards$DFSQuery$ControlCards.fromJson(
          Map<String, dynamic> json) =>
      _$ControlCards$DFSQuery$ControlCardsFromJson(json);

  int count;

  List<ControlCards$DFSQuery$ControlCards$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() =>
      _$ControlCards$DFSQuery$ControlCardsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCards$DFSQuery with EquatableMixin {
  ControlCards$DFSQuery();

  factory ControlCards$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$ControlCards$DFSQueryFromJson(json);

  ControlCards$DFSQuery$ControlCards controlCards;

  @override
  List<Object> get props => [controlCards];
  Map<String, dynamic> toJson() => _$ControlCards$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCardFragmentMixin$DocumentLastVersion with EquatableMixin {
  ControlCardFragmentMixin$DocumentLastVersion();

  factory ControlCardFragmentMixin$DocumentLastVersion.fromJson(
          Map<String, dynamic> json) =>
      _$ControlCardFragmentMixin$DocumentLastVersionFromJson(json);

  String compileTitle;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  DateTime whenCreated;

  DateTime whenEdited;

  @override
  List<Object> get props =>
      [compileTitle, documentType, whenCreated, whenEdited];
  Map<String, dynamic> toJson() =>
      _$ControlCardFragmentMixin$DocumentLastVersionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCardFragmentMixin$Type
    with EquatableMixin, ReferenceValueFragmentMixin {
  ControlCardFragmentMixin$Type();

  factory ControlCardFragmentMixin$Type.fromJson(Map<String, dynamic> json) =>
      _$ControlCardFragmentMixin$TypeFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() => _$ControlCardFragmentMixin$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ControlCardsAttributeSearch with EquatableMixin {
  ControlCardsAttributeSearch(
      {this.contains,
      this.responders,
      this.filterTypes,
      this.fromDate,
      this.toDate,
      this.isOverdue,
      this.isControlRemoval,
      this.fromDeDate,
      this.toDeDate,
      this.isRemoved});

  factory ControlCardsAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$ControlCardsAttributeSearchFromJson(json);

  String contains;

  List<String> responders;

  List<String> filterTypes;

  DateTime fromDate;

  DateTime toDate;

  bool isOverdue;

  bool isControlRemoval;

  DateTime fromDeDate;

  DateTime toDeDate;

  bool isRemoved;

  @override
  List<Object> get props => [
        contains,
        responders,
        filterTypes,
        fromDate,
        toDate,
        isOverdue,
        isControlRemoval,
        fromDeDate,
        toDeDate,
        isRemoved
      ];
  Map<String, dynamic> toJson() => _$ControlCardsAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputControlCardsSortFieldEnumType with EquatableMixin {
  SortInputControlCardsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputControlCardsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputControlCardsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: ControlCardsSortFieldEnumType.artemisUnknown)
  ControlCardsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputControlCardsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Documents$DFSQuery$Documents$Items
    with EquatableMixin, DocumentListItemFragmentMixin {
  Documents$DFSQuery$Documents$Items();

  factory Documents$DFSQuery$Documents$Items.fromJson(
          Map<String, dynamic> json) =>
      _$Documents$DFSQuery$Documents$ItemsFromJson(json);

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  @override
  List<Object> get props => [
        id,
        title,
        whenCreated,
        whenEdited,
        type,
        documentStatus,
        documentStatusDescription,
        authorName,
        compileTitle,
        responderId,
        authorId,
        editorId,
        controlCardsCount,
        controlCardsRemovedCount,
        scanCopy,
        isPublished,
        publisherId,
        whenPublished,
        documentType
      ];
  Map<String, dynamic> toJson() =>
      _$Documents$DFSQuery$Documents$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Documents$DFSQuery$Documents with EquatableMixin {
  Documents$DFSQuery$Documents();

  factory Documents$DFSQuery$Documents.fromJson(Map<String, dynamic> json) =>
      _$Documents$DFSQuery$DocumentsFromJson(json);

  int count;

  List<Documents$DFSQuery$Documents$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$Documents$DFSQuery$DocumentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Documents$DFSQuery with EquatableMixin {
  Documents$DFSQuery();

  factory Documents$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$Documents$DFSQueryFromJson(json);

  Documents$DFSQuery$Documents documents;

  @override
  List<Object> get props => [documents];
  Map<String, dynamic> toJson() => _$Documents$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$ContractListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$ContractListItem();

  factory DocumentListItemFragmentMixin$ContractListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$ContractListItemFromJson(json);

  String contractorId;

  String contractorName;

  Float sumAmountWithTax;

  String departmentResponder;

  String status;

  String registerNumber;

  DateTime preparationDate;

  @override
  List<Object> get props => [
        contractorId,
        contractorName,
        sumAmountWithTax,
        departmentResponder,
        status,
        registerNumber,
        preparationDate
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$ContractListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant
    extends DocumentListItemFragmentMixin$HRRequestDocListItem
    with EquatableMixin {
  DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant();

  factory DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItem$ApplicantFromJson(
          json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItem$ApplicantToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
    extends DocumentListItemFragmentMixin$HRRequestDocListItem
    with EquatableMixin {
  DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor();

  factory DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptorFromJson(
          json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$HRRequestDocListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$HRRequestDocListItem();

  factory DocumentListItemFragmentMixin$HRRequestDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItemFromJson(json);

  String addressee;

  String addresseeName;

  DocumentListItemFragmentMixin$HRRequestDocListItem$Applicant applicant;

  DocumentListItemFragmentMixin$HRRequestDocListItem$OrderDescriptor
      orderDescriptor;

  String status;

  String applicantId;

  String applicantExternalUserId;

  @override
  List<Object> get props => [
        addressee,
        addresseeName,
        applicant,
        orderDescriptor,
        status,
        applicantId,
        applicantExternalUserId
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$HRRequestDocListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$GenericRequestListItem$Applicant
    extends DocumentListItemFragmentMixin$GenericRequestListItem
    with EquatableMixin {
  DocumentListItemFragmentMixin$GenericRequestListItem$Applicant();

  factory DocumentListItemFragmentMixin$GenericRequestListItem$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$GenericRequestListItem$ApplicantFromJson(
          json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$GenericRequestListItem$ApplicantToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$GenericRequestListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$GenericRequestListItem();

  factory DocumentListItemFragmentMixin$GenericRequestListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$GenericRequestListItemFromJson(json);

  String addressee;

  String addresseeName;

  DocumentListItemFragmentMixin$GenericRequestListItem$Applicant applicant;

  String categoryId;

  String responderId;

  String curatorId;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String documentStatusDescription;

  String scanCopy;

  @override
  List<Object> get props => [
        addressee,
        addresseeName,
        applicant,
        categoryId,
        responderId,
        curatorId,
        documentStatus,
        documentStatusDescription,
        scanCopy
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$GenericRequestListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$IncomingDocListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$IncomingDocListItem();

  factory DocumentListItemFragmentMixin$IncomingDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$IncomingDocListItemFromJson(json);

  List<String> addresseeIds;

  String sender;

  String senderId;

  String senderOutgoingNumber;

  DateTime documentDate;

  DateTime registrationDate;

  String registrationNumber;

  String registrationAuthorId;

  String actor;

  @override
  List<Object> get props => [
        addresseeIds,
        sender,
        senderId,
        senderOutgoingNumber,
        documentDate,
        registrationDate,
        registrationNumber,
        registrationAuthorId,
        actor
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$IncomingDocListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$LetterListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$LetterListItem();

  factory DocumentListItemFragmentMixin$LetterListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$LetterListItemFromJson(json);

  String head;

  List<String> addresseeIds;

  String senderId;

  String actorId;

  bool isRegistered;

  DateTime registrationDate;

  String registrationNumber;

  String status;

  @override
  List<Object> get props => [
        head,
        addresseeIds,
        senderId,
        actorId,
        isRegistered,
        registrationDate,
        registrationNumber,
        status
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$LetterListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
    extends DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
    with EquatableMixin {
  DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook();

  factory DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBookFromJson(
          json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBookToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
    extends DocumentListItemFragmentMixin$LNAListItem with EquatableMixin {
  DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem();

  factory DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItemFromJson(
          json);

  String authorId;

  DateTime date;

  String documentId;

  bool isPermanent;

  int number;

  String registrationBookId;

  DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem$RegistrationBook
      registrationBook;

  @override
  List<Object> get props => [
        authorId,
        date,
        documentId,
        isPermanent,
        number,
        registrationBookId,
        registrationBook
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$LNAListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$LNAListItem();

  factory DocumentListItemFragmentMixin$LNAListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$LNAListItemFromJson(json);

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  String placeOfRegistrationValue;

  String placeOfRegistrationKey;

  String validStatusValue;

  bool isRegistered;

  DocumentListItemFragmentMixin$LNAListItem$RegistrationBookItem
      registrationBookItem;

  String signerId;

  String actorId;

  String overseerId;

  @override
  List<Object> get props => [
        documentType,
        placeOfRegistrationValue,
        placeOfRegistrationKey,
        validStatusValue,
        isRegistered,
        registrationBookItem,
        signerId,
        actorId,
        overseerId
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$LNAListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$OutgoingDocListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$OutgoingDocListItem();

  factory DocumentListItemFragmentMixin$OutgoingDocListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$OutgoingDocListItemFromJson(json);

  List<String> addressees;

  List<String> addresseeIds;

  String senderId;

  DateTime registrationDate;

  String registrationNumber;

  String actorId;

  @override
  List<Object> get props => [
        addressees,
        addresseeIds,
        senderId,
        registrationDate,
        registrationNumber,
        actorId
      ];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$OutgoingDocListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DocumentListItemFragmentMixin$MassMailListItem
    extends DocumentListItemFragmentMixin with EquatableMixin {
  DocumentListItemFragmentMixin$MassMailListItem();

  factory DocumentListItemFragmentMixin$MassMailListItem.fromJson(
          Map<String, dynamic> json) =>
      _$DocumentListItemFragmentMixin$MassMailListItemFromJson(json);

  bool isSent;

  String senderId;

  DateTime sendingDate;

  String sendingAuthor;

  List<String> mailingGroupsIds;

  @override
  List<Object> get props =>
      [isSent, senderId, sendingDate, sendingAuthor, mailingGroupsIds];
  Map<String, dynamic> toJson() =>
      _$DocumentListItemFragmentMixin$MassMailListItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BaseAttributeSearch with EquatableMixin {
  BaseAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists});

  factory BaseAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$BaseAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists
      ];
  Map<String, dynamic> toJson() => _$BaseAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputDocumentSortFieldEnumType with EquatableMixin {
  SortInputDocumentSortFieldEnumType({this.field, this.isDesc});

  factory SortInputDocumentSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputDocumentSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: DocumentSortFieldEnumType.artemisUnknown)
  DocumentSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputDocumentSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList
    with EquatableMixin {
  ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList();

  factory ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList.fromJson(
          Map<String, dynamic> json) =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditListFromJson(
          json);

  String userId;

  DateTime whenRead;

  List<String> masters;

  @override
  List<Object> get props => [userId, whenRead, masters];
  Map<String, dynamic> toJson() =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditListToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList
    with EquatableMixin {
  ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList();

  factory ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList.fromJson(
          Map<String, dynamic> json) =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditListFromJson(
          json);

  String userId;

  DateTime whenRead;

  List<String> masters;

  @override
  List<Object> get props => [userId, whenRead, masters];
  Map<String, dynamic> toJson() =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditListToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocuments$DFSQuery$ExaminationDocuments$Items
    with EquatableMixin {
  ExaminationDocuments$DFSQuery$ExaminationDocuments$Items();

  factory ExaminationDocuments$DFSQuery$ExaminationDocuments$Items.fromJson(
          Map<String, dynamic> json) =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$ItemsFromJson(json);

  String id;

  String compileTitle;

  String title;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  List<ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ReadAuditList>
      readAuditList;

  List<ExaminationDocuments$DFSQuery$ExaminationDocuments$Items$ExaminationAuditList>
      examinationAuditList;

  String publisherId;

  DateTime whenPublished;

  @override
  List<Object> get props => [
        id,
        compileTitle,
        title,
        documentType,
        readAuditList,
        examinationAuditList,
        publisherId,
        whenPublished
      ];
  Map<String, dynamic> toJson() =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocuments$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocuments$DFSQuery$ExaminationDocuments with EquatableMixin {
  ExaminationDocuments$DFSQuery$ExaminationDocuments();

  factory ExaminationDocuments$DFSQuery$ExaminationDocuments.fromJson(
          Map<String, dynamic> json) =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocumentsFromJson(json);

  int count;

  List<ExaminationDocuments$DFSQuery$ExaminationDocuments$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() =>
      _$ExaminationDocuments$DFSQuery$ExaminationDocumentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocuments$DFSQuery with EquatableMixin {
  ExaminationDocuments$DFSQuery();

  factory ExaminationDocuments$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$ExaminationDocuments$DFSQueryFromJson(json);

  ExaminationDocuments$DFSQuery$ExaminationDocuments examinationDocuments;

  @override
  List<Object> get props => [examinationDocuments];
  Map<String, dynamic> toJson() => _$ExaminationDocuments$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocumentsAttributeSearch with EquatableMixin {
  ExaminationDocumentsAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.person,
      this.hideExamined,
      this.hideRead,
      this.showDisabled});

  factory ExaminationDocumentsAttributeSearch.fromJson(
          Map<String, dynamic> json) =>
      _$ExaminationDocumentsAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  String person;

  bool hideExamined;

  bool hideRead;

  bool showDisabled;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        person,
        hideExamined,
        hideRead,
        showDisabled
      ];
  Map<String, dynamic> toJson() =>
      _$ExaminationDocumentsAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant
    with EquatableMixin {
  GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant();

  factory GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$ApplicantFromJson(
          json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$ApplicantToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDoc$DFSQuery$GenericRequestDoc$Items with EquatableMixin {
  GenericRequestDoc$DFSQuery$GenericRequestDoc$Items();

  factory GenericRequestDoc$DFSQuery$GenericRequestDoc$Items.fromJson(
          Map<String, dynamic> json) =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDoc$ItemsFromJson(json);

  String id;

  String addressee;

  String addresseeName;

  GenericRequestDoc$DFSQuery$GenericRequestDoc$Items$Applicant applicant;

  String categoryId;

  String compileTitle;

  String title;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  String responderId;

  String curatorId;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  DateTime whenCreated;

  String editorId;

  DateTime whenEdited;

  String documentStatusDescription;

  String scanCopy;

  @override
  List<Object> get props => [
        id,
        addressee,
        addresseeName,
        applicant,
        categoryId,
        compileTitle,
        title,
        documentType,
        responderId,
        curatorId,
        documentStatus,
        whenCreated,
        editorId,
        whenEdited,
        documentStatusDescription,
        scanCopy
      ];
  Map<String, dynamic> toJson() =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDoc$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDoc$DFSQuery$GenericRequestDoc with EquatableMixin {
  GenericRequestDoc$DFSQuery$GenericRequestDoc();

  factory GenericRequestDoc$DFSQuery$GenericRequestDoc.fromJson(
          Map<String, dynamic> json) =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDocFromJson(json);

  int count;

  List<GenericRequestDoc$DFSQuery$GenericRequestDoc$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() =>
      _$GenericRequestDoc$DFSQuery$GenericRequestDocToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDoc$DFSQuery with EquatableMixin {
  GenericRequestDoc$DFSQuery();

  factory GenericRequestDoc$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$GenericRequestDoc$DFSQueryFromJson(json);

  GenericRequestDoc$DFSQuery$GenericRequestDoc genericRequestDoc;

  @override
  List<Object> get props => [genericRequestDoc];
  Map<String, dynamic> toJson() => _$GenericRequestDoc$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDocAttributeSearch with EquatableMixin {
  GenericRequestDocAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.addresseeIds,
      this.responder,
      this.overseer,
      this.applicant,
      this.category});

  factory GenericRequestDocAttributeSearch.fromJson(
          Map<String, dynamic> json) =>
      _$GenericRequestDocAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  List<String> addresseeIds;

  String responder;

  String overseer;

  String applicant;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType category;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        addresseeIds,
        responder,
        overseer,
        applicant,
        category
      ];
  Map<String, dynamic> toJson() =>
      _$GenericRequestDocAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputGenericRequestDocsSortFieldEnumType with EquatableMixin {
  SortInputGenericRequestDocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputGenericRequestDocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputGenericRequestDocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: GenericRequestDocsSortFieldEnumType.artemisUnknown)
  GenericRequestDocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputGenericRequestDocsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocs$DFSQuery$HRRequestDoc$Items$Applicant with EquatableMixin {
  HrDocs$DFSQuery$HRRequestDoc$Items$Applicant();

  factory HrDocs$DFSQuery$HRRequestDoc$Items$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$HrDocs$DFSQuery$HRRequestDoc$Items$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$HrDocs$DFSQuery$HRRequestDoc$Items$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor with EquatableMixin {
  HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor();

  factory HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptorFromJson(json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocs$DFSQuery$HRRequestDoc$Items with EquatableMixin {
  HrDocs$DFSQuery$HRRequestDoc$Items();

  factory HrDocs$DFSQuery$HRRequestDoc$Items.fromJson(
          Map<String, dynamic> json) =>
      _$HrDocs$DFSQuery$HRRequestDoc$ItemsFromJson(json);

  String id;

  String compileTitle;

  String title;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  HrDocs$DFSQuery$HRRequestDoc$Items$Applicant applicant;

  String responder;

  String addresseeName;

  String addressee;

  String status;

  HrDocs$DFSQuery$HRRequestDoc$Items$OrderDescriptor orderDescriptor;

  DateTime whenCreated;

  String editorId;

  DateTime whenEdited;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String scanCopy;

  String documentStatusDescription;

  @override
  List<Object> get props => [
        id,
        compileTitle,
        title,
        documentType,
        applicant,
        responder,
        addresseeName,
        addressee,
        status,
        orderDescriptor,
        whenCreated,
        editorId,
        whenEdited,
        documentStatus,
        scanCopy,
        documentStatusDescription
      ];
  Map<String, dynamic> toJson() =>
      _$HrDocs$DFSQuery$HRRequestDoc$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocs$DFSQuery$HRRequestDoc with EquatableMixin {
  HrDocs$DFSQuery$HRRequestDoc();

  factory HrDocs$DFSQuery$HRRequestDoc.fromJson(Map<String, dynamic> json) =>
      _$HrDocs$DFSQuery$HRRequestDocFromJson(json);

  int count;

  List<HrDocs$DFSQuery$HRRequestDoc$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$HrDocs$DFSQuery$HRRequestDocToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocs$DFSQuery with EquatableMixin {
  HrDocs$DFSQuery();

  factory HrDocs$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$HrDocs$DFSQueryFromJson(json);

  HrDocs$DFSQuery$HRRequestDoc hRRequestDoc;

  @override
  List<Object> get props => [hRRequestDoc];
  Map<String, dynamic> toJson() => _$HrDocs$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HrDocAttributeSearch with EquatableMixin {
  HrDocAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.addresseeIds,
      this.responder,
      this.applicant,
      this.orderNumber,
      this.documentStatus,
      this.type,
      this.statusFilter,
      this.isShowDocsWithOrders,
      this.isShowRevokedDocs,
      this.isShowInProgressDocs});

  factory HrDocAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$HrDocAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  List<String> addresseeIds;

  String responder;

  String applicant;

  String orderNumber;

  String documentStatus;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;

  List<String> statusFilter;

  bool isShowDocsWithOrders;

  bool isShowRevokedDocs;

  bool isShowInProgressDocs;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        addresseeIds,
        responder,
        applicant,
        orderNumber,
        documentStatus,
        type,
        statusFilter,
        isShowDocsWithOrders,
        isShowRevokedDocs,
        isShowInProgressDocs
      ];
  Map<String, dynamic> toJson() => _$HrDocAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputHRRequestDocsSortFieldEnumType with EquatableMixin {
  SortInputHRRequestDocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputHRRequestDocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputHRRequestDocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: HRRequestDocsSortFieldEnumType.artemisUnknown)
  HRRequestDocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputHRRequestDocsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocs$DFSQuery$IncomingDocs$Items with EquatableMixin {
  IncomingDocs$DFSQuery$IncomingDocs$Items();

  factory IncomingDocs$DFSQuery$IncomingDocs$Items.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocs$DFSQuery$IncomingDocs$ItemsFromJson(json);

  String id;

  String title;

  String compileTitle;

  List<String> addresseeIds;

  String sender;

  String senderId;

  DateTime registrationDate;

  String registrationNumber;

  String registrationAuthorId;

  DateTime reservedRegistrationDate;

  String reservedRegistrationNumber;

  String reservedRegistrationAuthorId;

  String senderOutgoingNumber;

  DateTime documentDate;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  int controlCardsCount;

  int controlCardsRemovedCount;

  String documentStatusDescription;

  @override
  List<Object> get props => [
        id,
        title,
        compileTitle,
        addresseeIds,
        sender,
        senderId,
        registrationDate,
        registrationNumber,
        registrationAuthorId,
        reservedRegistrationDate,
        reservedRegistrationNumber,
        reservedRegistrationAuthorId,
        senderOutgoingNumber,
        documentDate,
        documentStatus,
        controlCardsCount,
        controlCardsRemovedCount,
        documentStatusDescription
      ];
  Map<String, dynamic> toJson() =>
      _$IncomingDocs$DFSQuery$IncomingDocs$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocs$DFSQuery$IncomingDocs with EquatableMixin {
  IncomingDocs$DFSQuery$IncomingDocs();

  factory IncomingDocs$DFSQuery$IncomingDocs.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocs$DFSQuery$IncomingDocsFromJson(json);

  int count;

  List<IncomingDocs$DFSQuery$IncomingDocs$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() =>
      _$IncomingDocs$DFSQuery$IncomingDocsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocs$DFSQuery with EquatableMixin {
  IncomingDocs$DFSQuery();

  factory IncomingDocs$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$IncomingDocs$DFSQueryFromJson(json);

  IncomingDocs$DFSQuery$IncomingDocs incomingDocs;

  @override
  List<Object> get props => [incomingDocs];
  Map<String, dynamic> toJson() => _$IncomingDocs$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocsAttributeSearch with EquatableMixin {
  IncomingDocsAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.sender,
      this.addresseeIds,
      this.senderOutgoingNumber,
      this.fromDocumentDate,
      this.toDocumentDate,
      this.correspondentId});

  factory IncomingDocsAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$IncomingDocsAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  String sender;

  List<String> addresseeIds;

  String senderOutgoingNumber;

  DateTime fromDocumentDate;

  DateTime toDocumentDate;

  String correspondentId;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        sender,
        addresseeIds,
        senderOutgoingNumber,
        fromDocumentDate,
        toDocumentDate,
        correspondentId
      ];
  Map<String, dynamic> toJson() => _$IncomingDocsAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputIncomingDocsSortFieldEnumType with EquatableMixin {
  SortInputIncomingDocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputIncomingDocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputIncomingDocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: IncomingDocsSortFieldEnumType.artemisUnknown)
  IncomingDocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputIncomingDocsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Letters$DFSQuery$Letters$Items with EquatableMixin {
  Letters$DFSQuery$Letters$Items();

  factory Letters$DFSQuery$Letters$Items.fromJson(Map<String, dynamic> json) =>
      _$Letters$DFSQuery$Letters$ItemsFromJson(json);

  String id;

  String compileTitle;

  String head;

  String actorId;

  List<String> addresseeIds;

  bool isRegistered;

  DateTime registrationDate;

  String registrationNumber;

  String senderId;

  String status;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String documentStatusDescription;

  @override
  List<Object> get props => [
        id,
        compileTitle,
        head,
        actorId,
        addresseeIds,
        isRegistered,
        registrationDate,
        registrationNumber,
        senderId,
        status,
        documentStatus,
        documentStatusDescription
      ];
  Map<String, dynamic> toJson() => _$Letters$DFSQuery$Letters$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Letters$DFSQuery$Letters with EquatableMixin {
  Letters$DFSQuery$Letters();

  factory Letters$DFSQuery$Letters.fromJson(Map<String, dynamic> json) =>
      _$Letters$DFSQuery$LettersFromJson(json);

  int count;

  List<Letters$DFSQuery$Letters$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$Letters$DFSQuery$LettersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Letters$DFSQuery with EquatableMixin {
  Letters$DFSQuery();

  factory Letters$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$Letters$DFSQueryFromJson(json);

  Letters$DFSQuery$Letters letters;

  @override
  List<Object> get props => [letters];
  Map<String, dynamic> toJson() => _$Letters$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LetterAttributeSearch with EquatableMixin {
  LetterAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.addresseeIds,
      this.sender,
      this.actor,
      this.responder});

  factory LetterAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$LetterAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  List<String> addresseeIds;

  List<String> sender;

  String actor;

  String responder;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        addresseeIds,
        sender,
        actor,
        responder
      ];
  Map<String, dynamic> toJson() => _$LetterAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputLettersSortFieldEnumType with EquatableMixin {
  SortInputLettersSortFieldEnumType({this.field, this.isDesc});

  factory SortInputLettersSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputLettersSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: LettersSortFieldEnumType.artemisUnknown)
  LettersSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputLettersSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem with EquatableMixin {
  LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem();

  factory LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem.fromJson(
          Map<String, dynamic> json) =>
      _$LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItemFromJson(json);

  String authorId;

  DateTime date;

  String documentId;

  bool isPermanent;

  int number;

  String registrationBookId;

  @override
  List<Object> get props =>
      [authorId, date, documentId, isPermanent, number, registrationBookId];
  Map<String, dynamic> toJson() =>
      _$LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LNADocs$DFSQuery$LNADocs$Items with EquatableMixin {
  LNADocs$DFSQuery$LNADocs$Items();

  factory LNADocs$DFSQuery$LNADocs$Items.fromJson(Map<String, dynamic> json) =>
      _$LNADocs$DFSQuery$LNADocs$ItemsFromJson(json);

  String id;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  String title;

  String compileTitle;

  bool isRegistered;

  String placeOfRegistrationValue;

  String placeOfRegistrationKey;

  String validStatusValue;

  bool isPublished;

  String publisherId;

  DateTime whenPublished;

  LNADocs$DFSQuery$LNADocs$Items$RegistrationBookItem registrationBookItem;

  String signerId;

  String actorId;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String overseerId;

  String documentStatusDescription;

  String scanCopy;

  @override
  List<Object> get props => [
        id,
        documentType,
        title,
        compileTitle,
        isRegistered,
        placeOfRegistrationValue,
        placeOfRegistrationKey,
        validStatusValue,
        isPublished,
        publisherId,
        whenPublished,
        registrationBookItem,
        signerId,
        actorId,
        documentStatus,
        overseerId,
        documentStatusDescription,
        scanCopy
      ];
  Map<String, dynamic> toJson() => _$LNADocs$DFSQuery$LNADocs$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LNADocs$DFSQuery$LNADocs with EquatableMixin {
  LNADocs$DFSQuery$LNADocs();

  factory LNADocs$DFSQuery$LNADocs.fromJson(Map<String, dynamic> json) =>
      _$LNADocs$DFSQuery$LNADocsFromJson(json);

  int count;

  List<LNADocs$DFSQuery$LNADocs$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$LNADocs$DFSQuery$LNADocsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LNADocs$DFSQuery with EquatableMixin {
  LNADocs$DFSQuery();

  factory LNADocs$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$LNADocs$DFSQueryFromJson(json);

  LNADocs$DFSQuery$LNADocs lNADocs;

  @override
  List<Object> get props => [lNADocs];
  Map<String, dynamic> toJson() => _$LNADocs$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LNAAttributeSearch with EquatableMixin {
  LNAAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.title,
      this.placeOfRegistration,
      this.signerId,
      this.overseerId,
      this.actorId,
      this.responderId,
      this.autorId,
      this.documentStatus,
      this.type,
      this.validStatusKey,
      this.statusFilter});

  factory LNAAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$LNAAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  String title;

  String placeOfRegistration;

  String signerId;

  String overseerId;

  String actorId;

  String responderId;

  String autorId;

  String documentStatus;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;

  String validStatusKey;

  List<String> statusFilter;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        title,
        placeOfRegistration,
        signerId,
        overseerId,
        actorId,
        responderId,
        autorId,
        documentStatus,
        type,
        validStatusKey,
        statusFilter
      ];
  Map<String, dynamic> toJson() => _$LNAAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputLNADocsSortFieldEnumType with EquatableMixin {
  SortInputLNADocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputLNADocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputLNADocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: LNADocsSortFieldEnumType.artemisUnknown)
  LNADocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputLNADocsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MassMails$DFSQuery$MassMails$Items with EquatableMixin {
  MassMails$DFSQuery$MassMails$Items();

  factory MassMails$DFSQuery$MassMails$Items.fromJson(
          Map<String, dynamic> json) =>
      _$MassMails$DFSQuery$MassMails$ItemsFromJson(json);

  String id;

  String compileTitle;

  String title;

  String senderId;

  String responderId;

  List<String> mailingGroupsIds;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String documentStatusDescription;

  bool isSent;

  String sendingAuthor;

  DateTime sendingDate;

  @override
  List<Object> get props => [
        id,
        compileTitle,
        title,
        senderId,
        responderId,
        mailingGroupsIds,
        documentStatus,
        documentStatusDescription,
        isSent,
        sendingAuthor,
        sendingDate
      ];
  Map<String, dynamic> toJson() =>
      _$MassMails$DFSQuery$MassMails$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MassMails$DFSQuery$MassMails with EquatableMixin {
  MassMails$DFSQuery$MassMails();

  factory MassMails$DFSQuery$MassMails.fromJson(Map<String, dynamic> json) =>
      _$MassMails$DFSQuery$MassMailsFromJson(json);

  int count;

  List<MassMails$DFSQuery$MassMails$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$MassMails$DFSQuery$MassMailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MassMails$DFSQuery with EquatableMixin {
  MassMails$DFSQuery();

  factory MassMails$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$MassMails$DFSQueryFromJson(json);

  MassMails$DFSQuery$MassMails massMails;

  @override
  List<Object> get props => [massMails];
  Map<String, dynamic> toJson() => _$MassMails$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MassMailAttributeSearch with EquatableMixin {
  MassMailAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.mailingGroupsIds,
      this.sender,
      this.responder});

  factory MassMailAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$MassMailAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  List<String> mailingGroupsIds;

  List<String> sender;

  String responder;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        mailingGroupsIds,
        sender,
        responder
      ];
  Map<String, dynamic> toJson() => _$MassMailAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputMassMailsSortFieldEnumType with EquatableMixin {
  SortInputMassMailsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputMassMailsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputMassMailsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: MassMailsSortFieldEnumType.artemisUnknown)
  MassMailsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputMassMailsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocs$DFSQuery$OutgoingDocs$Items with EquatableMixin {
  OutgoingDocs$DFSQuery$OutgoingDocs$Items();

  factory OutgoingDocs$DFSQuery$OutgoingDocs$Items.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocs$DFSQuery$OutgoingDocs$ItemsFromJson(json);

  String id;

  String title;

  String compileTitle;

  List<String> addressees;

  String senderId;

  List<String> addresseeIds;

  DateTime registrationDate;

  String registrationNumber;

  String registrationAuthorId;

  DateTime reservedRegistrationDate;

  String reservedRegistrationNumber;

  String reservedRegistrationAuthorId;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  String documentStatusDescription;

  String scanCopy;

  @override
  List<Object> get props => [
        id,
        title,
        compileTitle,
        addressees,
        senderId,
        addresseeIds,
        registrationDate,
        registrationNumber,
        registrationAuthorId,
        reservedRegistrationDate,
        reservedRegistrationNumber,
        reservedRegistrationAuthorId,
        documentStatus,
        documentStatusDescription,
        scanCopy
      ];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocs$DFSQuery$OutgoingDocs$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocs$DFSQuery$OutgoingDocs with EquatableMixin {
  OutgoingDocs$DFSQuery$OutgoingDocs();

  factory OutgoingDocs$DFSQuery$OutgoingDocs.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocs$DFSQuery$OutgoingDocsFromJson(json);

  int count;

  List<OutgoingDocs$DFSQuery$OutgoingDocs$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocs$DFSQuery$OutgoingDocsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocs$DFSQuery with EquatableMixin {
  OutgoingDocs$DFSQuery();

  factory OutgoingDocs$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$OutgoingDocs$DFSQueryFromJson(json);

  OutgoingDocs$DFSQuery$OutgoingDocs outgoingDocs;

  @override
  List<Object> get props => [outgoingDocs];
  Map<String, dynamic> toJson() => _$OutgoingDocs$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingAttributeSearch with EquatableMixin {
  OutgoingAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.subDocumentType,
      this.addressee,
      this.responderId,
      this.actorId,
      this.senderId,
      this.correspondentId});

  factory OutgoingAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$OutgoingAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  String subDocumentType;

  String addressee;

  String responderId;

  String actorId;

  String senderId;

  String correspondentId;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        subDocumentType,
        addressee,
        responderId,
        actorId,
        senderId,
        correspondentId
      ];
  Map<String, dynamic> toJson() => _$OutgoingAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputOutgoingDocsSortFieldEnumType with EquatableMixin {
  SortInputOutgoingDocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputOutgoingDocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputOutgoingDocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: OutgoingDocsSortFieldEnumType.artemisUnknown)
  OutgoingDocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputOutgoingDocsSortFieldEnumTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestDoc$DFSQuery$RequestDoc$Items$Applicant with EquatableMixin {
  RequestDoc$DFSQuery$RequestDoc$Items$Applicant();

  factory RequestDoc$DFSQuery$RequestDoc$Items$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$RequestDoc$DFSQuery$RequestDoc$Items$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$RequestDoc$DFSQuery$RequestDoc$Items$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestDoc$DFSQuery$RequestDoc$Items with EquatableMixin {
  RequestDoc$DFSQuery$RequestDoc$Items();

  factory RequestDoc$DFSQuery$RequestDoc$Items.fromJson(
          Map<String, dynamic> json) =>
      _$RequestDoc$DFSQuery$RequestDoc$ItemsFromJson(json);

  String id;

  String addressee;

  String addresseeName;

  RequestDoc$DFSQuery$RequestDoc$Items$Applicant applicant;

  String compileTitle;

  String title;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  String responderId;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  DateTime whenCreated;

  String editorId;

  DateTime whenEdited;

  String documentStatusDescription;

  String scanCopy;

  @override
  List<Object> get props => [
        id,
        addressee,
        addresseeName,
        applicant,
        compileTitle,
        title,
        documentType,
        responderId,
        documentStatus,
        whenCreated,
        editorId,
        whenEdited,
        documentStatusDescription,
        scanCopy
      ];
  Map<String, dynamic> toJson() =>
      _$RequestDoc$DFSQuery$RequestDoc$ItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestDoc$DFSQuery$RequestDoc with EquatableMixin {
  RequestDoc$DFSQuery$RequestDoc();

  factory RequestDoc$DFSQuery$RequestDoc.fromJson(Map<String, dynamic> json) =>
      _$RequestDoc$DFSQuery$RequestDocFromJson(json);

  int count;

  List<RequestDoc$DFSQuery$RequestDoc$Items> items;

  @override
  List<Object> get props => [count, items];
  Map<String, dynamic> toJson() => _$RequestDoc$DFSQuery$RequestDocToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestDoc$DFSQuery with EquatableMixin {
  RequestDoc$DFSQuery();

  factory RequestDoc$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$RequestDoc$DFSQueryFromJson(json);

  RequestDoc$DFSQuery$RequestDoc requestDoc;

  @override
  List<Object> get props => [requestDoc];
  Map<String, dynamic> toJson() => _$RequestDoc$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestDocAttributeSearch with EquatableMixin {
  RequestDocAttributeSearch(
      {this.author,
      this.contains,
      this.isRegistred,
      this.registrationNumber,
      this.fromRegistrationDate,
      this.toRegistrationDate,
      this.documentSystemNumber,
      this.documentSerialNumber,
      this.documentTypes,
      this.isScanCopyExists,
      this.addresseeIds,
      this.responder,
      this.applicant,
      this.documentStatus,
      this.type,
      this.statusFilter,
      this.isShowRevokedDocs,
      this.isShowInProgressDocs});

  factory RequestDocAttributeSearch.fromJson(Map<String, dynamic> json) =>
      _$RequestDocAttributeSearchFromJson(json);

  String author;

  String contains;

  bool isRegistred;

  String registrationNumber;

  DateTime fromRegistrationDate;

  DateTime toRegistrationDate;

  String documentSystemNumber;

  String documentSerialNumber;

  List<DocumentType> documentTypes;

  bool isScanCopyExists;

  List<String> addresseeIds;

  String responder;

  String applicant;

  String documentStatus;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;

  List<String> statusFilter;

  bool isShowRevokedDocs;

  bool isShowInProgressDocs;

  @override
  List<Object> get props => [
        author,
        contains,
        isRegistred,
        registrationNumber,
        fromRegistrationDate,
        toRegistrationDate,
        documentSystemNumber,
        documentSerialNumber,
        documentTypes,
        isScanCopyExists,
        addresseeIds,
        responder,
        applicant,
        documentStatus,
        type,
        statusFilter,
        isShowRevokedDocs,
        isShowInProgressDocs
      ];
  Map<String, dynamic> toJson() => _$RequestDocAttributeSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SortInputRequestDocsSortFieldEnumType with EquatableMixin {
  SortInputRequestDocsSortFieldEnumType({this.field, this.isDesc});

  factory SortInputRequestDocsSortFieldEnumType.fromJson(
          Map<String, dynamic> json) =>
      _$SortInputRequestDocsSortFieldEnumTypeFromJson(json);

  @JsonKey(unknownEnumValue: RequestDocsSortFieldEnumType.artemisUnknown)
  RequestDocsSortFieldEnumType field;

  bool isDesc;

  @override
  List<Object> get props => [field, isDesc];
  Map<String, dynamic> toJson() =>
      _$SortInputRequestDocsSortFieldEnumTypeToJson(this);
}

enum ContractsSortFieldEnumType {
  @JsonValue("title")
  title,
  @JsonValue("contractor")
  contractor,
  @JsonValue("amount")
  amount,
  @JsonValue("department")
  department,
  @JsonValue("responder")
  responder,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("status")
  status,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum DocumentStatusEnumType {
  @JsonValue("UNKNOWN")
  unknown,
  @JsonValue("NOT_SUPPORTED")
  notSupported,
  @JsonValue("DRAFT")
  draft,
  @JsonValue("IN_PROGRESS")
  inProgress,
  @JsonValue("EXPIRED")
  expired,
  @JsonValue("REJECTED")
  rejected,
  @JsonValue("COMPLETED")
  completed,
  @JsonValue("REVIEWED")
  reviewed,
  @JsonValue("SENDED")
  sended,
  @JsonValue("ON_AGREEMENT")
  onAgreement,
  @JsonValue("REVOKED")
  revoked,
  @JsonValue("AGREED")
  agreed,
  @JsonValue("SIGNED")
  signed,
  @JsonValue("SOLVED")
  solved,
  @JsonValue("ON_PERFORMANCE")
  onPerformance,
  @JsonValue("AGREED_BY_ADDRESSEE")
  agreedByAddressee,
  @JsonValue("AGREED_BY_ADDRESSEE_IN_PROGRESS")
  agreedByAddresseeInProgress,
  @JsonValue("REJECTED_BY_ADDRESSEE")
  rejectedByAddressee,
  @JsonValue("REJECTED_BY_ADDRESSEE_IN_PROGRESS")
  rejectedByAddresseeInProgress,
  @JsonValue("REJECTED_BY_ADDRESSEE_BY_PERFORMER")
  rejectedByAddresseeByPerformer,
  @JsonValue("REJECTED_BY_ADDRESSEE_EXECUTED_BY_PERFORMER")
  rejectedByAddresseeExecutedByPerformer,
  @JsonValue("AGREED_BY_ADDRESSEE_REJECTED_BY_PERFORMER")
  agreedByAddresseeRejectedByPerformer,
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
enum ControlCardPeriodEnumType {
  @JsonValue("NO")
  no,
  @JsonValue("DAILY")
  daily,
  @JsonValue("WEEKLY")
  weekly,
  @JsonValue("TWO_TIMES_IN_MONTH")
  twoTimesInMonth,
  @JsonValue("MONTHLY")
  monthly,
  @JsonValue("QUARTERLY")
  quarterly,
  @JsonValue("SEMIANNUALLY")
  semiannually,
  @JsonValue("YEARLY")
  yearly,
  @JsonValue("ONCE_IN_TWO_YEARS")
  onceInTwoYears,
  @JsonValue("ONCE_EVERY_THREE_YEARS")
  onceEveryThreeYears,
  @JsonValue("CONTINUOUSLY")
  continuously,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum ControlCardsSortFieldEnumType {
  @JsonValue("documentTitle")
  documentTitle,
  @JsonValue("date")
  date,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum DocumentSortFieldEnumType {
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("title")
  title,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("author")
  author,
  @JsonValue("type")
  type,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum GenericRequestDocsSortFieldEnumType {
  @JsonValue("applicant")
  applicant,
  @JsonValue("categoryId")
  categoryId,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum HRRequestDocsSortFieldEnumType {
  @JsonValue("applicant")
  applicant,
  @JsonValue("type")
  type,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum IncomingDocsSortFieldEnumType {
  @JsonValue("title")
  title,
  @JsonValue("sender")
  sender,
  @JsonValue("outNum")
  outNum,
  @JsonValue("docDate")
  docDate,
  @JsonValue("regnum")
  regnum,
  @JsonValue("regdate")
  regdate,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum LettersSortFieldEnumType {
  @JsonValue("title")
  title,
  @JsonValue("sender")
  sender,
  @JsonValue("actor")
  actor,
  @JsonValue("regnum")
  regnum,
  @JsonValue("regdate")
  regdate,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum LNADocsSortFieldEnumType {
  @JsonValue("registrationDate")
  registrationDate,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum MassMailsSortFieldEnumType {
  @JsonValue("title")
  title,
  @JsonValue("sender")
  sender,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum OutgoingDocsSortFieldEnumType {
  @JsonValue("title")
  title,
  @JsonValue("sender")
  sender,
  @JsonValue("docDate")
  docDate,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum RequestDocsSortFieldEnumType {
  @JsonValue("applicant")
  applicant,
  @JsonValue("type")
  type,
  @JsonValue("whenCreated")
  whenCreated,
  @JsonValue("whenEdited")
  whenEdited,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class ContractsArguments extends JsonSerializable with EquatableMixin {
  ContractsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory ContractsArguments.fromJson(Map<String, dynamic> json) =>
      _$ContractsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputContractsSortFieldEnumType sort;

  final ContractsAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$ContractsArgumentsToJson(this);
}

class ContractsQuery
    extends GraphQLQuery<Contracts$DFSQuery, ContractsArguments> {
  ContractsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'contracts'),
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
                  name: NameNode(value: 'SortInput_ContractsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'contractsAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'contracts'),
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
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
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
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sumAmountWithTax'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'departmentResponder'),
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
                          name: NameNode(value: 'whenEdited'),
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
                          name: NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'authorId'),
                          alias: NameNode(value: 'author'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'editorId'),
                          alias: NameNode(value: 'editor'),
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'preparationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registerNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'contracts';

  @override
  final ContractsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Contracts$DFSQuery parse(Map<String, dynamic> json) =>
      Contracts$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ControlCardsArguments extends JsonSerializable with EquatableMixin {
  ControlCardsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory ControlCardsArguments.fromJson(Map<String, dynamic> json) =>
      _$ControlCardsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputControlCardsSortFieldEnumType sort;

  final ControlCardsAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$ControlCardsArgumentsToJson(this);
}

class ControlCardsQuery
    extends GraphQLQuery<ControlCards$DFSQuery, ControlCardsArguments> {
  ControlCardsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'controlCards'),
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
                  name: NameNode(
                      value: 'SortInput_ControlCardsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'controlCardsAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'controlCards'),
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
                      FragmentSpreadNode(
                          name: NameNode(value: 'controlCardFragment'),
                          directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'controlCardFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ControlCard'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'hostDocumentId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'date'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'deControlDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'period'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responderIds'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'documentLastVersion'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'compileTitle'),
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
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'isRemoved'),
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
              name: NameNode(value: 'remark'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'report'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isControlRemovalRequested'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'referenceValueFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ReferenceValue'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'key'),
              alias: NameNode(value: 'id'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'key'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'controlCards';

  @override
  final ControlCardsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ControlCards$DFSQuery parse(Map<String, dynamic> json) =>
      ControlCards$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DocumentsArguments extends JsonSerializable with EquatableMixin {
  DocumentsArguments(
      {@required this.skip,
      @required this.limit,
      this.attributeSearch,
      this.sort,
      this.onRegisterFilter});

  factory DocumentsArguments.fromJson(Map<String, dynamic> json) =>
      _$DocumentsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final BaseAttributeSearch attributeSearch;

  final SortInputDocumentSortFieldEnumType sort;

  final bool onRegisterFilter;

  @override
  List<Object> get props =>
      [skip, limit, attributeSearch, sort, onRegisterFilter];
  Map<String, dynamic> toJson() => _$DocumentsArgumentsToJson(this);
}

class DocumentsQuery
    extends GraphQLQuery<Documents$DFSQuery, DocumentsArguments> {
  DocumentsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'documents'),
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
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'BaseAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'sort')),
              type: NamedTypeNode(
                  name: NameNode(value: 'SortInput_DocumentSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'onRegisterFilter')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Boolean'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'documents'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'skip'),
                    value: VariableNode(name: NameNode(value: 'skip'))),
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: VariableNode(name: NameNode(value: 'limit'))),
                ArgumentNode(
                    name: NameNode(value: 'attributeSearch'),
                    value:
                        VariableNode(name: NameNode(value: 'attributeSearch'))),
                ArgumentNode(
                    name: NameNode(value: 'sort'),
                    value: VariableNode(name: NameNode(value: 'sort'))),
                ArgumentNode(
                    name: NameNode(value: 'onRegisterFilter'),
                    value:
                        VariableNode(name: NameNode(value: 'onRegisterFilter')))
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
                          name: NameNode(value: 'documentType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FragmentSpreadNode(
                          name: NameNode(value: 'documentListItemFragment'),
                          directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'documentListItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'IDocumentListItem'), isNonNull: false)),
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
              name: NameNode(value: 'documentType'),
              alias: NameNode(value: 'type'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'documentStatus'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'documentStatusDescription'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'authorName'),
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
              name: NameNode(value: 'responderId'),
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
              name: NameNode(value: 'controlCardsCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'controlCardsRemovedCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopy'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isPublished'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'publisherId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'whenPublished'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          InlineFragmentNode(
              typeCondition: TypeConditionNode(
                  on: NamedTypeNode(
                      name: NameNode(value: 'ContractListItem'),
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
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'sumAmountWithTax'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'departmentResponder'),
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
                    name: NameNode(value: 'registerNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'preparationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          InlineFragmentNode(
              typeCondition: TypeConditionNode(
                  on: NamedTypeNode(
                      name: NameNode(value: 'HRRequestDocListItem'),
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
                    name: NameNode(value: 'applicant'),
                    alias: NameNode(value: 'applicant'),
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
                    name: NameNode(value: 'orderDescriptor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'issuedDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'number'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'status'),
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
                    name: NameNode(value: 'applicantExternalUserId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          InlineFragmentNode(
              typeCondition: TypeConditionNode(
                  on: NamedTypeNode(
                      name: NameNode(value: 'GenericRequestListItem'),
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
                    name: NameNode(value: 'applicant'),
                    alias: NameNode(value: 'applicant'),
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
                    name: NameNode(value: 'categoryId'),
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
                    name: NameNode(value: 'curatorId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'documentStatus'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'documentStatusDescription'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'scanCopy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          InlineFragmentNode(
              typeCondition: TypeConditionNode(
                  on: NamedTypeNode(
                      name: NameNode(value: 'IncomingDocListItem'),
                      isNonNull: false)),
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'addresseeIds'),
                    alias: null,
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
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'senderOutgoingNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'documentDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationAuthorId'),
                    alias: null,
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
                    name: NameNode(value: 'head'),
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
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isRegistered'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          InlineFragmentNode(
              typeCondition: TypeConditionNode(
                  on: NamedTypeNode(
                      name: NameNode(value: 'LNAListItem'), isNonNull: false)),
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'documentType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'placeOfRegistrationValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'placeOfRegistrationKey'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'validStatusValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isRegistered'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationBookItem'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'authorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'date'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isPermanent'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'number'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationBookId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationBook'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ])),
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
                      name: NameNode(value: 'OutgoingDocListItem'),
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
                    name: NameNode(value: 'registrationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'registrationNumber'),
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
                      name: NameNode(value: 'MassMailListItem'),
                      isNonNull: false)),
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'isSent'),
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
                    name: NameNode(value: 'sendingDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'sendingAuthor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'mailingGroupsIds'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'documents';

  @override
  final DocumentsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Documents$DFSQuery parse(Map<String, dynamic> json) =>
      Documents$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ExaminationDocumentsArguments extends JsonSerializable
    with EquatableMixin {
  ExaminationDocumentsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory ExaminationDocumentsArguments.fromJson(Map<String, dynamic> json) =>
      _$ExaminationDocumentsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputDocumentSortFieldEnumType sort;

  final ExaminationDocumentsAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$ExaminationDocumentsArgumentsToJson(this);
}

class ExaminationDocumentsQuery extends GraphQLQuery<
    ExaminationDocuments$DFSQuery, ExaminationDocumentsArguments> {
  ExaminationDocumentsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'examinationDocuments'),
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
                  name: NameNode(value: 'SortInput_DocumentSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'examinationDocumentsAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'examinationDocuments'),
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
                          name: NameNode(value: 'compileTitle'),
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
                          name: NameNode(value: 'readAuditList'),
                          alias: NameNode(value: 'readAuditList'),
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
                                name: NameNode(value: 'whenRead'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'masters'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'examinationAuditList'),
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
                                name: NameNode(value: 'whenRead'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'masters'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'publisherId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenPublished'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'examinationDocuments';

  @override
  final ExaminationDocumentsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ExaminationDocuments$DFSQuery parse(Map<String, dynamic> json) =>
      ExaminationDocuments$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GenericRequestDocArguments extends JsonSerializable with EquatableMixin {
  GenericRequestDocArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory GenericRequestDocArguments.fromJson(Map<String, dynamic> json) =>
      _$GenericRequestDocArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputGenericRequestDocsSortFieldEnumType sort;

  final GenericRequestDocAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$GenericRequestDocArgumentsToJson(this);
}

class GenericRequestDocQuery extends GraphQLQuery<GenericRequestDoc$DFSQuery,
    GenericRequestDocArguments> {
  GenericRequestDocQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'genericRequestDoc'),
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
                  name: NameNode(
                      value: 'SortInput_GenericRequestDocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'genericRequestDocAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'genericRequestDoc'),
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
                          name: NameNode(value: 'applicant'),
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
                          name: NameNode(value: 'categoryId'),
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
                          name: NameNode(value: 'responderId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'curatorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
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
                          name: NameNode(value: 'editorId'),
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
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'genericRequestDoc';

  @override
  final GenericRequestDocArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GenericRequestDoc$DFSQuery parse(Map<String, dynamic> json) =>
      GenericRequestDoc$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class HrDocsArguments extends JsonSerializable with EquatableMixin {
  HrDocsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory HrDocsArguments.fromJson(Map<String, dynamic> json) =>
      _$HrDocsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputHRRequestDocsSortFieldEnumType sort;

  final HrDocAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$HrDocsArgumentsToJson(this);
}

class HrDocsQuery extends GraphQLQuery<HrDocs$DFSQuery, HrDocsArguments> {
  HrDocsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'hrDocs'),
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
                  name: NameNode(
                      value: 'SortInput_HRRequestDocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'hrDocAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'hRRequestDoc'),
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
                          name: NameNode(value: 'compileTitle'),
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
                          name: NameNode(value: 'applicant'),
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
                          name: NameNode(value: 'responderId'),
                          alias: NameNode(value: 'responder'),
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
                          name: NameNode(value: 'addressee'),
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
                          name: NameNode(value: 'orderDescriptor'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'issuedDate'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'number'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'whenCreated'),
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
                          name: NameNode(value: 'whenEdited'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'hrDocs';

  @override
  final HrDocsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  HrDocs$DFSQuery parse(Map<String, dynamic> json) =>
      HrDocs$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocsArguments extends JsonSerializable with EquatableMixin {
  IncomingDocsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory IncomingDocsArguments.fromJson(Map<String, dynamic> json) =>
      _$IncomingDocsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputIncomingDocsSortFieldEnumType sort;

  final IncomingDocsAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$IncomingDocsArgumentsToJson(this);
}

class IncomingDocsQuery
    extends GraphQLQuery<IncomingDocs$DFSQuery, IncomingDocsArguments> {
  IncomingDocsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'incomingDocs'),
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
                  name: NameNode(
                      value: 'SortInput_IncomingDocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'incomingDocsAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'incomingDocs'),
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
                          name: NameNode(value: 'title'),
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
                          name: NameNode(value: 'addresseeIds'),
                          alias: null,
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
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationAuthorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationAuthorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'senderOutgoingNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
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
                          name: NameNode(value: 'controlCardsRemovedCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'incomingDocs';

  @override
  final IncomingDocsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  IncomingDocs$DFSQuery parse(Map<String, dynamic> json) =>
      IncomingDocs$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LettersArguments extends JsonSerializable with EquatableMixin {
  LettersArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory LettersArguments.fromJson(Map<String, dynamic> json) =>
      _$LettersArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputLettersSortFieldEnumType sort;

  final LetterAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$LettersArgumentsToJson(this);
}

class LettersQuery extends GraphQLQuery<Letters$DFSQuery, LettersArguments> {
  LettersQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'letters'),
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
                  name: NameNode(value: 'SortInput_LettersSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'letterAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'letters'),
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
                          name: NameNode(value: 'compileTitle'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'head'),
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
                          name: NameNode(value: 'addresseeIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isRegistered'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationNumber'),
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
                          name: NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'letters';

  @override
  final LettersArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Letters$DFSQuery parse(Map<String, dynamic> json) =>
      Letters$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LNADocsArguments extends JsonSerializable with EquatableMixin {
  LNADocsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory LNADocsArguments.fromJson(Map<String, dynamic> json) =>
      _$LNADocsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputLNADocsSortFieldEnumType sort;

  final LNAAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$LNADocsArgumentsToJson(this);
}

class LNADocsQuery extends GraphQLQuery<LNADocs$DFSQuery, LNADocsArguments> {
  LNADocsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'lNADocs'),
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
                  name: NameNode(value: 'SortInput_LNADocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'LNAAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lNADocs'),
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
                          name: NameNode(value: 'documentType'),
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
                          name: NameNode(value: 'compileTitle'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isRegistered'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'placeOfRegistrationValue'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'placeOfRegistrationKey'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'validStatusValue'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isPublished'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'publisherId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'whenPublished'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationBookItem'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'authorId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'date'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'documentId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'isPermanent'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'number'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'registrationBookId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
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
                          name: NameNode(value: 'documentStatus'),
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
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'lNADocs';

  @override
  final LNADocsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  LNADocs$DFSQuery parse(Map<String, dynamic> json) =>
      LNADocs$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MassMailsArguments extends JsonSerializable with EquatableMixin {
  MassMailsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory MassMailsArguments.fromJson(Map<String, dynamic> json) =>
      _$MassMailsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputMassMailsSortFieldEnumType sort;

  final MassMailAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$MassMailsArgumentsToJson(this);
}

class MassMailsQuery
    extends GraphQLQuery<MassMails$DFSQuery, MassMailsArguments> {
  MassMailsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'massMails'),
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
                  name: NameNode(value: 'SortInput_MassMailsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'massMailAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'massMails'),
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
                          name: NameNode(value: 'compileTitle'),
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
                          name: NameNode(value: 'senderId'),
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
                          name: NameNode(value: 'mailingGroupsIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isSent'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sendingAuthor'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sendingDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'massMails';

  @override
  final MassMailsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MassMails$DFSQuery parse(Map<String, dynamic> json) =>
      MassMails$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocsArguments extends JsonSerializable with EquatableMixin {
  OutgoingDocsArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory OutgoingDocsArguments.fromJson(Map<String, dynamic> json) =>
      _$OutgoingDocsArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputOutgoingDocsSortFieldEnumType sort;

  final OutgoingAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$OutgoingDocsArgumentsToJson(this);
}

class OutgoingDocsQuery
    extends GraphQLQuery<OutgoingDocs$DFSQuery, OutgoingDocsArguments> {
  OutgoingDocsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'outgoingDocs'),
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
                  name: NameNode(
                      value: 'SortInput_OutgoingDocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'outgoingAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'outgoingDocs'),
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
                          name: NameNode(value: 'title'),
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
                          name: NameNode(value: 'addressees'),
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
                          name: NameNode(value: 'addresseeIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationAuthorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationDate'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'reservedRegistrationAuthorId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'outgoingDocs';

  @override
  final OutgoingDocsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  OutgoingDocs$DFSQuery parse(Map<String, dynamic> json) =>
      OutgoingDocs$DFSQuery.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RequestDocArguments extends JsonSerializable with EquatableMixin {
  RequestDocArguments(
      {@required this.skip,
      @required this.limit,
      this.sort,
      this.attributeSearch});

  factory RequestDocArguments.fromJson(Map<String, dynamic> json) =>
      _$RequestDocArgumentsFromJson(json);

  final int skip;

  final int limit;

  final SortInputRequestDocsSortFieldEnumType sort;

  final RequestDocAttributeSearch attributeSearch;

  @override
  List<Object> get props => [skip, limit, sort, attributeSearch];
  Map<String, dynamic> toJson() => _$RequestDocArgumentsToJson(this);
}

class RequestDocQuery
    extends GraphQLQuery<RequestDoc$DFSQuery, RequestDocArguments> {
  RequestDocQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'requestDoc'),
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
                  name:
                      NameNode(value: 'SortInput_RequestDocsSortFieldEnumType'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'attributeSearch')),
              type: NamedTypeNode(
                  name: NameNode(value: 'requestDocAttributeSearch'),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'requestDoc'),
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
                          name: NameNode(value: 'applicant'),
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
                          name: NameNode(value: 'compileTitle'),
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
                          name: NameNode(value: 'responderId'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentStatus'),
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
                          name: NameNode(value: 'editorId'),
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
                          name: NameNode(value: 'documentStatusDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'scanCopy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'requestDoc';

  @override
  final RequestDocArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RequestDoc$DFSQuery parse(Map<String, dynamic> json) =>
      RequestDoc$DFSQuery.fromJson(json);
}
