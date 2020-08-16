import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/init/actions/InitAction.dart';
import 'package:myapp/business/users/users_state.dart';

class InitModel extends BaseModel<AppState> {
  InitModel();
  UserState usersState;
  bool isInitLoad;
  VoidCallback onQuery;

  InitModel.build({
    @required this.usersState,
    @required this.onQuery,
    @required this.isInitLoad,
  }) : super(equals: [usersState, isInitLoad]);

  @override
  InitModel fromStore() => InitModel.build(
        usersState: state.userState,
        isInitLoad: state.isInitLoad,
        onQuery: () => dispatch(InitActions()),
      );
}
