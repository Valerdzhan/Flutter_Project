import 'package:flutter/material.dart';
import 'package:myapp/navigates/lesson_4.dart';
import 'package:myapp/navigates/todo.dart';
// import 'package:myapp/tutorial_1.dart';
import 'tutorial_1.dart';
import 'navigates/second.dart';
import 'navigates/lesson_3.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/',
    // routes: {
    //   '/': (context) => FirstScreen(),
    //   '/second': (context) => SecondScreen(),
    //   ExtractArgumentScreen.routeName: (context) => ExtractArgumentScreen()   
    // },
    title: 'Flutter Tutorial',
    home: HomePageTodo()
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
