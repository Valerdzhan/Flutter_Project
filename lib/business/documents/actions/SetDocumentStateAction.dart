import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/document_state.dart';

class SetDocumentStateAction extends ReduxAction<AppState> {
  final DocumentState documentState;
  SetDocumentStateAction(this.documentState);

  @override
  Future<AppState> reduce() async => state.copy(
        documentState: documentState,
      );
}
