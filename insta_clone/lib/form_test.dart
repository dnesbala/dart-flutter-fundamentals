import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  const FormTest({super.key});

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text("Name"),
              hintText: "Enter your name",
            ),
            onChanged: (String val) {
              print(val);
              setState(() {
                name = val;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            "Name = $name",
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
  }
}
