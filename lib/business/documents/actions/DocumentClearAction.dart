import 'package:myapp/business/Base/BarrierAction.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/Base/BaseActions.dart';
import 'package:myapp/business/documents/actions/DocumentListQuery.dart';
import 'package:myapp/business/documents/actions/SetDocumentStateAction.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

class DocumentClearAction extends BaseActions with BarrierAction {
  DocumentClearAction();

  @override
  Future<AppState> reduce() async {
    var newDocumentState = documentState.copy(
      document: new GetDocument$DFSQuery$DocumentQueryAPI$Document(),
    );

    await dispatchFuture(SetDocumentStateAction(newDocumentState));

    return null;
  }

  @override
  void before() => dispatch(IsLoadingDocumentState(true));

  @override
  void after() => dispatch(IsLoadingDocumentState(false));
}
