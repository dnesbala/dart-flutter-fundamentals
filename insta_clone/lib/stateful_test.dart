import 'package:flutter/material.dart';

class StatefulTest extends StatefulWidget {
  const StatefulTest({super.key});

  @override
  State<StatefulTest> createState() => _StatefulTestState();
}

class _StatefulTestState extends State<StatefulTest> {
  int number = 0;

  void increment() {
    setState(() {
      number = number + 1;
    });
    print(number);
  }

  void decrement() {
    if (number <= 0) return;
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Item Quantity = $number",
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Increment"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(150, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                OutlinedButton(
                  onPressed: decrement,
                  child: Text("Decrement"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number = 0;
          });
        },
        child: Icon(Icons.restore),
      ),
    );
  }
}
