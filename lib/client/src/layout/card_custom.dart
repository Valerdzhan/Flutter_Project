import 'package:flutter/material.dart';

enum BorderSideEnum { left, right, top, bottom }

class CardCustom extends StatelessWidget {
  final Color color;
  final BorderSideEnum borderSibe;
  final double borderWidth;
  final Widget child;

  const CardCustom({
    Key key,
    this.color = const Color(0xff0e5cad),
    this.child,
    this.borderSibe = BorderSideEnum.left,
    this.borderWidth = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: color, width: borderWidth),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
