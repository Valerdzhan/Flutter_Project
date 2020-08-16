import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/models/graphql/graphql_api.init.dart';

class SetCurrentUserActions extends ReduxAction<AppState> {
  SetCurrentUserActions();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  @override
  Future<AppState> reduce() async {
    print('SetCurrentUserActions');

    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
      documentNode: InitQuery().document,
    );

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var currentUser =
          Init$DFSQuery$CurrentUser.fromJson(result.data["currentUser"]);

      return state.copy(
          userState: state.userState.copy(currentUser: currentUser));
    }

    return state;
  }
}
