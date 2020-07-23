import 'package:flutter/material.dart';
import 'package:myapp/components/myScaffold.dart';

class UserPage extends StatelessWidget {
  final String _title = 'Пользователь';
  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: this._title, body: UserPageBody(), isDrawer: false,);
  }
}

class UserPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/images/NonameUser.png',
                      height: 100.0, width: 100.0)),
              Flexible(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Иванов Валерий Олегович'),
                      Text('Инженер-программист 1 категории'),
                      Text('Служба ИУС Администрация'),
                      Text('v.o.ivanov@gd-urengoy.gazprom.ru')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
