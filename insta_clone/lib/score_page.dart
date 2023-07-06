import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({super.key});

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  int rmScore = 2;
  int fcbScore = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Real Madrid"),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (rmScore == 0) return;
                        setState(() {
                          rmScore--;
                        });
                      },
                      child: Text("-"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          rmScore++;
                        });
                      },
                      child: Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "$rmScore",
              style: TextStyle(
                fontSize: 32,
                color: rmScore > 3 ? Colors.green : Colors.blue,
              ),
            ),
            Text("-"),
            Text(fcbScore.toString(),
                style: TextStyle(
                  fontSize: 32,
                  color: fcbScore > 3 ? Colors.green : Colors.blue,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("FC Barcelona"),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (fcbScore == 0) return;
                        setState(() {
                          fcbScore--;
                        });
                      },
                      child: Text("-"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          fcbScore++;
                        });
                      },
                      child: Text("+"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            rmScore = 0;
            fcbScore = 0;
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
