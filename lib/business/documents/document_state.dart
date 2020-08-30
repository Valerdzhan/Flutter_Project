import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

class DocumentState {
  final GetDocument$DFSQuery$DocumentQueryAPI$Document document;
  final DocumentListItemInterfaceCollection documents;
  final bool isLoading;

  DocumentState({
    this.document,
    this.documents,
    this.isLoading,
  });

  factory DocumentState.initial() => DocumentState(
        document: new GetDocument$DFSQuery$DocumentQueryAPI$Document(),
        documents: new DocumentListItemInterfaceCollection(count: 0, items: []),
        isLoading: false,
      );

  static GetDocument$DFSQuery$DocumentQueryAPI$Document getTaskById(
      AppState state, String documentId) {
    return null;
  }

  DocumentState copy({
    GetDocument$DFSQuery$DocumentQueryAPI$Document document,
    DocumentListItemInterfaceCollection documents,
    bool isLoading,
  }) =>
      DocumentState(
        document: document ?? this.document,
        documents: documents ?? this.documents,
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentState &&
          runtimeType == other.runtimeType &&
          document == other.document &&
          documents == other.documents &&
          isLoading == other.isLoading;

  @override
  int get hashCode =>
      document.hashCode ^ documents.hashCode ^ isLoading.hashCode;
}
