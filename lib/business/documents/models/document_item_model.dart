import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/documents/actions/DocumentItemQueryAction.dart';
import 'package:myapp/business/todos/actions/Actions.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

class DocumentItemModel extends BaseModel<AppState> {
  DocumentItemModel();
  bool isLoading;
  GetDocument$DFSQuery$DocumentQueryAPI$Document document;
  Function(String) onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;

  DocumentItemModel.build({
    @required this.isLoading,
    @required this.document,
    @required this.onQuery,
    @required this.onCreate,
    @required this.onUpdate,
    @required this.onRemove,
    @required this.onPop,
  }) : super(equals: [isLoading, document]);

  @override
  DocumentItemModel fromStore() => DocumentItemModel.build(
        isLoading: store.state.documentState.isLoading,
        document: store.state.documentState.document,
        onQuery: (documentId) =>
            dispatch(DocumentItemQueryAction(documentId: documentId)),
        onCreate: (title) => dispatch(AddAction(title: title)),
        onUpdate: (id, title, done) =>
            dispatch(UpdateAction(id: id, title: title, done: done)),
        onRemove: (id) => dispatch(RemoveAction(id: id)),
        onPop: () => dispatch(NavigateAction.pop()),
      );
}
