import 'package:flutter/widgets.dart';

class DonutShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wrap out container in a ClipPath widget
    // And set the custom clipper as described below.
    return ClipPath(
      clipper: _DonutClipper(),
      child: Container(
        // Fit width
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
    // We combine 2 paths using the "difference" operation
    // PathOperation.difference will subtract the second path
    // from the first path...
    //
    // The first path being the outer circle that will
    // contain and clip the widget (our image, in this example)
    //
    // The second path being the inner 'hole' of the donut
    return Path.combine(
      PathOperation.difference,
      // First Path
      Path()
        ..addOval(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2,
          ),
        ),
      // Second Path
      Path()
        ..addOval(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            // Increase "6" to make hole smaller
            // likewise, decrease to make bigger.
            radius: size.width / 6,
          ),
        ),
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
