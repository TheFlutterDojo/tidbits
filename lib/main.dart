import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sandbox_flutter/music_player_app/music_player_app.dart';
import 'package:fluro/fluro.dart';

final _router = FluroRouter();
void main() {
  _router.define("/", handler: Handler(handlerFunc: (context, _) => App()));
  _router.define("/music_player",
      handler: Handler(handlerFunc: (context, _) => MusicPlayerApp()));

  runApp(WidgetsApp(
    color: Color(0xFFFFFFFF),
    onGenerateRoute: _router.generator,
    initialRoute: "/",
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
          child: Text("Music Player App"),
          onPressed: () => _router.navigateTo(context, "/music_player"),
        )
      ],
    );
  }
}
