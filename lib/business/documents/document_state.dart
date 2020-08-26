import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';

class DocumentState {
  final DocumentListItemInterfaceCollection documents;
  final bool isLoading;

  DocumentState({
    this.documents,
    this.isLoading,
  });

  factory DocumentState.initial() => DocumentState(
        documents: new DocumentListItemInterfaceCollection(count: 0, items: []),
        isLoading: true,
      );

  DocumentState copy({
    DocumentListItemInterfaceCollection documents,
    bool isLoading,
  }) =>
      DocumentState(
        documents: documents ?? this.documents,
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentState &&
          runtimeType == other.runtimeType &&
          documents == other.documents &&
          isLoading == other.isLoading;

  @override
  int get hashCode => documents.hashCode ^ isLoading.hashCode;
}
