import 'package:flutter/material.dart';

class RowColumnTest extends StatelessWidget {
  const RowColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        // Replace Row with Column and play around it
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
