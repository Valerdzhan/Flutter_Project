import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:myapp/client/pages/user/user.dart';
import 'package:myapp/client/src/layout/field_display.dart';
import 'package:myapp/client/src/components/labeled_radio.dart';
import 'package:myapp/models/graphql/graphql_api.tasks.graphql.dart';

// ignore: must_be_immutable
class TaskRouteItemPage extends StatefulWidget {
  UserTasks$DFSQuery$UserTasks$Items$RouteTaskListItemType task;
  VoidCallback onQuery;
  Function(String) onCreate;
  Function(int, String, bool) onUpdate;
  Function(int) onRemove;
  VoidCallback onPop;

  TaskRouteItemPage({
    Key key,
    this.task,
    this.onQuery,
    this.onCreate,
    this.onUpdate,
    this.onRemove,
    this.onPop,
  }) : super(key: key);

  @override
  _TaskRouteItemPageState createState() => _TaskRouteItemPageState();
}

class _TaskRouteItemPageState extends State<TaskRouteItemPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  bool _isRadioSelected = false;
  String _taskAction = "Pending";

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: widget.task.routeTaskType.toString(),
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
        body: _taskBody(),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => {},
          tooltip: 'Создать подзадачу',
          child: new Icon(Icons.add),
        ));
  }

  Widget _taskBody() {
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
                color: Colors.white,
                child: Text("Задача"),
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("История"),
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
                    fieldName: "Маршрут",
                    title: 'Согласование и подписание', // route.title
                    // 'Очень длинное название документа Очень длинное название документа Очень длинное название документа'
                  ),
                  FieldDisplayComponent(
                    fieldName: "Документ",
                    title: widget.task.documentLastVersion
                        .compileTitle, // должна быть ссылкой
                    // 'Очень длинное название документа Очень длинное название документа Очень длинное название документа'
                  ),
                  FieldDisplayComponent(
                    fieldName: "Исполнитель",
                    customWidget: UserItem(
                      userId: widget.task.actorId,
                    ),
                  ),
                  FieldDisplayComponent(
                    fieldName: "Делегирование задачи",
                    // Сделать Компонент Делегирования
                    //  иконка деленирования должна быть ссылкой
                    // 'Очень длинное название документа Очень длинное название документа Очень длинное название документа'
                    customWidget: UserItem(
                      userId: widget.task.actorId,
                    ),
                  ),
                  FieldDisplayComponent(
                    fieldName: "Срок",
                    title: DateFormat('dd.MM.yyyy')
                        .format(widget.task.dueDate)
                        .toString(),
                  ),
                  // FieldDisplayComponent(
                  //   fieldName: "Статус",
                  //   padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                  //   customWidget: NestedTabBar(),
                  // ),
                  NestedTabBar(),
                ],
              ),
              new Column(children: [
                Text(widget.task.documentLastVersion.compileTitle),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  String _selectValue = "Pending";
  TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          child: new TabBar(
            controller: _nestedTabController,
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
                height: 30,
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Исплонитель"),
              ),
              Container(
                height: 30,
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Ответственный"),
              ),
            ],
          ),
        ),
        Container(
          height: 135.0,
          child: new TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Прочтено'),
                      leading: Radio(
                        value: "Pending",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Принято в работу'),
                      leading: Radio(
                        value: "Accepted",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Согласовано'),
                      leading: Radio(
                        value: "Approved",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Отклонено'),
                      leading: Radio(
                        value: "Rejected",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Прочтено'),
                      leading: Radio(
                        value: "Pending",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Принято в работу'),
                      leading: Radio(
                        value: "Accepted",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Согласовано'),
                      leading: Radio(
                        value: "Approved",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: ListTile(
                      title: const Text('Отклонено'),
                      leading: Radio(
                        value: "Rejected",
                        groupValue: _selectValue,
                        onChanged: (String value) {
                          setState(() {
                            _selectValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
