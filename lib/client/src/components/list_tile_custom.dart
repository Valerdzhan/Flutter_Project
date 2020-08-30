import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final Widget lending;
  final ListTile listTile;

  const ListTileCustom({Key key, this.lending, this.listTile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (lending != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                child: Center(
                  child: lending,
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: listTile,
              ),
            )
          ],
        ),
      ),
    );
  }
}
