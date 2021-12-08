import 'package:cake_scheduler/components/purple_circle.dart';
import 'package:flutter/cupertino.dart';

class Draw extends StatelessWidget {
  const Draw({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CurvePainter(),
    );
  }
}
