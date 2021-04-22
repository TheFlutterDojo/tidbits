import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluro/fluro.dart';

import './donut_shape/donut_shape_tidbit.dart';

final _router = FluroRouter();

class Tidbit {
  final String route;
  final String text;
  final HandlerFunc makeWidget;

  Tidbit({
    this.route,
    this.text,
    this.makeWidget,
  });
}

final tidbits = [
  Tidbit(
    route: "/donut_shape",
    text: "Donut Shape",
    makeWidget: (context, _) => DonutShapeTidbit(),
  )
];

void main() {
  _router.define("/", handler: Handler(handlerFunc: (context, _) => App()));

  tidbits.forEach((tidbit) {
    _router.define(tidbit.route,
        handler: Handler(
          handlerFunc: tidbit.makeWidget,
        ));
  });

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
      children: tidbits
          .map(
            (tidbit) => ElevatedButton(
              child: Text(tidbit.text),
              onPressed: () => _router.navigateTo(
                context,
                tidbit.route,
              ),
            ),
          )
          .toList(),
    );
  }
}
