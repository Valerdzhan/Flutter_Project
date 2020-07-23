import 'package:flutter/material.dart';
import 'package:myapp/components/myScaffold.dart';

class SecondScreen extends StatelessWidget {
  final String _title = 'Second';
  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: this._title, body: SecondScreenBody());
  }
}

class SecondScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Go back!'),
      ),
    );
  }
}
