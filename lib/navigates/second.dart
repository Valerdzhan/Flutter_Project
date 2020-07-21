import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/navigates/lesson_3.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center( 
        child: Column(
          children: [
            Container(
              child: RaisedButton(
                child: Text('Launch screen'),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                  // Navigate to the second screen when tapped.
                },
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Navigate to sxreen that extracts args'),
                onPressed: () {
                  Navigator.pushNamed(
                    context, 
                    ExtractArgumentScreen.routeName,
                    arguments: ScreenArgument(
                      'Arg 1',
                      'message 1'
                    )
                  );
                },
              ),
            )
          ],
          ),
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!!!'),
        ),
      ),
    );
  }
}

