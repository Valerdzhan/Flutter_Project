import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/models/graphql/graphql_api.init.dart';

class InitActions extends ReduxAction<AppState> {
  InitActions();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
      documentNode: InitQuery().document,
    );

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var currentUser =
          Init$DFSQuery$CurrentUser.fromJson(result.data["currentUser"]);

      return state.copy(currentUser: currentUser);
    }

    return state;
  }
}
