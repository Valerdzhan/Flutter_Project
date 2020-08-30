// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.document.graphql.g.dart';

mixin DocumentDescriptorFragmentMixin {
  String id;
  int eventCount;
  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType type;
}
mixin AttachmentsFragmentMixin {
  String fileId;
  String fileContent;
  String fileName;
  String fileType;
  int fileLength;
  DateTime date;
  String authorId;
  bool isDeleted;
  bool isLocked;
}
mixin ContractItemFragmentMixin {
  String id;
  ContractItemFragmentMixin$Type type;
  DateTime conclusionDate;
  String contractor;
  String curatorId;
  String departmentResponder;
  String legalNumber;
  DateTime paymentEndDate;
  DateTime preparationDate;
  String reasonToEnter;
  String registerNumber;
  String responderId;
  ContractItemFragmentMixin$ValidityPeriod validityPeriod;
  String name;
  String subject;
  ContractItemFragmentMixin$Sum sum;
  String systemNumber;
  ContractItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  ContractItemFragmentMixin$Status status;
  ContractItemFragmentMixin$FinancialPositions financialPositions;
  ContractItemFragmentMixin$BudgetItems budgetItems;
  String note;
  bool enableNetworkFolder;
  @JsonKey(unknownEnumValue: CommercialSecret.artemisUnknown)
  CommercialSecret commercialSecret;
}
mixin ReferenceValueFragmentMixin {
  String id;
  String key;
  String value;
}
mixin MultiReferenceValueFragmentMixin {
  MultiReferenceValueFragmentMixin$Catalog catalog;
  List<MultiReferenceValueFragmentMixin$Values> values;
}
mixin LetterItemFragmentMixin {
  String id;
  String responderId;
  LetterItemFragmentMixin$Status status;
  String head;
  String senderId;
  List<String> letterAddresseeIds;
  String actorId;
  bool personally;
  int additionSheetsQuantity;
  int sheetsQuantity;
  String remark;
  String text;
  List<String> tasks;
  @JsonKey(unknownEnumValue: CommercialSecret.artemisUnknown)
  CommercialSecret commercialSecret;
  bool enableNetworkFolder;
}
mixin IncomingDocItemFragmentMixin {
  String id;
  IncomingDocItemFragmentMixin$IncomingSender incomingSender;
  IncomingDocItemFragmentMixin$Status status;
  String incomingActor;
  DateTime documentDate;
  IncomingDocItemFragmentMixin$Type type;
  String head;
  List<String> addresseeIds;
  String senderOutgoingNumber;
  IncomingDocItemFragmentMixin$SpecialControls specialControls;
  DateTime controlDate;
  bool controlMark;
  String remark;
  @JsonKey(unknownEnumValue: CommercialSecret.artemisUnknown)
  CommercialSecret commercialSecret;
  List<String> tasks;
  int controlCardsCount;
  bool enableNetworkFolder;
}
mixin CorrespondentFragmentMixin {
  String addressImported;
  String city;
  String correspondent;
  String email;
  String fullTitle;
  bool hasChildren;
  String id;
  String index;
  bool isDeleted;
  String organization;
  String parentId;
  String phone;
  String position;
  String region;
  String street;
  String title;
}
mixin OutgoingDocItemFragmentMixin {
  String id;
  String outgoingActor;
  List<OutgoingDocItemFragmentMixin$Addressees> addressees;
  String head;
  String remark;
  String sender;
  String outgoingResponder;
  OutgoingDocItemFragmentMixin$Status status;
  OutgoingDocItemFragmentMixin$Type type;
  OutgoingDocItemFragmentMixin$ReservationInfo reservationInfo;
  OutgoingDocItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  @JsonKey(unknownEnumValue: CommercialSecret.artemisUnknown)
  CommercialSecret commercialSecret;
  bool enableNetworkFolder;
}
mixin TaxExpertiseItemFragmentMixin {
  String id;
  int eventCount;
  List<TaxExpertiseItemFragmentMixin$Taxattachments> taxattachments;
  TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax consequenceIncomeTax;
  TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax
      contractorConsequenceIncomeTax;
  TaxExpertiseItemFragmentMixin$ConsequenceVAT consequenceVAT;
  TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT
      contractorConsequenceVAT;
  TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes consequenceOtherTaxes;
  TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes
      contractorConsequenceOtherTaxes;
  TaxExpertiseItemFragmentMixin$TaxRisks taxRisks;
  TaxExpertiseItemFragmentMixin$ContractorTaxRisks contractorTaxRisks;
  String recommendations;
  String notionTaxAuthorities;
  String notionMinFin;
  String notionTribunal;
  String impactAssessmentKGN;
  String conclusionResultContract;
  String responderTaxId;
  String responderAccountant;
}
mixin RequestToHireItemFragmentMixin {
  String id;
  String addresseeId;
  RequestToHireItemFragmentMixin$Applicant applicant;
  String applicantId;
  String applicantExternalUserId;
  RequestToHireItemFragmentMixin$ApplicantDetails applicantDetails;
  String compileTitle;
  DateTime dateOfVacancy;
  String departmentTo;
  String positionTo;
  DateTime hireDate;
  RequestToHireItemFragmentMixin$OrderDescriptor orderDescriptor;
  RequestToHireItemFragmentMixin$RecruitmentSource recruitmentSource;
  List<String> tasks;
  String remark;
  String responderId;
  RequestToHireItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  bool enableNetworkFolder;
}
mixin RequestForDismissalItemFragmentMixin {
  String id;
  String addresseeId;
  RequestForDismissalItemFragmentMixin$Applicant applicant;
  String applicantId;
  String applicantExternalUserId;
  RequestForDismissalItemFragmentMixin$ApplicantDetails applicantDetails;
  String clauseEmploymentLaw;
  String compileTitle;
  String departmentFrom;
  String positionFrom;
  RequestForDismissalItemFragmentMixin$OrderDescriptor orderDescriptor;
  List<String> tasks;
  String remark;
  String responderId;
  RequestForDismissalItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  DateTime dismissalDate;
  bool enableNetworkFolder;
}
mixin TransferRequestItemFragmentMixin {
  String id;
  String addresseeId;
  TransferRequestItemFragmentMixin$Applicant applicant;
  String applicantId;
  String applicantExternalUserId;
  TransferRequestItemFragmentMixin$ApplicantDetails applicantDetails;
  String compileTitle;
  DateTime dateOfVacancy;
  String departmentFrom;
  String departmentTo;
  String positionFrom;
  String positionTo;
  TransferRequestItemFragmentMixin$OrderDescriptor orderDescriptor;
  TransferRequestItemFragmentMixin$RecruitmentSource recruitmentSource;
  List<String> tasks;
  String remark;
  String responderId;
  TransferRequestItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  DateTime transferDate;
  @JsonKey(unknownEnumValue: TransferRequestType.artemisUnknown)
  TransferRequestType transferType;
  bool enableNetworkFolder;
}
mixin RequestCancellationForDismissalItemFragmentMixin {
  String id;
  String addresseeId;
  RequestCancellationForDismissalItemFragmentMixin$Applicant applicant;
  String applicantId;
  String applicantExternalUserId;
  RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails
      applicantDetails;
  String clauseEmploymentLaw;
  String compileTitle;
  String departmentFrom;
  String positionFrom;
  RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor
      orderDescriptor;
  List<String> tasks;
  String remark;
  String responderId;
  String requestForDismissalId;
  RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal
      scanCopyOriginal;
  DateTime dismissalDate;
  bool enableNetworkFolder;
}
mixin LnaDirectiveItemFragmentMixin {
  String directiveTitle;
  String signer;
  String actor;
  String responder;
  String overseer;
  LnaDirectiveItemFragmentMixin$PlaceOfRegistration placeOfRegistration;
  LnaDirectiveItemFragmentMixin$ValidStatus validStatus;
  LnaDirectiveItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  String remark;
  bool enableNetworkFolder;
  List<String> tasks;
  List<String> examinationFiles;
}
mixin LnaOrderItemFragmentMixin {
  String orderTitle;
  String signer;
  String actor;
  String responder;
  String overseer;
  LnaOrderItemFragmentMixin$PlaceOfRegistration placeOfRegistration;
  LnaOrderItemFragmentMixin$ValidStatus validStatus;
  LnaOrderItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  String remark;
  bool enableNetworkFolder;
  List<String> tasks;
  List<String> examinationFiles;
}
mixin GenericItemFragmentMixin {
  String id;
  String addresseeId;
  GenericItemFragmentMixin$Applicant applicant;
  String applicantId;
  GenericItemFragmentMixin$ApplicantDetails applicantDetails;
  String categoryId;
  String compileTitle;
  String curatorId;
  List<String> tasks;
  String text;
  String remark;
  String responderId;
  GenericItemFragmentMixin$ScanCopyOriginal scanCopyOriginal;
  bool enableNetworkFolder;
}
mixin MassMailItemFragmentMixin {
  String id;
  String responderId;
  String title;
  String senderId;
  String signature;
  List<String> mailingGroupsIds;
  String body;
  bool isSent;
  String sendingAuthor;
  DateTime sendingDate;
  List<MassMailItemFragmentMixin$MassMailMailingGroups> massMailMailingGroups;
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments
    with EquatableMixin, DocumentDescriptorFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocumentsFromJson(
          json);

  @override
  List<Object> get props => [id, eventCount, type];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocumentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments
    with EquatableMixin, AttachmentsFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$AttachmentsFromJson(
          json);

  @override
  List<Object> get props => [
        fileId,
        fileContent,
        fileName,
        fileType,
        fileLength,
        date,
        authorId,
        isDeleted,
        isLocked
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$AttachmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfoFromJson(
          json);

  bool isRegistered;

  String registerNumber;

  DateTime registrationDate;

  @override
  List<Object> get props => [isRegistered, registerNumber, registrationDate];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBookFromJson(
          json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBookToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItemFromJson(
          json);

  String authorId;

  DateTime date;

  String documentId;

  bool isPermanent;

  int number;

  String registrationBookId;

  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem$RegistrationBook
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
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RevokedFromJson(json);

  bool isRevoked;

  String revokedNote;

  bool isTaskCanceled;

  @override
  List<Object> get props => [isRevoked, revokedNote, isTaskCanceled];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RevokedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItemFromJson(
          json);

  @JsonKey(name: 'ContractResponderId')
  String contractResponderId;

  @override
  List<Object> get props => [contractResponderId];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItemFromJson(
          json);

  @JsonKey(name: 'LetterResponderId')
  String letterResponderId;

  @override
  List<Object> get props => [letterResponderId];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItemFromJson(
          json);

  String responderId;

  @override
  List<Object> get props => [responderId];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ContractItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem
            .fromJson(json);
      case r'LetterItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem
            .fromJson(json);
      case r'OutgoingDocItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem
            .fromJson(json);
      default:
    }
    return _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$DocumentFromJson(
        json);
  }

  String id;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  String title;

  bool hasAccess;

  List<String> adminIds;

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props =>
      [id, documentType, title, hasAccess, adminIds, $$typename];
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ContractItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$ContractItem)
            .toJson();
      case r'LetterItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$LetterItem)
            .toJson();
      case r'OutgoingDocItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document$OutgoingDocItem)
            .toJson();
      default:
    }
    return _$GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$DocumentToJson(
        this);
  }
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RelationsFromJson(json);

  String relationId;

  String documentId;

  GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations$Document document;

  @JsonKey(unknownEnumValue: RelationType.artemisUnknown)
  RelationType relationType;

  @override
  List<Object> get props => [relationId, documentId, document, relationType];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RelationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditListFromJson(
          json);

  List<String> masters;

  String userId;

  DateTime whenRead;

  @override
  List<Object> get props => [masters, userId, whenRead];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditListToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroupsFromJson(
          json);

  String id;

  String authorId;

  bool hasChildren;

  bool isDeleted;

  String name;

  String parentId;

  @JsonKey(unknownEnumValue: MailingItemState.artemisUnknown)
  MailingItemState state;

  DateTime when;

  @override
  List<Object> get props =>
      [id, authorId, hasChildren, isDeleted, name, parentId, state, when];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroupsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers
    with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsersFromJson(
          json);

  String authorId;

  @JsonKey(unknownEnumValue: MailingItemState.artemisUnknown)
  MailingItemState state;

  String userId;

  DateTime when;

  @override
  List<Object> get props => [authorId, state, userId, when];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, ContractItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        type,
        conclusionDate,
        contractor,
        curatorId,
        departmentResponder,
        legalNumber,
        paymentEndDate,
        preparationDate,
        reasonToEnter,
        registerNumber,
        responderId,
        validityPeriod,
        name,
        subject,
        sum,
        systemNumber,
        scanCopyOriginal,
        status,
        financialPositions,
        budgetItems,
        note,
        enableNetworkFolder,
        commercialSecret
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, LetterItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItemFromJson(json);

  @override
  List<Object> get props => [
        id,
        responderId,
        status,
        head,
        senderId,
        letterAddresseeIds,
        actorId,
        personally,
        additionSheetsQuantity,
        sheetsQuantity,
        remark,
        text,
        tasks,
        commercialSecret,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, IncomingDocItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        incomingSender,
        status,
        incomingActor,
        documentDate,
        type,
        head,
        addresseeIds,
        senderOutgoingNumber,
        specialControls,
        controlDate,
        controlMark,
        remark,
        commercialSecret,
        tasks,
        controlCardsCount,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, OutgoingDocItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        outgoingActor,
        addressees,
        head,
        remark,
        sender,
        outgoingResponder,
        status,
        type,
        reservationInfo,
        scanCopyOriginal,
        commercialSecret,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, TaxExpertiseItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        eventCount,
        taxattachments,
        consequenceIncomeTax,
        contractorConsequenceIncomeTax,
        consequenceVAT,
        contractorConsequenceVAT,
        consequenceOtherTaxes,
        contractorConsequenceOtherTaxes,
        taxRisks,
        contractorTaxRisks,
        recommendations,
        notionTaxAuthorities,
        notionMinFin,
        notionTribunal,
        impactAssessmentKGN,
        conclusionResultContract,
        responderTaxId,
        responderAccountant
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, RequestToHireItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        addresseeId,
        applicant,
        applicantId,
        applicantExternalUserId,
        applicantDetails,
        compileTitle,
        dateOfVacancy,
        departmentTo,
        positionTo,
        hireDate,
        orderDescriptor,
        recruitmentSource,
        tasks,
        remark,
        responderId,
        scanCopyOriginal,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, RequestForDismissalItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        addresseeId,
        applicant,
        applicantId,
        applicantExternalUserId,
        applicantDetails,
        clauseEmploymentLaw,
        compileTitle,
        departmentFrom,
        positionFrom,
        orderDescriptor,
        tasks,
        remark,
        responderId,
        scanCopyOriginal,
        dismissalDate,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, TransferRequestItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        addresseeId,
        applicant,
        applicantId,
        applicantExternalUserId,
        applicantDetails,
        compileTitle,
        dateOfVacancy,
        departmentFrom,
        departmentTo,
        positionFrom,
        positionTo,
        orderDescriptor,
        recruitmentSource,
        tasks,
        remark,
        responderId,
        scanCopyOriginal,
        transferDate,
        transferType,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, RequestCancellationForDismissalItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        addresseeId,
        applicant,
        applicantId,
        applicantExternalUserId,
        applicantDetails,
        clauseEmploymentLaw,
        compileTitle,
        departmentFrom,
        positionFrom,
        orderDescriptor,
        tasks,
        remark,
        responderId,
        requestForDismissalId,
        scanCopyOriginal,
        dismissalDate,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, LnaDirectiveItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItemFromJson(
          json);

  @override
  List<Object> get props => [
        directiveTitle,
        signer,
        actor,
        responder,
        overseer,
        placeOfRegistration,
        validStatus,
        scanCopyOriginal,
        remark,
        enableNetworkFolder,
        tasks,
        examinationFiles
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, LnaOrderItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItemFromJson(
          json);

  @override
  List<Object> get props => [
        orderTitle,
        signer,
        actor,
        responder,
        overseer,
        placeOfRegistration,
        validStatus,
        scanCopyOriginal,
        remark,
        enableNetworkFolder,
        tasks,
        examinationFiles
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, GenericItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        addresseeId,
        applicant,
        applicantId,
        applicantDetails,
        categoryId,
        compileTitle,
        curatorId,
        tasks,
        text,
        remark,
        responderId,
        scanCopyOriginal,
        enableNetworkFolder
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItemToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem
    extends GetDocument$DFSQuery$DocumentQueryAPI$Document
    with EquatableMixin, MassMailItemFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItemFromJson(
          json);

  @override
  List<Object> get props => [
        id,
        responderId,
        title,
        senderId,
        signature,
        mailingGroupsIds,
        body,
        isSent,
        sendingAuthor,
        sendingDate,
        massMailMailingGroups
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$Document with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$Document();

  factory GetDocument$DFSQuery$DocumentQueryAPI$Document.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ContractItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem
            .fromJson(json);
      case r'LetterItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem
            .fromJson(json);
      case r'IncomingDocItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem
            .fromJson(json);
      case r'OutgoingDocItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem
            .fromJson(json);
      case r'TaxExpertiseItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem
            .fromJson(json);
      case r'RequestToHireItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem
            .fromJson(json);
      case r'RequestForDismissalItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem
            .fromJson(json);
      case r'TransferRequestItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem
            .fromJson(json);
      case r'CancellationRequestForDismissalItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem
            .fromJson(json);
      case r'LNADirectiveItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem
            .fromJson(json);
      case r'LNAOrderItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem
            .fromJson(json);
      case r'GenericRequestItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem
            .fromJson(json);
      case r'MassMailItem':
        return GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem
            .fromJson(json);
      default:
    }
    return _$GetDocument$DFSQuery$DocumentQueryAPI$DocumentFromJson(json);
  }

  String id;

  int eventCount;

  int version;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$SubDocuments>
      subDocuments;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$Attachments> attachments;

  @JsonKey(unknownEnumValue: DocumentType.artemisUnknown)
  DocumentType documentType;

  List<String> adminIds;

  List<String> readerIds;

  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationInfo
      registrationInfo;

  GetDocument$DFSQuery$DocumentQueryAPI$Document$RegistrationBookItem
      registrationBookItem;

  GetDocument$DFSQuery$DocumentQueryAPI$Document$Revoked revoked;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$Relations> relations;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$ExaminationAuditList>
      examinationAuditList;

  String authorId;

  String editorId;

  DateTime whenCreated;

  DateTime whenEdited;

  int documentSerialNumber;

  String documentSystemNumber;

  @JsonKey(unknownEnumValue: DocumentStatusEnumType.artemisUnknown)
  DocumentStatusEnumType documentStatus;

  bool isLinkAccessAllowed;

  bool isPublished;

  String publisherId;

  DateTime whenPublished;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingGroups>
      mailingGroups;

  List<GetDocument$DFSQuery$DocumentQueryAPI$Document$MailingUsers>
      mailingUsers;

  List<UserRoleInDocument> userRoles;

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props => [
        id,
        eventCount,
        version,
        subDocuments,
        attachments,
        documentType,
        adminIds,
        readerIds,
        registrationInfo,
        registrationBookItem,
        revoked,
        relations,
        examinationAuditList,
        authorId,
        editorId,
        whenCreated,
        whenEdited,
        documentSerialNumber,
        documentSystemNumber,
        documentStatus,
        isLinkAccessAllowed,
        isPublished,
        publisherId,
        whenPublished,
        mailingGroups,
        mailingUsers,
        userRoles,
        $$typename
      ];
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ContractItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$ContractItem)
            .toJson();
      case r'LetterItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$LetterItem)
            .toJson();
      case r'IncomingDocItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$IncomingDocItem)
            .toJson();
      case r'OutgoingDocItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$OutgoingDocItem)
            .toJson();
      case r'TaxExpertiseItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$TaxExpertiseItem)
            .toJson();
      case r'RequestToHireItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestToHireItem)
            .toJson();
      case r'RequestForDismissalItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$RequestForDismissalItem)
            .toJson();
      case r'TransferRequestItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$TransferRequestItem)
            .toJson();
      case r'CancellationRequestForDismissalItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$CancellationRequestForDismissalItem)
            .toJson();
      case r'LNADirectiveItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$LNADirectiveItem)
            .toJson();
      case r'LNAOrderItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$LNAOrderItem)
            .toJson();
      case r'GenericRequestItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$GenericRequestItem)
            .toJson();
      case r'MassMailItem':
        return (this
                as GetDocument$DFSQuery$DocumentQueryAPI$Document$MassMailItem)
            .toJson();
      default:
    }
    return _$GetDocument$DFSQuery$DocumentQueryAPI$DocumentToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments
    with EquatableMixin, AttachmentsFragmentMixin {
  GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments();

  factory GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachmentsFromJson(json);

  @override
  List<Object> get props => [
        fileId,
        fileContent,
        fileName,
        fileType,
        fileLength,
        date,
        authorId,
        isDeleted,
        isLocked
      ];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery$DocumentQueryAPI with EquatableMixin {
  GetDocument$DFSQuery$DocumentQueryAPI();

  factory GetDocument$DFSQuery$DocumentQueryAPI.fromJson(
          Map<String, dynamic> json) =>
      _$GetDocument$DFSQuery$DocumentQueryAPIFromJson(json);

  GetDocument$DFSQuery$DocumentQueryAPI$Document document;

  List<GetDocument$DFSQuery$DocumentQueryAPI$UnlockedAttachments>
      unlockedAttachments;

  @override
  List<Object> get props => [document, unlockedAttachments];
  Map<String, dynamic> toJson() =>
      _$GetDocument$DFSQuery$DocumentQueryAPIToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDocument$DFSQuery with EquatableMixin {
  GetDocument$DFSQuery();

  factory GetDocument$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$GetDocument$DFSQueryFromJson(json);

  GetDocument$DFSQuery$DocumentQueryAPI documentQueryAPI;

  @override
  List<Object> get props => [documentQueryAPI];
  Map<String, dynamic> toJson() => _$GetDocument$DFSQueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$Type
    with EquatableMixin, ReferenceValueFragmentMixin {
  ContractItemFragmentMixin$Type();

  factory ContractItemFragmentMixin$Type.fromJson(Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$TypeFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() => _$ContractItemFragmentMixin$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$ValidityPeriod with EquatableMixin {
  ContractItemFragmentMixin$ValidityPeriod();

  factory ContractItemFragmentMixin$ValidityPeriod.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$ValidityPeriodFromJson(json);

  DateTime commencementDate;

  DateTime expirationDate;

  @override
  List<Object> get props => [commencementDate, expirationDate];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$ValidityPeriodToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$Sum$Code
    with EquatableMixin, ReferenceValueFragmentMixin {
  ContractItemFragmentMixin$Sum$Code();

  factory ContractItemFragmentMixin$Sum$Code.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$Sum$CodeFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$Sum$CodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$Sum with EquatableMixin {
  ContractItemFragmentMixin$Sum();

  factory ContractItemFragmentMixin$Sum.fromJson(Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$SumFromJson(json);

  double amount;

  double amountWithTax;

  ContractItemFragmentMixin$Sum$Code code;

  int tax;

  @override
  List<Object> get props => [amount, amountWithTax, code, tax];
  Map<String, dynamic> toJson() => _$ContractItemFragmentMixin$SumToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  ContractItemFragmentMixin$ScanCopyOriginal();

  factory ContractItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileId;

  String fileContent;

  String fileName;

  @override
  List<Object> get props => [fileId, fileContent, fileName];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$Status
    with EquatableMixin, ReferenceValueFragmentMixin {
  ContractItemFragmentMixin$Status();

  factory ContractItemFragmentMixin$Status.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$StatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$StatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$FinancialPositions
    with EquatableMixin, MultiReferenceValueFragmentMixin {
  ContractItemFragmentMixin$FinancialPositions();

  factory ContractItemFragmentMixin$FinancialPositions.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$FinancialPositionsFromJson(json);

  @override
  List<Object> get props => [catalog, values];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$FinancialPositionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContractItemFragmentMixin$BudgetItems
    with EquatableMixin, MultiReferenceValueFragmentMixin {
  ContractItemFragmentMixin$BudgetItems();

  factory ContractItemFragmentMixin$BudgetItems.fromJson(
          Map<String, dynamic> json) =>
      _$ContractItemFragmentMixin$BudgetItemsFromJson(json);

  @override
  List<Object> get props => [catalog, values];
  Map<String, dynamic> toJson() =>
      _$ContractItemFragmentMixin$BudgetItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MultiReferenceValueFragmentMixin$Catalog with EquatableMixin {
  MultiReferenceValueFragmentMixin$Catalog();

  factory MultiReferenceValueFragmentMixin$Catalog.fromJson(
          Map<String, dynamic> json) =>
      _$MultiReferenceValueFragmentMixin$CatalogFromJson(json);

  String id;

  String key;

  String title;

  bool isUsed;

  @override
  List<Object> get props => [id, key, title, isUsed];
  Map<String, dynamic> toJson() =>
      _$MultiReferenceValueFragmentMixin$CatalogToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MultiReferenceValueFragmentMixin$Values with EquatableMixin {
  MultiReferenceValueFragmentMixin$Values();

  factory MultiReferenceValueFragmentMixin$Values.fromJson(
          Map<String, dynamic> json) =>
      _$MultiReferenceValueFragmentMixin$ValuesFromJson(json);

  String id;

  String key;

  String value;

  bool isUsed;

  @override
  List<Object> get props => [id, key, value, isUsed];
  Map<String, dynamic> toJson() =>
      _$MultiReferenceValueFragmentMixin$ValuesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LetterItemFragmentMixin$Status
    with EquatableMixin, ReferenceValueFragmentMixin {
  LetterItemFragmentMixin$Status();

  factory LetterItemFragmentMixin$Status.fromJson(Map<String, dynamic> json) =>
      _$LetterItemFragmentMixin$StatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() => _$LetterItemFragmentMixin$StatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocItemFragmentMixin$IncomingSender
    with EquatableMixin, CorrespondentFragmentMixin {
  IncomingDocItemFragmentMixin$IncomingSender();

  factory IncomingDocItemFragmentMixin$IncomingSender.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocItemFragmentMixin$IncomingSenderFromJson(json);

  @override
  List<Object> get props => [
        addressImported,
        city,
        correspondent,
        email,
        fullTitle,
        hasChildren,
        id,
        index,
        isDeleted,
        organization,
        parentId,
        phone,
        position,
        region,
        street,
        title
      ];
  Map<String, dynamic> toJson() =>
      _$IncomingDocItemFragmentMixin$IncomingSenderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocItemFragmentMixin$Status
    with EquatableMixin, ReferenceValueFragmentMixin {
  IncomingDocItemFragmentMixin$Status();

  factory IncomingDocItemFragmentMixin$Status.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocItemFragmentMixin$StatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$IncomingDocItemFragmentMixin$StatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocItemFragmentMixin$Type
    with EquatableMixin, ReferenceValueFragmentMixin {
  IncomingDocItemFragmentMixin$Type();

  factory IncomingDocItemFragmentMixin$Type.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocItemFragmentMixin$TypeFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$IncomingDocItemFragmentMixin$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncomingDocItemFragmentMixin$SpecialControls
    with EquatableMixin, MultiReferenceValueFragmentMixin {
  IncomingDocItemFragmentMixin$SpecialControls();

  factory IncomingDocItemFragmentMixin$SpecialControls.fromJson(
          Map<String, dynamic> json) =>
      _$IncomingDocItemFragmentMixin$SpecialControlsFromJson(json);

  @override
  List<Object> get props => [catalog, values];
  Map<String, dynamic> toJson() =>
      _$IncomingDocItemFragmentMixin$SpecialControlsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocItemFragmentMixin$Addressees
    with EquatableMixin, CorrespondentFragmentMixin {
  OutgoingDocItemFragmentMixin$Addressees();

  factory OutgoingDocItemFragmentMixin$Addressees.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocItemFragmentMixin$AddresseesFromJson(json);

  @override
  List<Object> get props => [
        addressImported,
        city,
        correspondent,
        email,
        fullTitle,
        hasChildren,
        id,
        index,
        isDeleted,
        organization,
        parentId,
        phone,
        position,
        region,
        street,
        title
      ];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocItemFragmentMixin$AddresseesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocItemFragmentMixin$Status
    with EquatableMixin, ReferenceValueFragmentMixin {
  OutgoingDocItemFragmentMixin$Status();

  factory OutgoingDocItemFragmentMixin$Status.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocItemFragmentMixin$StatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocItemFragmentMixin$StatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocItemFragmentMixin$Type
    with EquatableMixin, ReferenceValueFragmentMixin {
  OutgoingDocItemFragmentMixin$Type();

  factory OutgoingDocItemFragmentMixin$Type.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocItemFragmentMixin$TypeFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocItemFragmentMixin$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocItemFragmentMixin$ReservationInfo with EquatableMixin {
  OutgoingDocItemFragmentMixin$ReservationInfo();

  factory OutgoingDocItemFragmentMixin$ReservationInfo.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocItemFragmentMixin$ReservationInfoFromJson(json);

  bool isRegistered;

  String registerNumber;

  DateTime registrationDate;

  @override
  List<Object> get props => [isRegistered, registerNumber, registrationDate];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocItemFragmentMixin$ReservationInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OutgoingDocItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  OutgoingDocItemFragmentMixin$ScanCopyOriginal();

  factory OutgoingDocItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$OutgoingDocItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileId;

  String fileContent;

  String fileName;

  @override
  List<Object> get props => [fileId, fileContent, fileName];
  Map<String, dynamic> toJson() =>
      _$OutgoingDocItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$Taxattachments with EquatableMixin {
  TaxExpertiseItemFragmentMixin$Taxattachments();

  factory TaxExpertiseItemFragmentMixin$Taxattachments.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$TaxattachmentsFromJson(json);

  String fileId;

  String fileContent;

  String fileName;

  @override
  List<Object> get props => [fileId, fileContent, fileName];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$TaxattachmentsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax();

  factory TaxExpertiseItemFragmentMixin$ConsequenceIncomeTax.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceIncomeTaxFromJson(json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceIncomeTaxToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax
    with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax();

  factory TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTax.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTaxFromJson(
          json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceIncomeTaxToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ConsequenceVAT with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ConsequenceVAT();

  factory TaxExpertiseItemFragmentMixin$ConsequenceVAT.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceVATFromJson(json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceVATToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT
    with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT();

  factory TaxExpertiseItemFragmentMixin$ContractorConsequenceVAT.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceVATFromJson(json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceVATToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes();

  factory TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxes.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxesFromJson(json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ConsequenceOtherTaxesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes
    with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes();

  factory TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxes.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxesFromJson(
          json);

  String text;

  String reason;

  @override
  List<Object> get props => [text, reason];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ContractorConsequenceOtherTaxesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$TaxRisks with EquatableMixin {
  TaxExpertiseItemFragmentMixin$TaxRisks();

  factory TaxExpertiseItemFragmentMixin$TaxRisks.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$TaxRisksFromJson(json);

  String reason;

  String power;

  String assessment;

  @override
  List<Object> get props => [reason, power, assessment];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$TaxRisksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaxExpertiseItemFragmentMixin$ContractorTaxRisks with EquatableMixin {
  TaxExpertiseItemFragmentMixin$ContractorTaxRisks();

  factory TaxExpertiseItemFragmentMixin$ContractorTaxRisks.fromJson(
          Map<String, dynamic> json) =>
      _$TaxExpertiseItemFragmentMixin$ContractorTaxRisksFromJson(json);

  String reason;

  String power;

  String assessment;

  @override
  List<Object> get props => [reason, power, assessment];
  Map<String, dynamic> toJson() =>
      _$TaxExpertiseItemFragmentMixin$ContractorTaxRisksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestToHireItemFragmentMixin$Applicant with EquatableMixin {
  RequestToHireItemFragmentMixin$Applicant();

  factory RequestToHireItemFragmentMixin$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$RequestToHireItemFragmentMixin$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$RequestToHireItemFragmentMixin$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestToHireItemFragmentMixin$ApplicantDetails with EquatableMixin {
  RequestToHireItemFragmentMixin$ApplicantDetails();

  factory RequestToHireItemFragmentMixin$ApplicantDetails.fromJson(
          Map<String, dynamic> json) =>
      _$RequestToHireItemFragmentMixin$ApplicantDetailsFromJson(json);

  String department;

  String jobTitle;

  String orgUnit;

  @override
  List<Object> get props => [department, jobTitle, orgUnit];
  Map<String, dynamic> toJson() =>
      _$RequestToHireItemFragmentMixin$ApplicantDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestToHireItemFragmentMixin$OrderDescriptor with EquatableMixin {
  RequestToHireItemFragmentMixin$OrderDescriptor();

  factory RequestToHireItemFragmentMixin$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$RequestToHireItemFragmentMixin$OrderDescriptorFromJson(json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$RequestToHireItemFragmentMixin$OrderDescriptorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestToHireItemFragmentMixin$RecruitmentSource
    with EquatableMixin, ReferenceValueFragmentMixin {
  RequestToHireItemFragmentMixin$RecruitmentSource();

  factory RequestToHireItemFragmentMixin$RecruitmentSource.fromJson(
          Map<String, dynamic> json) =>
      _$RequestToHireItemFragmentMixin$RecruitmentSourceFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$RequestToHireItemFragmentMixin$RecruitmentSourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestToHireItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  RequestToHireItemFragmentMixin$ScanCopyOriginal();

  factory RequestToHireItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$RequestToHireItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileContent;

  String fileId;

  String fileName;

  bool isLocked;

  @override
  List<Object> get props => [fileContent, fileId, fileName, isLocked];
  Map<String, dynamic> toJson() =>
      _$RequestToHireItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestForDismissalItemFragmentMixin$Applicant with EquatableMixin {
  RequestForDismissalItemFragmentMixin$Applicant();

  factory RequestForDismissalItemFragmentMixin$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$RequestForDismissalItemFragmentMixin$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$RequestForDismissalItemFragmentMixin$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestForDismissalItemFragmentMixin$ApplicantDetails
    with EquatableMixin {
  RequestForDismissalItemFragmentMixin$ApplicantDetails();

  factory RequestForDismissalItemFragmentMixin$ApplicantDetails.fromJson(
          Map<String, dynamic> json) =>
      _$RequestForDismissalItemFragmentMixin$ApplicantDetailsFromJson(json);

  String department;

  String jobTitle;

  String orgUnit;

  @override
  List<Object> get props => [department, jobTitle, orgUnit];
  Map<String, dynamic> toJson() =>
      _$RequestForDismissalItemFragmentMixin$ApplicantDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestForDismissalItemFragmentMixin$OrderDescriptor with EquatableMixin {
  RequestForDismissalItemFragmentMixin$OrderDescriptor();

  factory RequestForDismissalItemFragmentMixin$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$RequestForDismissalItemFragmentMixin$OrderDescriptorFromJson(json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$RequestForDismissalItemFragmentMixin$OrderDescriptorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestForDismissalItemFragmentMixin$ScanCopyOriginal
    with EquatableMixin {
  RequestForDismissalItemFragmentMixin$ScanCopyOriginal();

  factory RequestForDismissalItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$RequestForDismissalItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileContent;

  String fileId;

  String fileName;

  bool isLocked;

  @override
  List<Object> get props => [fileContent, fileId, fileName, isLocked];
  Map<String, dynamic> toJson() =>
      _$RequestForDismissalItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TransferRequestItemFragmentMixin$Applicant with EquatableMixin {
  TransferRequestItemFragmentMixin$Applicant();

  factory TransferRequestItemFragmentMixin$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRequestItemFragmentMixin$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$TransferRequestItemFragmentMixin$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TransferRequestItemFragmentMixin$ApplicantDetails with EquatableMixin {
  TransferRequestItemFragmentMixin$ApplicantDetails();

  factory TransferRequestItemFragmentMixin$ApplicantDetails.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRequestItemFragmentMixin$ApplicantDetailsFromJson(json);

  String department;

  String jobTitle;

  String orgUnit;

  @override
  List<Object> get props => [department, jobTitle, orgUnit];
  Map<String, dynamic> toJson() =>
      _$TransferRequestItemFragmentMixin$ApplicantDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TransferRequestItemFragmentMixin$OrderDescriptor with EquatableMixin {
  TransferRequestItemFragmentMixin$OrderDescriptor();

  factory TransferRequestItemFragmentMixin$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRequestItemFragmentMixin$OrderDescriptorFromJson(json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$TransferRequestItemFragmentMixin$OrderDescriptorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TransferRequestItemFragmentMixin$RecruitmentSource
    with EquatableMixin, ReferenceValueFragmentMixin {
  TransferRequestItemFragmentMixin$RecruitmentSource();

  factory TransferRequestItemFragmentMixin$RecruitmentSource.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRequestItemFragmentMixin$RecruitmentSourceFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$TransferRequestItemFragmentMixin$RecruitmentSourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TransferRequestItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  TransferRequestItemFragmentMixin$ScanCopyOriginal();

  factory TransferRequestItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$TransferRequestItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileContent;

  String fileId;

  String fileName;

  bool isLocked;

  @override
  List<Object> get props => [fileContent, fileId, fileName, isLocked];
  Map<String, dynamic> toJson() =>
      _$TransferRequestItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestCancellationForDismissalItemFragmentMixin$Applicant
    with EquatableMixin {
  RequestCancellationForDismissalItemFragmentMixin$Applicant();

  factory RequestCancellationForDismissalItemFragmentMixin$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$RequestCancellationForDismissalItemFragmentMixin$ApplicantFromJson(
          json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$RequestCancellationForDismissalItemFragmentMixin$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails
    with EquatableMixin {
  RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails();

  factory RequestCancellationForDismissalItemFragmentMixin$ApplicantDetails.fromJson(
          Map<String, dynamic> json) =>
      _$RequestCancellationForDismissalItemFragmentMixin$ApplicantDetailsFromJson(
          json);

  String department;

  String jobTitle;

  String orgUnit;

  @override
  List<Object> get props => [department, jobTitle, orgUnit];
  Map<String, dynamic> toJson() =>
      _$RequestCancellationForDismissalItemFragmentMixin$ApplicantDetailsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor
    with EquatableMixin {
  RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor();

  factory RequestCancellationForDismissalItemFragmentMixin$OrderDescriptor.fromJson(
          Map<String, dynamic> json) =>
      _$RequestCancellationForDismissalItemFragmentMixin$OrderDescriptorFromJson(
          json);

  DateTime issuedDate;

  String number;

  @override
  List<Object> get props => [issuedDate, number];
  Map<String, dynamic> toJson() =>
      _$RequestCancellationForDismissalItemFragmentMixin$OrderDescriptorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal
    with EquatableMixin {
  RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal();

  factory RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginalFromJson(
          json);

  String fileContent;

  String fileId;

  String fileName;

  bool isLocked;

  @override
  List<Object> get props => [fileContent, fileId, fileName, isLocked];
  Map<String, dynamic> toJson() =>
      _$RequestCancellationForDismissalItemFragmentMixin$ScanCopyOriginalToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class LnaDirectiveItemFragmentMixin$PlaceOfRegistration
    with EquatableMixin, ReferenceValueFragmentMixin {
  LnaDirectiveItemFragmentMixin$PlaceOfRegistration();

  factory LnaDirectiveItemFragmentMixin$PlaceOfRegistration.fromJson(
          Map<String, dynamic> json) =>
      _$LnaDirectiveItemFragmentMixin$PlaceOfRegistrationFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$LnaDirectiveItemFragmentMixin$PlaceOfRegistrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LnaDirectiveItemFragmentMixin$ValidStatus
    with EquatableMixin, ReferenceValueFragmentMixin {
  LnaDirectiveItemFragmentMixin$ValidStatus();

  factory LnaDirectiveItemFragmentMixin$ValidStatus.fromJson(
          Map<String, dynamic> json) =>
      _$LnaDirectiveItemFragmentMixin$ValidStatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$LnaDirectiveItemFragmentMixin$ValidStatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LnaDirectiveItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  LnaDirectiveItemFragmentMixin$ScanCopyOriginal();

  factory LnaDirectiveItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$LnaDirectiveItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileId;

  String fileContent;

  String fileName;

  @override
  List<Object> get props => [fileId, fileContent, fileName];
  Map<String, dynamic> toJson() =>
      _$LnaDirectiveItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LnaOrderItemFragmentMixin$PlaceOfRegistration
    with EquatableMixin, ReferenceValueFragmentMixin {
  LnaOrderItemFragmentMixin$PlaceOfRegistration();

  factory LnaOrderItemFragmentMixin$PlaceOfRegistration.fromJson(
          Map<String, dynamic> json) =>
      _$LnaOrderItemFragmentMixin$PlaceOfRegistrationFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$LnaOrderItemFragmentMixin$PlaceOfRegistrationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LnaOrderItemFragmentMixin$ValidStatus
    with EquatableMixin, ReferenceValueFragmentMixin {
  LnaOrderItemFragmentMixin$ValidStatus();

  factory LnaOrderItemFragmentMixin$ValidStatus.fromJson(
          Map<String, dynamic> json) =>
      _$LnaOrderItemFragmentMixin$ValidStatusFromJson(json);

  @override
  List<Object> get props => [id, key, value];
  Map<String, dynamic> toJson() =>
      _$LnaOrderItemFragmentMixin$ValidStatusToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LnaOrderItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  LnaOrderItemFragmentMixin$ScanCopyOriginal();

  factory LnaOrderItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$LnaOrderItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileId;

  String fileContent;

  String fileName;

  @override
  List<Object> get props => [fileId, fileContent, fileName];
  Map<String, dynamic> toJson() =>
      _$LnaOrderItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericItemFragmentMixin$Applicant with EquatableMixin {
  GenericItemFragmentMixin$Applicant();

  factory GenericItemFragmentMixin$Applicant.fromJson(
          Map<String, dynamic> json) =>
      _$GenericItemFragmentMixin$ApplicantFromJson(json);

  String firstName;

  String lastName;

  String patronymic;

  String personalIdentifier;

  @override
  List<Object> get props =>
      [firstName, lastName, patronymic, personalIdentifier];
  Map<String, dynamic> toJson() =>
      _$GenericItemFragmentMixin$ApplicantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericItemFragmentMixin$ApplicantDetails with EquatableMixin {
  GenericItemFragmentMixin$ApplicantDetails();

  factory GenericItemFragmentMixin$ApplicantDetails.fromJson(
          Map<String, dynamic> json) =>
      _$GenericItemFragmentMixin$ApplicantDetailsFromJson(json);

  String department;

  String jobTitle;

  String orgUnit;

  @override
  List<Object> get props => [department, jobTitle, orgUnit];
  Map<String, dynamic> toJson() =>
      _$GenericItemFragmentMixin$ApplicantDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GenericItemFragmentMixin$ScanCopyOriginal with EquatableMixin {
  GenericItemFragmentMixin$ScanCopyOriginal();

  factory GenericItemFragmentMixin$ScanCopyOriginal.fromJson(
          Map<String, dynamic> json) =>
      _$GenericItemFragmentMixin$ScanCopyOriginalFromJson(json);

  String fileContent;

  String fileId;

  String fileName;

  bool isLocked;

  @override
  List<Object> get props => [fileContent, fileId, fileName, isLocked];
  Map<String, dynamic> toJson() =>
      _$GenericItemFragmentMixin$ScanCopyOriginalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MassMailItemFragmentMixin$MassMailMailingGroups with EquatableMixin {
  MassMailItemFragmentMixin$MassMailMailingGroups();

  factory MassMailItemFragmentMixin$MassMailMailingGroups.fromJson(
          Map<String, dynamic> json) =>
      _$MassMailItemFragmentMixin$MassMailMailingGroupsFromJson(json);

  String id;

  String parentId;

  String name;

  bool hasChildren;

  bool isDeleted;

  String description;

  @override
  List<Object> get props =>
      [id, parentId, name, hasChildren, isDeleted, description];
  Map<String, dynamic> toJson() =>
      _$MassMailItemFragmentMixin$MassMailMailingGroupsToJson(this);
}

enum CommercialSecret {
  @JsonValue('NO')
  no,
  @JsonValue('CONTAINS_KT')
  containsKt,
  @JsonValue('CONTAINS_KI')
  containsKi,
  @JsonValue('CONTAINS_DSP')
  containsDsp,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum DocumentStatusEnumType {
  @JsonValue('UNKNOWN')
  unknown,
  @JsonValue('NOT_SUPPORTED')
  notSupported,
  @JsonValue('DRAFT')
  draft,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('EXPIRED')
  expired,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('REVIEWED')
  reviewed,
  @JsonValue('SENDED')
  sended,
  @JsonValue('ON_AGREEMENT')
  onAgreement,
  @JsonValue('REVOKED')
  revoked,
  @JsonValue('AGREED')
  agreed,
  @JsonValue('SIGNED')
  signed,
  @JsonValue('SOLVED')
  solved,
  @JsonValue('ON_PERFORMANCE')
  onPerformance,
  @JsonValue('AGREED_BY_ADDRESSEE')
  agreedByAddressee,
  @JsonValue('AGREED_BY_ADDRESSEE_IN_PROGRESS')
  agreedByAddresseeInProgress,
  @JsonValue('REJECTED_BY_ADDRESSEE')
  rejectedByAddressee,
  @JsonValue('REJECTED_BY_ADDRESSEE_IN_PROGRESS')
  rejectedByAddresseeInProgress,
  @JsonValue('REJECTED_BY_ADDRESSEE_BY_PERFORMER')
  rejectedByAddresseeByPerformer,
  @JsonValue('REJECTED_BY_ADDRESSEE_EXECUTED_BY_PERFORMER')
  rejectedByAddresseeExecutedByPerformer,
  @JsonValue('AGREED_BY_ADDRESSEE_REJECTED_BY_PERFORMER')
  agreedByAddresseeRejectedByPerformer,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
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
enum MailingItemState {
  @JsonValue('UNDEFINED')
  undefined,
  @JsonValue('PENDING')
  pending,
  @JsonValue('ACTIVATED')
  activated,
  @JsonValue('SUSPENDED')
  suspended,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum RelationType {
  @JsonValue('OPTION_1')
  option1,
  @JsonValue('COUNTER_OPTION_1')
  counterOption1,
  @JsonValue('OPTION_2')
  option2,
  @JsonValue('COUNTER_OPTION_2')
  counterOption2,
  @JsonValue('OPTION_3')
  option3,
  @JsonValue('COUNTER_OPTION_3')
  counterOption3,
  @JsonValue('OPTION_4')
  option4,
  @JsonValue('COUNTER_OPTION_4')
  counterOption4,
  @JsonValue('OPTION_5')
  option5,
  @JsonValue('COUNTER_OPTION_5')
  counterOption5,
  @JsonValue('OPTION_6')
  option6,
  @JsonValue('COUNTER_OPTION_6')
  counterOption6,
  @JsonValue('OPTION_7')
  option7,
  @JsonValue('COUNTER_OPTION_7')
  counterOption7,
  @JsonValue('OPTION_8')
  option8,
  @JsonValue('COUNTER_OPTION_8')
  counterOption8,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum TransferRequestType {
  @JsonValue('ON_TEMPORARY')
  onTemporary,
  @JsonValue('ON_PERMANENT')
  onPermanent,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum UserRoleInDocument {
  @JsonValue('NOBODY')
  nobody,
  @JsonValue('PARTICIPANT')
  participant,
  @JsonValue('EDITOR')
  editor,
  @JsonValue('REGISTRAR')
  registrar,
  @JsonValue('TO_EXAMINE')
  toExamine,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class GetDocumentArguments extends JsonSerializable with EquatableMixin {
  GetDocumentArguments({@required this.id});

  @override
  factory GetDocumentArguments.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetDocumentArgumentsToJson(this);
}

class GetDocumentQuery
    extends GraphQLQuery<GetDocument$DFSQuery, GetDocumentArguments> {
  GetDocumentQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getDocument'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'DocumentId'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'documentQueryAPI'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'documentId'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'document'),
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
                          name: NameNode(value: 'eventCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'version'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'subDocuments'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(
                                    value: 'documentDescriptorFragment'),
                                directives: [])
                          ])),
                      FieldNode(
                          name: NameNode(value: 'attachments'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'attachmentsFragment'),
                                directives: [])
                          ])),
                      FieldNode(
                          name: NameNode(value: 'documentType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'adminIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'readerIds'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'registrationInfo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'isRegistered'),
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
                                name: NameNode(value: 'registrationDate'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
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
                          name: NameNode(value: 'revoked'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'isRevoked'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'revokedNote'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'isTaskCanceled'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'relations'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'relationId'),
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
                                name: NameNode(value: 'document'),
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
                                      name: NameNode(value: 'compileTitle'),
                                      alias: NameNode(value: 'title'),
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'hasAccess'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'adminIds'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: '__typename'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  InlineFragmentNode(
                                      typeCondition: TypeConditionNode(
                                          on: NamedTypeNode(
                                              name: NameNode(
                                                  value: 'ContractItem'),
                                              isNonNull: false)),
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name:
                                                NameNode(value: 'responderId'),
                                            alias: NameNode(
                                                value: 'ContractResponderId'),
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null)
                                      ])),
                                  InlineFragmentNode(
                                      typeCondition: TypeConditionNode(
                                          on: NamedTypeNode(
                                              name:
                                                  NameNode(value: 'LetterItem'),
                                              isNonNull: false)),
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name:
                                                NameNode(value: 'responderId'),
                                            alias: NameNode(
                                                value: 'LetterResponderId'),
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null)
                                      ])),
                                  InlineFragmentNode(
                                      typeCondition: TypeConditionNode(
                                          on: NamedTypeNode(
                                              name: NameNode(
                                                  value: 'OutgoingDocItem'),
                                              isNonNull: false)),
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'responder'),
                                            alias:
                                                NameNode(value: 'responderId'),
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null)
                                      ]))
                                ])),
                            FieldNode(
                                name: NameNode(value: 'relationType'),
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
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentSerialNumber'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'documentSystemNumber'),
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
                          name: NameNode(value: 'isLinkAccessAllowed'),
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
                          name: NameNode(value: 'mailingGroups'),
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
                                name: NameNode(value: 'authorId'),
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
                                name: NameNode(value: 'name'),
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
                                name: NameNode(value: 'state'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'when'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'mailingUsers'),
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
                                name: NameNode(value: 'state'),
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
                                name: NameNode(value: 'when'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'userRoles'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'ContractItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'contractItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'LetterItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'letterItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'IncomingDocItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name:
                                    NameNode(value: 'incomingDocItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'OutgoingDocItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name:
                                    NameNode(value: 'OutgoingDocItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'TaxExpertiseItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name:
                                    NameNode(value: 'taxExpertiseItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'RequestToHireItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(
                                    value: 'requestToHireItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(
                                      value: 'RequestForDismissalItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(
                                    value: 'requestForDismissalItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'TransferRequestItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(
                                    value: 'transferRequestItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(
                                      value:
                                          'CancellationRequestForDismissalItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(
                                    value:
                                        'requestCancellationForDismissalItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'LNADirectiveItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name:
                                    NameNode(value: 'lnaDirectiveItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'LNAOrderItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'lnaOrderItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'GenericRequestItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'genericItemFragment'),
                                directives: [])
                          ])),
                      InlineFragmentNode(
                          typeCondition: TypeConditionNode(
                              on: NamedTypeNode(
                                  name: NameNode(value: 'MassMailItem'),
                                  isNonNull: false)),
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FragmentSpreadNode(
                                name: NameNode(value: 'massMailItemFragment'),
                                directives: [])
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'unlockedAttachments'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'attachmentsFragment'),
                          directives: [])
                    ]))
              ]))
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
        name: NameNode(value: 'attachmentsFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'FileVersionListItem'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'fileId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'fileContent'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'fileName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'fileType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'fileLength'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'when'),
              alias: NameNode(value: 'date'),
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
              name: NameNode(value: 'isDeleted'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'isLocked'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'contractItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ContractItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: 'conclusionDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'contractor'),
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
              name: NameNode(value: 'departmentResponder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'legalNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'paymentEndDate'),
              alias: null,
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
              name: NameNode(value: 'reasonToEnter'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'validityPeriod'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'commencementDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'expirationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'subject'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'sum'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'amountWithTax'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'referenceValueFragment'),
                          directives: [])
                    ])),
                FieldNode(
                    name: NameNode(value: 'tax'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'systemNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
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
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'financialPositions'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'multiReferenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'budgetItems'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'multiReferenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'note'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'commercialSecret'),
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
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'multiReferenceValueFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'MultiReferenceValue'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'catalog'),
              alias: null,
              arguments: [],
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isUsed'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'values'),
              alias: null,
              arguments: [],
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
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isUsed'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'letterItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'LetterItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
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
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'head'),
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
              alias: NameNode(value: 'letterAddresseeIds'),
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
              name: NameNode(value: 'personally'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'additionSheetsQuantity'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'sheetsQuantity'),
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
              name: NameNode(value: 'text'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'tasks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'commercialSecret'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'incomingDocItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'IncomingDocItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'sender'),
              alias: NameNode(value: 'incomingSender'),
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'correspondentFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'actor'),
              alias: NameNode(value: 'incomingActor'),
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
              name: NameNode(value: 'senderOutgoingNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'specialControls'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'multiReferenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'controlDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'controlMark'),
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
              name: NameNode(value: 'commercialSecret'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'tasks'),
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
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'correspondentFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Correspondent'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'addressImported'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'city'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'correspondent'),
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
              name: NameNode(value: 'fullTitle'),
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
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'index'),
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
              name: NameNode(value: 'organization'),
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
              name: NameNode(value: 'phone'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'position'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'region'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'street'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'title'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'OutgoingDocItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'OutgoingDocItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'actor'),
              alias: NameNode(value: 'outgoingActor'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addressees'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'correspondentFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'head'),
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
              name: NameNode(value: 'sender'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responder'),
              alias: NameNode(value: 'outgoingResponder'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
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
              name: NameNode(value: 'reservationInfo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'isRegistered'),
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
                    name: NameNode(value: 'registrationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'commercialSecret'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'taxExpertiseItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'TaxExpertiseItem'), isNonNull: false)),
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
              name: NameNode(value: 'attachments'),
              alias: NameNode(value: 'taxattachments'),
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'consequenceIncomeTax'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'contractorConsequenceIncomeTax'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'consequenceVAT'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'contractorConsequenceVAT'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'consequenceOtherTaxes'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'contractorConsequenceOtherTaxes'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'taxRisks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'power'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'assessment'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'contractorTaxRisks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'power'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'assessment'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'recommendations'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'notionTaxAuthorities'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'notionMinFin'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'notionTribunal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'impactAssessmentKGN'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'conclusionResultContract'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responderTaxId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responderAccountant'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'requestToHireItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'RequestToHireItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addresseeId'),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'applicantDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'department'),
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
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'compileTitle'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'dateOfVacancy'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'departmentTo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'positionTo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'hireDate'),
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
              name: NameNode(value: 'recruitmentSource'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'tasks'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'requestForDismissalItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'RequestForDismissalItem'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addresseeId'),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'applicantDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'department'),
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
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'clauseEmploymentLaw'),
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
              name: NameNode(value: 'departmentFrom'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'positionFrom'),
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
              name: NameNode(value: 'tasks'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'dismissalDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'transferRequestItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'TransferRequestItem'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addresseeId'),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'applicantDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'department'),
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
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'compileTitle'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'dateOfVacancy'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'departmentFrom'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'departmentTo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'positionFrom'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'positionTo'),
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
              name: NameNode(value: 'recruitmentSource'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'tasks'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'transferDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'transferType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'requestCancellationForDismissalItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'CancellationRequestForDismissalItem'),
                isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addresseeId'),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'applicantDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'department'),
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
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'clauseEmploymentLaw'),
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
              name: NameNode(value: 'departmentFrom'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'positionFrom'),
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
              name: NameNode(value: 'tasks'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'requestForDismissalId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'dismissalDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'lnaDirectiveItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'LNADirectiveItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'title'),
              alias: NameNode(value: 'directiveTitle'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'signer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'actor'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'overseer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'placeOfRegistration'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'validStatus'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'remark'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'tasks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'examinationFiles'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'lnaOrderItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'LNAOrderItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'title'),
              alias: NameNode(value: 'orderTitle'),
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'signer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'actor'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'responder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'overseer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'placeOfRegistration'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'validStatus'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'referenceValueFragment'),
                    directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'remark'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'tasks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'examinationFiles'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'genericItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'GenericRequestItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'addresseeId'),
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
              name: NameNode(value: 'applicantId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'applicantDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'department'),
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
              name: NameNode(value: 'curatorId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'tasks'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'text'),
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
              name: NameNode(value: 'responderId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'scanCopyOriginal'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'fileContent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fileName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'enableNetworkFolder'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'massMailItemFragment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'MassMailItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
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
              name: NameNode(value: 'signature'),
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
              name: NameNode(value: 'body'),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'massMailMailingGroups'),
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
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getDocument';

  @override
  final GetDocumentArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetDocument$DFSQuery parse(Map<String, dynamic> json) =>
      GetDocument$DFSQuery.fromJson(json);
}
