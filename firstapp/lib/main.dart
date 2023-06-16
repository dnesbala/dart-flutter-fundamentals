import 'package:flutter/material.dart';

import 'package:firstapp/insta_home_page.dart';
import 'package:firstapp/row_column_test.dart';

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
        body: InstaHomePage(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Column(
        children: [
          // Changes should be done in pubspec.yaml file for asset images
          Image.asset("assets/tree.jpeg", height: 100, width: 150),
          // Image.network("https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg", height: 100, width: 150),
          Text("Hello World"),
        ],
      ),
    );
  }
}
