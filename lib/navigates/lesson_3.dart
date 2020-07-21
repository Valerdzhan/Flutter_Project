import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenArgument {
  final String title;
  final String message;

  ScreenArgument(this.title, this.message);
}

class ExtractArgumentScreen extends StatelessWidget {
  static const routeName = '/extractArgument';

  @override
  Widget build(BuildContext context) {
    final ScreenArgument args = ModalRoute.of(context).settings.arguments;
  
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
