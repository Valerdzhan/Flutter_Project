import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/Base/BarrierAction.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/documents/actions/DocumentListQuery.dart';
import 'package:myapp/business/documents/actions/SetDocumentStateAction.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

class DocumentItemQueryAction extends BaseActions with BarrierAction {
  final String documentId;
  DocumentItemQueryAction({@required this.documentId})
      : assert(documentId != null || documentId != '');

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
        documentNode: GetDocumentQuery().document,
        variables: <String, dynamic>{'id': documentId});

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var documents = GetDocument$DFSQuery$DocumentQueryAPI$Document.fromJson(
          result.data["documentQueryAPI"]["document"]);

      var newDocumentState = documentState.copy(
        document: documents,
      );

      dispatch(SetDocumentStateAction(newDocumentState));
    }

    return state;
  }

  @override
  void before() => dispatch(IsLoadingDocumentState(true));

  @override
  void after() => dispatch(IsLoadingDocumentState(false));
}
