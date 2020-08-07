import 'dart:io';

import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/users/users_state.dart';
import 'package:myapp/client/home/home_connector.dart';

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GraphQLProvider(
    client: graphQLConfiguration.client,
    child: CacheProvider(child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  final String _title = 'СЭД';
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blue),
          home: HomeConnector(),
        ),
      );
}
