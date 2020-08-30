import 'package:flutter/material.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

class DocumentTypeColor {
  static Color documentColor(DocumentType documentType) {
    switch (documentType) {
      case DocumentType.contract:
        return Color(0xff009688);
      case DocumentType.letter:
        return Color(0xffffb74d);
      case DocumentType.incomingDoc:
        return Color(0xff2196f3);
      case DocumentType.outgoingDoc:
        return Color(0xff90a4ae);
      case DocumentType.requestToHire:
        return Color(0xff81c784);
      case DocumentType.transferRequest:
        return Color(0xff81c784);
      case DocumentType.requestForDismissal:
        return Color(0xff81c784);
      case DocumentType.cancellationRequestForDismissal:
        return Color(0xff81c784);
      case DocumentType.order:
        return Color(0xffa00000);
      case DocumentType.directive:
        return Color(0xfff05000);
      case DocumentType.genericRequest:
        return Color(0xff81c784);
      case DocumentType.massMail:
        return Color(0xff929292);
      default:
        return Color(0xff0e5cad);
    }
  }
}
