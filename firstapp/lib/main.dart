import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "First Flutter App",
      home: HomePage(),
    ),
  );
}

// HomePage is our custom widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  // The build method is called by the Flutter framework whenever the widget needs to be rendered or updated.
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello World!!",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
