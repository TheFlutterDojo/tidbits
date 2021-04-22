import 'package:flutter/widgets.dart';

import './widgets/donut_shape.dart';

class DonutShapeTidbit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      textStyle: TextStyle(color: Color(0xFF000000)),
      color: Color(0xFF000000),
      builder: (context, _) {
        return Center(
          child: Container(
            color: Color(0xFFFFFFFF),
            child: Center(
              child: DonutShape(),
            ),
          ),
        );
      },
    );
  }
}
