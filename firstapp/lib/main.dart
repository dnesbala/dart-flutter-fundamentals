import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        // use Column to display multiple widgets in a vertical direction
        body: Column(
          children: [
            Text(
              "Hello World!!",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(Icons.info_outline, size: 40, color: Colors.red),
            ElevatedButton(
              onPressed: () {
                print("Button Pressed");
              },
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
