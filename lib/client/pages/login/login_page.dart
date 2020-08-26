import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/client/pages/splash_sreen/splash_connector.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(37, 97, 186, 1),
      body: Container(
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
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                  SizedBox(height: 5.0),
                  Text('Система электронного документооборота',
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  Text('ООО «Газпром добыча Уренгой»',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 120.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    filled: true, labelText: 'Логин', fillColor: Colors.white),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    filled: true, labelText: 'Пароль', fillColor: Colors.white),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Отмена',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                  ),
                  RaisedButton(
                    child: Text('Войти'),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreenConnector(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
