// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.current_user.graphql.g.dart';

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
class CurrentUser$DFSQuery$CurrentUser
    with EquatableMixin, UserItemFragmentWithSubsMixin, UserItemFragmentMixin {
  CurrentUser$DFSQuery$CurrentUser();

  factory CurrentUser$DFSQuery$CurrentUser.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentUser$DFSQuery$CurrentUserFromJson(json);

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
  Map<String, dynamic> toJson() =>
      _$CurrentUser$DFSQuery$CurrentUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentUser$DFSQuery with EquatableMixin {
  CurrentUser$DFSQuery();

  factory CurrentUser$DFSQuery.fromJson(Map<String, dynamic> json) =>
      _$CurrentUser$DFSQueryFromJson(json);

  CurrentUser$DFSQuery$CurrentUser currentUser;

  @override
  List<Object> get props => [currentUser];
  Map<String, dynamic> toJson() => _$CurrentUser$DFSQueryToJson(this);
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

class CurrentUserQuery
    extends GraphQLQuery<CurrentUser$DFSQuery, JsonSerializable> {
  CurrentUserQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'currentUser'),
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
  final String operationName = 'currentUser';

  @override
  List<Object> get props => [document, operationName];
  @override
  CurrentUser$DFSQuery parse(Map<String, dynamic> json) =>
      CurrentUser$DFSQuery.fromJson(json);
}
