import 'package:flutter/widgets.dart';

class DonutShape extends StatefulWidget {
  @override
  _DonutShapeState createState() => _DonutShapeState();
}

class _DonutShapeState extends State<DonutShape> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _DonutClipper(),
      child: Container(
        width: double.infinity,
        child: Image.network(
          "https://picsum.photos/300",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _DonutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path.combine(
      PathOperation.difference,
      Path()
        ..addOval(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2,
          ),
        ),
      Path()
        ..addOval(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 6,
          ),
        ),
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
