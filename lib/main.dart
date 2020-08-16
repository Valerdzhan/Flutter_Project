import 'dart:io';

import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/client/pages/splash_sreen/splash_connector.dart';
import 'package:myapp/client/pages/user/personal.dart';

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();
final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NavigateAction.setNavigatorKey(navigatorKey);
  runApp(GraphQLProvider(
    client: graphQLConfiguration.client,
    child: CacheProvider(child: MyApp()),
  ));
}

final routes = {
  '/': (BuildContext context) => SplashScreenConnector(),
  "/Person": (BuildContext context) => PersonalPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          routes: routes,
          navigatorKey: navigatorKey,
          theme: ThemeData(primarySwatch: Colors.blue),
        ),
      );
}
