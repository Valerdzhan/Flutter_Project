import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/business/documents/actions/DocumentClearAction.dart';
import 'package:myapp/client/pages/documents/document_item/idocument_item.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/field_display.dart';
import 'package:myapp/client/src/layout/progress_indicator.dart';
import 'package:myapp/models/graphql/graphql_api.document.graphql.dart';

// ignore: must_be_immutable
class DocumentItemPage extends StatelessWidget implements IDocumentItem {
  GetDocument$DFSQuery$DocumentQueryAPI$Document item;
  bool isLoading;
  Function(String) onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;

  DocumentItemPage({
    Key key,
    this.isLoading = false,
    this.item,
    this.onQuery,
    this.onCreate,
    this.onUpdate,
    this.onRemove,
    this.onPop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DocumentItemDisplay(
      item: item,
      isLoading: isLoading,
      onQuery: onQuery,
      onCreate: onCreate,
      onUpdate: onUpdate,
      onRemove: onRemove,
      onPop: onPop,
    );
  }
}

// ignore: must_be_immutable
class DocumentItemDisplay extends StatefulWidget {
  GetDocument$DFSQuery$DocumentQueryAPI$Document item;
  bool isLoading;
  Function(String) onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;

  DocumentItemDisplay({
    Key key,
    this.isLoading,
    this.item,
    this.onQuery,
    this.onCreate,
    this.onUpdate,
    this.onRemove,
    this.onPop,
  }) : super(key: key);

  @override
  _DocumentItemDisplayState createState() => _DocumentItemDisplayState();
}

class _DocumentItemDisplayState extends State<DocumentItemDisplay>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  Widget render(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: widget.isLoading ? 'Loading...' : widget.item.id,
            style: TextStyle(fontSize: 20),
          ),
        ),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                Color(0xff0e5cad),
                // Color(0xFF3366FF),
                Color(0xff029cf5),
                // Color(0xFF00CCFF),
                // Color(0xff15eded),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            tooltip: 'Напоминалка',
            onPressed: () => {print('click search')},
          ),
        ],
      ),
      body: widget.isLoading ? progressIndicator() : _documentBody(),
    );
  }

  Widget _documentBody() {
    return new Column(
      children: <Widget>[
        new Container(
          child: new TabBar(
            controller: _tabController,
            labelColor: const Color(0xff525c6e),
            unselectedLabelColor: const Color(0xffacb3bf),
            indicatorPadding: EdgeInsets.all(0.0),
            indicatorWeight: 4.0,
            labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            indicator: ShapeDecoration(
                shape: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                        style: BorderStyle.solid)),
                gradient: LinearGradient(colors: [
                  Color(0xff0e5cad),
                  // Color(0xFF3366FF),
                  Color(0xff029cf5),
                  // Color(0xFF00CCFF),
                  // Color(0xff15eded),
                  // Color(0xff52e5e7),
                  // Color(0xff79f1a4),
                ])),
            tabs: [
              Container(
                height: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.white,
                child: Text("Документ"),
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.white,
                child: Text("Согласование и подписание"),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              Column(
                children: [
                  FieldDisplayComponent(
                    fieldName: "Ответственный",
                    customWidget: UserItem(
                      userId: widget.item.authorId,
                    ),
                    // 'Очень длинное название документа Очень длинное название документа Очень длинное название документа'
                  ),
                ],
              ),
              Container(
                child: Text('Text'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
