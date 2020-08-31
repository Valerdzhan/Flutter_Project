import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/actions/SetDocumentStateAction.dart';
import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/models/graphql/graphql_api.lists.dart';

class DocumentsListQuery extends BaseActions {
  DocumentsListQuery();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  Future<AppState> reduce() async {
    // await Future.delayed(
    //   Duration(milliseconds: 5000),
    //   () async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
        documentNode: DocumentsQuery().document,
        variables: <String, dynamic>{'skip': 0, 'limit': 20});

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var documents = DocumentListItemInterfaceCollection.fromJson(
          result.data["documents"]);

      var newDocumentState = documentState.copy(
        documents: documents,
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

class IsLoadingDocumentState extends ReduxAction<AppState> {
  IsLoadingDocumentState(this.val);

  final bool val;

  @override
  AppState reduce() => state.copy(
        documentState: state.documentState.copy(isLoading: val),
      );
}
