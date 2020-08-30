import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_item/document_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/document_loading_page.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

abstract class IDocumentItem extends StatelessWidget {
  final GetDocument$DFSQuery$DocumentQueryAPI$Document item;
  final bool isLoading;
  final Function(String) onQuery;
  final Function(String) onCreate;
  final Function(int, String, bool) onUpdate;
  final Function(int) onRemove;
  final VoidCallback onPop;

  factory IDocumentItem({
    GetDocument$DFSQuery$DocumentQueryAPI$Document item,
    Function(String) onQuery,
    Function(String) onCreate,
    Function(int, String, bool) onUpdate,
    Function(int) onRemove,
    VoidCallback onPop,
    bool isLoading,
  }) {
    try {
      if (item == null) return DocumentLoadPage(item: item);
      switch (item.$$typename) {
        // case r'ContractItem':
        //   return ContractItem(item: item);
        // case r'LetterItem':
        //   return LetterItem(item: item);
        // case r'HRRequestDocItem':
        //   return HRRequestDocItem(item: item);
        // case r'GenericRequestItem':
        //   return GenericRequestItem(item: item);
        // case r'IncomingDocItem':
        //   return IncomingDocItem(item: item);
        // case r'LNAItem':
        //   return LNAItem(item: item);
        // case r'OutgoingDocItem':
        //   return OutgoingDocItem(item: item);
        // case r'MassMailItem':
        //   return MassMailItem(item: item);
        default:
          return DocumentItemPage(
            item: item,
            isLoading: isLoading,
            onQuery: onQuery,
            onCreate: onCreate,
            onUpdate: onUpdate,
            onRemove: onRemove,
            onPop: onPop,
          );
      }
    } catch (err) {
      return null;
    }
  }
}
