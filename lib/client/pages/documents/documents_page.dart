import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/business/documents/models/DocumentListItemInterfaceCollection.dart';
import 'package:myapp/client/pages/documents/document_list_item/idocument_list_item.dart';
import 'package:myapp/client/src/components/menu.dart';

class DocumentListPage extends StatefulWidget {
  final VoidCallback loadMore;
  final VoidCallback onQuery;
  final Future<void> Function() onRefresh;
  final bool isLoading;
  final DocumentListItemInterfaceCollection documents;

  DocumentListPage({
    Key key,
    this.documents,
    this.loadMore,
    this.onQuery,
    this.onRefresh,
    this.isLoading,
  }) : super(key: key);

  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.library_books),
    title: Text('Документы'),
  );

  @override
  _DocumentListPageState createState() => _DocumentListPageState();
}

class _DocumentListPageState extends State<DocumentListPage> {
  ScrollController _controller;
  final String _title = 'Все документы';
  bool isScrollVisible = false;

  @override
  void initState() {
    _controller = ScrollController()
      ..addListener(
        () {
          if (!widget.isLoading &&
              _controller.position.maxScrollExtent ==
                  _controller.position.pixels) {
            widget.loadMore();
          }
          if (_controller.position.userScrollDirection ==
              ScrollDirection.reverse) {
            if (isScrollVisible == true) {
              setState(() {
                isScrollVisible = false;
              });
            }
          } else {
            if (_controller.position.userScrollDirection ==
                ScrollDirection.forward) {
              if (isScrollVisible == false) {
                setState(() {
                  isScrollVisible = true;
                });
              }
            }
          }
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _tapOnTop() {
    setState(() {
      _controller.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
      isScrollVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // title: this._title,
      // titleSecondLine: '${widget.documents.count.toString()} документов',
      appBar: new AppBar(
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              text: this._title,
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                // if (widget.titleSecondLine != null)
                TextSpan(
                  text: '\n${widget.documents.count.toString()} документов',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ]),
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
            icon: Icon(Icons.search),
            tooltip: 'Поиск',
            onPressed: () => {print('click search')},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: (widget.documents == null && widget.isLoading)
          ? Container(
              alignment: Alignment.center,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : (widget.documents.items.length == 0)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Нет документов')),
                )
              : RefreshIndicator(
                  onRefresh: widget.onRefresh,
                  child: Stack(children: <Widget>[
                    ListView.builder(
                      controller: _controller,
                      itemCount: widget.documents.items.length,
                      itemBuilder: (context, index) {
                        return IDocumentListItem(widget.documents.items[index]);
                        // ListTile(
                        //   leading: ExcludeSemantics(
                        //     child: CircleAvatar(child: Text('$index')),
                        //   ),
                        //   title: Row(
                        //     children: [
                        //       Expanded(
                        //           child: Text(
                        //               '${widget.tasks.items[index].documentLastVersion.compileTitle}')),
                        //       Text(
                        //         DateFormat('dd.MM.yyyy')
                        //             .format(widget.tasks.items[index].dueDate)
                        //             .toString(),
                        //       ),
                        //     ],
                        //   ),
                        //   subtitle: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: <Widget>[
                        //       StatusTask(
                        //         task: widget.tasks.items[index],
                        //       ),
                        //       Text(widget.tasks.items[index].$$typename)
                        //       // UserItem(
                        //       //   userId: widget.tasks.items[index].actorId,
                        //       // )
                        //     ],
                        //   ),
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => TaskItemPageConnector(
                        //             taskId: widget.tasks.items[index].id),
                        //       ),
                        //     );
                        //   },
                        // );
                      },
                    ),
                    if (widget.isLoading)
                      Container(
                        alignment: Alignment.center,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                  ])),
    );
  }
}
