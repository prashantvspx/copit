import 'package:flutter/cupertino.dart';

class CustomClipperDemobottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, 0.0);
    path.lineTo(size.width / 2.5, size.height);
    // path.lineTo(size.width, -size.height);
    // path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 70, 0.0);
    // path.lineTo(-size.width / 2, size.height);
    // path.lineTo(size.width, size.height / 1);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipperDemotop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // path.lineTo(size.height / 2, size.height);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, 0.0);
    path.lineTo(size.width / 2.5, size.height);
    path.lineTo(0.0, size.height);
    // path.lineTo(size.width * 2 / 5, size.height);
    // path.close();
    // path.lineTo(-size.height / 20, 4);
    // path.lineTo(size.height, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, -20);
    // path.lineTo(size.height / 5, size.height);
    // path.lineTo(size.height / 2, size.width);
    // path.lineTo(size.height / 2, 0);
    // path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
