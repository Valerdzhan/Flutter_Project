import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/client/todos/todos_connector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GraphQLProvider(
    client: graphQLConfiguration.client,
    child: CacheProvider(child: TodosApp()),
  ));
}

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          theme: ThemeData.dark(),
          home: TodosConnector(),
        ),
      );
}
