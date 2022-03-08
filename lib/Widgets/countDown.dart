import 'dart:math';

import 'package:flutter/material.dart';

class CountDownPaint extends CustomPaint{
  final Color bgColor;
  final Color strokeColor;
  final double percent;
  final double width;

  const CountDownPaint(this.bgColor, this.strokeColor, this.percent, this.width);

  @override
  void paint(Canvas canvas, Size size){
    Paint bgLine = Paint()
      ..color = bgColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Paint progressline = Paint()
      ..color = bgColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    
    canvas.drawCircle(center, radius, bgLine);
  }

  bool shouldRepaint(CustomPaint oldPaint){
    return true;
  }

}
