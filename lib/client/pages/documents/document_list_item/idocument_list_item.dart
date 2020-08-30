import 'package:flutter/material.dart';
import 'package:myapp/client/pages/documents/document_list_item/contract_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/document_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/generic_request_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/hr_request_doc_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/incoming_doc_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/letter_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/lna_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/mass_mail_list_item.dart';
import 'package:myapp/client/pages/documents/document_list_item/outgoing_doc_list_item.dart';

import 'package:myapp/models/graphql/graphql_api.lists.graphql.dart';

abstract class IDocumentListItem extends StatelessWidget {
  final Documents$DFSQuery$Documents$Items item;
  // ignore: missing_return
  factory IDocumentListItem(Documents$DFSQuery$Documents$Items item) {
    try {
      // Сделать при реальных данных
      // switch (item.documentType) {
      //   case DocumentType.letter:
      //     return LetterItem(item: item);
      //   case DocumentType.contract:
      //     return ContractItem(item: item);
      //   default:
      //     return DocumentItem(item: item);
      switch (item.$$typename) {
        case r'ContractListItem':
          return ContractListItem(item: item);
        case r'LetterListItem':
          return LetterListItem(item: item);
        case r'HRRequestDocListItem':
          return HRRequestDocListItem(item: item);
        case r'GenericRequestListItem':
          return GenericRequestListItem(item: item);
        case r'IncomingDocListItem':
          return IncomingDocListItem(item: item);
        case r'LNAListItem':
          return LNAListItem(item: item);
        case r'OutgoingDocListItem':
          return OutgoingDocListItem(item: item);
        case r'MassMailListItem':
          return MassMailListItem(item: item);
        default:
          return DocumentListItem(item: item);
      }
    } catch (err) {
      print(item.$$typename);
      print(item.type);
    }
  }
}
