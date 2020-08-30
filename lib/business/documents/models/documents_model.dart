import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/actions/DocumentListQuery.dart';
import 'package:myapp/business/documents/actions/DocumentsLoadMoreAction.dart';
import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';

class DocumentsModel extends BaseModel<AppState> {
  DocumentsModel();

  DocumentListItemInterfaceCollection documents;
  VoidCallback onQuery;
  VoidCallback loadMore;
  Future<void> Function() onRefresh;
  bool isLoading;

  DocumentsModel.build({
    @required this.documents,
    @required this.isLoading,
    @required this.onQuery,
    @required this.onRefresh,
    @required this.loadMore,
  }) : super(equals: [documents, isLoading]);

  @override
  DocumentsModel fromStore() => DocumentsModel.build(
        isLoading: state.documentState.isLoading,
        documents: state.documentState.documents,
        loadMore: () => dispatch(DocumentsLoadMoreAction()),
        onQuery: () => dispatch(DocumentsListQuery()),
        onRefresh: () => dispatchFuture(DocumentsListQuery()),
      );
}
