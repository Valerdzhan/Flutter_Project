import 'package:intl/intl.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/business/tasks/models/tasks_model.dart';
import 'package:myapp/client/pages/tasks/task_item/task_item_connector.dart';
import 'package:myapp/client/src/layout/card_custom.dart';
import 'package:myapp/client/src/components/menu.dart';
import 'package:myapp/client/src/components/my_scaffold.dart';
import 'package:myapp/client/src/layout/task_status.dart';
import 'package:myapp/client/src/services/document_type_color.dart';

class TasksPageConnector extends StatelessWidget {
  TasksPageConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TasksModel>(
      model: TasksModel(),
      onInitialBuild: (vm) => vm.onQuery(),
      builder: (BuildContext context, TasksModel vm) => TaskListPage(
        tasks: vm.tasks,
        onQuery: vm.onQuery,
        onRefresh: vm.onRefresh,
        loadMore: vm.loadMore,
        isLoading: vm.isLoading,
      ),
    );
  }
}

class TaskListPage extends StatefulWidget {
  final VoidCallback loadMore;
  final VoidCallback onQuery;
  final Future<void> Function() onRefresh;
  final bool isLoading;
  final TaskListItemInterfaceCollection tasks;

  TaskListPage({
    Key key,
    this.tasks,
    this.loadMore,
    this.onQuery,
    this.onRefresh,
    this.isLoading,
  }) : super(key: key);

  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.assignment),
    title: Text('Задачи'),
  );

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskListPage> {
  ScrollController _controller;
  final String _title = 'Мои задачи';
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
    /*
    
      flexibleSpace: Center(
          child: Column(
            children: [
              Text(this._title),
              Text('${widget.tasks.count} задач'),
            ],
          ),
        ),
     */
    return Scaffold(
      // title: this._title,
      // titleSecondLine: '${widget.tasks.count.toString()} задач',
      appBar: new AppBar(
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              text: this._title,
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                // if (widget.titleSecondLine != null)
                TextSpan(
                  text: '\n${widget.tasks.count.toString()} задач',
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
      body: (widget.tasks.items.length == 0)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Нет задач')),
            )
          : Stack(
              children: <Widget>[
                RefreshIndicator(
                  onRefresh: widget.onRefresh,
                  child: ListView.builder(
                    controller: _controller,
                    itemCount: widget.tasks.items.length,
                    itemBuilder: (context, index) {
                      return CardCustom(
                        color: DocumentTypeColor.documentColor(
                            widget.tasks.items[index].documentLastVersion.type),
                        child: ListTile(
                          // leading: ExcludeSemantics(
                          //   child: CircleAvatar(child: Text('$index')),
                          // ),
                          title: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                      '${widget.tasks.items[index].documentLastVersion.compileTitle}')),
                              Text(
                                DateFormat('dd.MM.yyyy')
                                    .format(widget.tasks.items[index].dueDate)
                                    .toString(),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              StatusTask(
                                task: widget.tasks.items[index],
                              ),
                              Text(widget.tasks.items[index].$$typename)
                              // UserItem(
                              //   userId: widget.tasks.items[index].actorId,
                              // )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskItemPageConnector(
                                    taskId: widget.tasks.items[index].id),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                (widget.isLoading)
                    ? new Align(
                        child: new Container(
                          child: new Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: new Center(
                                  child: new CircularProgressIndicator())),
                        ),
                        alignment: FractionalOffset.bottomCenter,
                      )
                    : new SizedBox(
                        width: 0.0,
                        height: 0.0,
                      )
              ],
            ),
      floatingActionButton: new Visibility(
        visible: isScrollVisible,
        child: new FloatingActionButton(
          onPressed: _tapOnTop,
          tooltip: 'Increment',
          child: new Icon(Icons.keyboard_arrow_up),
        ),
      ),
    );
  }
}
