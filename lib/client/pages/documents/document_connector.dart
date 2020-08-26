import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/models/documents_model.dart';
import 'package:myapp/client/pages/documents/documents_page.dart';

class DocumentsPageConnector extends StatelessWidget {
  DocumentsPageConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DocumentsModel>(
      model: DocumentsModel(),
      onInitialBuild: (vm) => vm.onQuery(),
      builder: (BuildContext context, DocumentsModel vm) => DocumentListPage(
        documents: vm.documents,
        onQuery: vm.onQuery,
        onRefresh: vm.onRefresh,
        loadMore: vm.loadMore,
        isLoading: vm.isLoading,
      ),
    );
  }
}
