import 'package:flutter/material.dart';

Widget progressIndicator() => Container(
      alignment: Alignment.center,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff0e5cad)),
        ),
      ),
    );
