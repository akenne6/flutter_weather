import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final MaterialColor color;

  GradientContainer({
    Key key,
    @required this.child,
    @required this.color,
  })  : assert(child != null, color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.6, 0.8, 1.0],
          colors: [
            color[700],
            color[500],
            color[300],
          ],
        ),
      ),
      child: child,
    );
  }
}
