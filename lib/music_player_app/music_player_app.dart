import 'package:flutter/widgets.dart';
import 'package:sandbox_flutter/music_player_app/widgets/disk.dart';

class MusicPlayerApp extends StatelessWidget {
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
              child: Disk(),
            ),
          ),
        );
      },
    );
  }
}
