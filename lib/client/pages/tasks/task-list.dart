import 'package:intl/intl.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/tasks/models/TaskListItemList.dart';
import 'package:myapp/business/tasks/models/tasks_model.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/components/myScaffold.dart';
import 'package:myapp/client/src/layout/taskStatus.dart';

class TaskListConnector extends StatelessWidget {
  TaskListConnector({Key key}) : super(key: key);

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
    icon: Icon(Icons.home),
    title: Text('Главная'),
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
              /* only set when the previous state is false
             * Less widget rebuilds 
             */
              print("**** ${isScrollVisible} up"); //Move IO away from setState
              setState(() {
                isScrollVisible = false;
              });
            }
          } else {
            if (_controller.position.userScrollDirection ==
                ScrollDirection.forward) {
              if (isScrollVisible == false) {
                /* only set when the previous state is false
               * Less widget rebuilds 
               */
                print(
                    "**** ${isScrollVisible} down"); //Move IO away from setState
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
    return MyScaffold(
      title: this._title,
      body: (widget.tasks == null && widget.isLoading)
          ? Container(
              alignment: Alignment.center,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : (widget.tasks.items.length == 0)
              ? Text('Нет задач')
              : RefreshIndicator(
                  onRefresh: widget.onRefresh,
                  child: Stack(
                    children: <Widget>[
                      ListView.builder(
                        controller: _controller,
                        itemCount: widget.tasks.items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: ExcludeSemantics(
                              child: CircleAvatar(child: Text('$index')),
                            ),
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
                                Text('${widget.tasks.items[index].status}'),
                                UserItem(
                                    userId: widget.tasks.items[index].actorId)
                              ],
                            ),
                          );
                        },
                      ),
                      if (widget.isLoading)
                        Container(
                          alignment: Alignment.center,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    ],
                  ),
                ),
      floatingActionButton: new Visibility(
        visible: isScrollVisible,
        child: new FloatingActionButton(
          onPressed: _tapOnTop,
          tooltip: 'Increment',
          child: new Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
