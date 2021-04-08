import 'package:flutter/widgets.dart';

class Disk extends StatefulWidget {
  @override
  _DiskState createState() => _DiskState();
}

class _DiskState extends State<Disk> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _DiskClipper(),
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

class _DiskClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size);

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
