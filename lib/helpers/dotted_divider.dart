import 'package:flutter/material.dart';

class DottedHorizontalDivider extends StatelessWidget {
  final double width;
  final double dashWidth;
  final double dashSpacing;
  final Color color;

  const DottedHorizontalDivider({
    super.key,
    this.width = double.infinity,
    this.dashWidth = 4,
    this.dashSpacing = 4,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: width,
      child: CustomPaint(
        painter: _DottedHorizontalPainter(
          dashWidth: dashWidth,
          dashSpacing: dashSpacing,
          color: color,
        ),
      ),
    );
  }
}

class _DottedHorizontalPainter extends CustomPainter {
  final double dashWidth;
  final double dashSpacing;
  final Color color;

  _DottedHorizontalPainter({
    required this.dashWidth,
    required this.dashSpacing,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = size.height;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
