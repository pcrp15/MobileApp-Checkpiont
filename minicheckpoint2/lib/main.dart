import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String studentName = "Patiparn Panmee";
    List<int> scores = [8, 30, 17, 18];
    int total = scores[0] + scores[1] + scores[2] + scores[3];
    String result = (studentName + " total score is " + total.toString());

    return MaterialApp(
      title: 'Mini Checkpoint2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini Checkpoint2'),
        ),
        body: Center(
          child: Text(
            result,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
