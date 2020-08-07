import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/init/models/init_model.dart';
import 'package:myapp/business/users/actions/UsersActions.dart';
import 'package:myapp/client/home/home_page.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
import 'package:myapp/client/user/personal.dart';
import 'package:myapp/src/pages/task-list.dart';

class HomeConnector extends StatelessWidget {
  HomeConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, InitModel>(
      model: InitModel(),
      onInitialBuild: (vm) => vm.onQuery(),
      builder: (BuildContext context, InitModel vm) => HomePage(
        currentUser: vm.currentUser,
        onQuery: vm.onQuery,
      ),
    );
  }
}
