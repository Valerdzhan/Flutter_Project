import 'dart:io';

import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/client/pages/documents/document_connector.dart';
import 'package:myapp/client/pages/login/login_page.dart';
import 'package:myapp/client/pages/splash_sreen/splash_connector.dart';
import 'package:myapp/client/pages/tasks/task_list_page.dart';
import 'package:myapp/client/pages/user/personal_connector.dart';

// Импорт цветовой схемой
// import 'package:myapp/settings/color.dart';

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
  '/': (BuildContext context) => LoginPage(),
  '/tasks': (BuildContext context) => TasksPageConnector(),
  '/documents': (BuildContext context) => DocumentsPageConnector(),
  '/splash': (BuildContext context) => SplashScreenConnector(),
  '/Person': (BuildContext context) => PersonalConnector()
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          routes: routes,
          navigatorKey: navigatorKey,
          // Применение кастомной темы
          // theme: kShrineTheme,
          theme: ThemeData(primarySwatch: Colors.blue),
        ),
      );
}
