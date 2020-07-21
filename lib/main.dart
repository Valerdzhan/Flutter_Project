import 'package:flutter/material.dart';
import 'package:myapp/navigates/http_lesson.dart';
import 'package:myapp/navigates/http_post_lesson.dart';
import 'package:myapp/navigates/lesson_4.dart';
import 'package:myapp/navigates/todo.dart';
// import 'package:myapp/tutorial_1.dart';
import 'tutorial_1.dart';
import 'navigates/second.dart';
import 'navigates/lesson_3.dart';

void main() {
  runApp(MyAppPost());
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
