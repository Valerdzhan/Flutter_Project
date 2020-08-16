import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/init/models/init_model.dart';
import 'package:myapp/client/pages/user/personal.dart';

class PersonalConnector extends StatelessWidget {
  PersonalConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, InitModel>(
        model: InitModel(),
        onInit: (store) => store,
        builder: (BuildContext context, InitModel vm) => PersonalPage(
              currentUser: vm.usersState.currentUser,
            ));
  }
}
