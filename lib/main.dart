import 'package:flutter/widgets.dart';

void main() {
  runApp(WidgetsApp(
    color: Color(0xFFFF0000),
    builder: (context, _) => App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Row(
          children: [
            Image.network(
              "https://picsum.photos/20",
            ),
            Expanded(
              child: Center(
                child: Text("Hello, world"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
