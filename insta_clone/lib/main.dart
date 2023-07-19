import 'package:firstapp/login_page.dart';
import 'package:firstapp/score_page.dart';
import 'package:firstapp/screens/si_calculator.dart';
import 'package:firstapp/stateful_test.dart';
import 'package:flutter/material.dart';

import 'package:firstapp/screens/insta_home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      home: SICalculator(),
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
