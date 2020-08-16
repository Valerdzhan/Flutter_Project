import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class CurrentUserModel extends BaseModel<AppState> {
  CurrentUserModel();

  Init$DFSQuery$CurrentUser currentUser;
  VoidCallback onQuery;

  CurrentUserModel.build({
    @required this.currentUser,
    @required this.onQuery,
  });

  @override
  CurrentUserModel fromStore() => CurrentUserModel.build(
        currentUser: state.userState.currentUser,
        onQuery: null,
      );
}
