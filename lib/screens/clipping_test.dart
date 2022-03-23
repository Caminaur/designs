import 'package:flutter/material.dart';

class ClippingTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wave Clipper Desing"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.deepOrangeAccent,
                  height: 200,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepOrangeAccent,
                height: 180,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              alignment: Alignment.topCenter,
              child: Text(
                "Wave Clippers",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();

    path.lineTo(0, size.height);
    final firstStart = Offset(size.width / 5, size.height);
    final firstEnd = Offset(size.width / 2.25, size.height - 50);

    path.quadraticBezierTo(
      firstStart.dx,
      firstStart.dy,
      firstEnd.dx,
      firstEnd.dy,
    );

    final secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    final secondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
      secondStart.dx,
      secondStart.dy,
      secondEnd.dx,
      secondEnd.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
