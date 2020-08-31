import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_item/cancellation_request_for_dismissal_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/contract_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/document_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/document_loading_page.dart';
import 'package:myapp/client/pages/documents/document_item/generic_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/lna_order_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/request_for_dismissal_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/request_to_hire_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/incoming_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/letter_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/lna_directive_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/mass_mail_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/outgoing_item_page.dart';
import 'package:myapp/client/pages/documents/document_item/transfer_request_item_page.dart';
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
      switch (item.$$typename) {
        // case r'ContractItem':
        //   return ContractItemPage(item: item);
        // case r'LetterItem':
        //   return LetterItemPage(item: item);
        // case r'IncomingDocItem':
        //   return IncomingDocItemPage(item: item);
        // case r'OutgoingDocItem':
        //   return OutgoingDocItemPage(item: item);
        // case r'RequestToHireItem':
        //   return RequestToHireItemPage(item: item);
        // case r'RequestForDismissalItem':
        //   return RequestForDismissalItemPage(item: item);
        // case r'TransferRequestItem':
        //   return TransferRequestItemPage(item: item);
        // case r'CancellationRequestForDismissalItem':
        //   return CancellationRequestForDismissalItemPage(item: item);
        // case r'GenericRequestItem':
        //   return GenericRequestItemPage(item: item);
        // case r'LNADirectiveItem':
        //   return LNADirectiveItemPage(item: item);
        // case r'LNAOrderItem':
        //   return LNAOrderItemPage(item: item);
        // case r'MassMailItem':
        //   return MassMailItemPage(item: item);
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
