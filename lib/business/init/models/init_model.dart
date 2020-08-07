import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/init/actions/InitAction.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';

class InitModel extends BaseModel<AppState> {
  InitModel();

  Init$DFSQuery$CurrentUser currentUser;
  VoidCallback onQuery;

  InitModel.build({
    @required this.currentUser,
    @required this.onQuery,
  }) : super();

  @override
  InitModel fromStore() => InitModel.build(
        currentUser: state.currentUser,
        onQuery: () => dispatch(InitActions()),
      );
}
