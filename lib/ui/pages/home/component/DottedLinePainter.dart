import 'package:flutter/material.dart';
import 'package:property_finder/ui/style/theme.dart';

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = gray300 // Warna garis
      ..strokeWidth = 2 // Lebar garis
      ..strokeCap = StrokeCap.round; // Bentuk ujung garis

    double dashWidth = 5;
    double dashSpace = 3;
    double startX = 0;
    double endX = size.width;

    while (startX < endX) {
      canvas.drawLine(
          Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}