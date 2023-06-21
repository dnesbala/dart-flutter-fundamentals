import 'package:flutter/material.dart';

import 'package:firstapp/insta_home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
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
