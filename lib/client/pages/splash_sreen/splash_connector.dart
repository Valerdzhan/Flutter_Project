import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/init/models/init_model.dart';
import 'package:myapp/client/pages/home/home_page.dart';
import 'package:myapp/client/pages/splash_sreen/splash_screen.dart';

class SplashScreenConnector extends StatelessWidget {
  SplashScreenConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, InitModel>(
        model: InitModel(),
        onInitialBuild: (vm) => vm.onQuery(),
        builder: (BuildContext context, InitModel vm) => vm.isInitLoad
            ? HomePage(
                currentUser: vm.usersState.currentUser,
                onQuery: vm.onQuery,
              )
            : SplashScreenPage());
  }
}
