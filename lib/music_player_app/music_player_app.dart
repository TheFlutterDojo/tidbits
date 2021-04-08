import 'package:flutter/widgets.dart';

class MusicPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: Color(0xFFFFFFFF),
      builder: (context, _) {
        return Center(
          child: Text("Music App"),
        );
      },
    );
  }
}
