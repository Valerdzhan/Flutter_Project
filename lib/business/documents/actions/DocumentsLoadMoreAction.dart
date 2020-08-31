import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/actions/DocumentListQuery.dart';
import 'package:myapp/business/documents/actions/SetDocumentStateAction.dart';
import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/models/graphql/graphql_api.lists.graphql.dart';

class DocumentsLoadMoreAction extends ReduxAction<AppState> {
  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    await Future.delayed(
      Duration(milliseconds: 5000),
      () async {
        GraphQLClient _client = graphQLConfiguration.clientToQuery();

        final QueryOptions options = QueryOptions(
            documentNode: DocumentsQuery().document,
            variables: <String, dynamic>{'skip': 0, 'limit': 20});

        final QueryResult result = await _client.query(options);

        if (!result.hasException) {
          var documents = DocumentListItemInterfaceCollection.fromJson(
              result.data["documents"]);

          var newDocuments = state.documentState.documents;

          documents.count += newDocuments.count;
          documents.items
              .forEach((dynamic item) => newDocuments.items.add(item));

          // newTasks.items.addAll(userTasks.items);

          var newDocumentState = state.documentState.copy(
            documents: newDocuments,
          );

          dispatch(SetDocumentStateAction(newDocumentState));
        }

        return state;
      },
    );
    return state;
  }

  @override
  void before() => dispatch(IsLoadingDocumentState(true));

  @override
  void after() => dispatch(IsLoadingDocumentState(false));
}
