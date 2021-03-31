import 'package:flutter/material.dart';

class AddBadge extends StatelessWidget {
  final double top;
  final double right;
  final Widget child; // our Badge widget will wrap this child widget
  final int value; // what displays inside the badge
  final Color color; // the  background color of the badge - default is red

  AddBadge(
      {@required this.child,
        @required this.value,
        this.color,
        @required this.top,
        @required this.right});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: right,
          top: top,
          child: Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color != null ? color : Colors.red,
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}