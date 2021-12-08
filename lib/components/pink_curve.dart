import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    // TODO: Set properties to paint
    paint.color = Colors.pink[100];
    paint.style = PaintingStyle.fill;

    paint.strokeWidth = 3.0;
    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 4, size.height / 2, size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(size.width * .7, 0);
    //path.lineTo(size.width, size.height);

    // TODO: Draw your path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
