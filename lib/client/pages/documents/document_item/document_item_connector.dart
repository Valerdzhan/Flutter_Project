import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/actions/DocumentItemQueryAction.dart';
import 'package:myapp/business/documents/models/document_item_model.dart';
import 'package:myapp/client/pages/documents/document_item/idocument_item.dart';

class DocumentItemPageConnector extends StatefulWidget {
  final String documentId;
  DocumentItemPageConnector({Key key, this.documentId}) : super(key: key);

  @override
  _DocumentItemPageConnectorState createState() =>
      _DocumentItemPageConnectorState();
}

class _DocumentItemPageConnectorState extends State<DocumentItemPageConnector> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DocumentItemModel>(
      distinct: true,
      model: DocumentItemModel(),
      onInit: (store) async => await store.dispatchFuture(
          DocumentItemQueryAction(documentId: widget.documentId)),
      builder: (BuildContext context, DocumentItemModel vm) => IDocumentItem(
        item: vm.document,
        isLoading: vm.isLoading,
        onQuery: vm.onQuery,
        onCreate: vm.onCreate,
        onUpdate: vm.onUpdate,
        onRemove: vm.onRemove,
        onPop: vm.onPop,
      ),
    );
  }
}
