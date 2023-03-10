import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "John Doe";
  final int studentScore = 80;

  @override
  Widget build(BuildContext context) {
    String studentName = "Patiparn Panmee";
    List<int> scores = [8, 30, 17, 18];
    int total = 0;

    for (int i = 0; i < scores.length; i++) {
      total += scores[i];
    }

    String result = studentName + "'s total score is " + total.toString();

    return MaterialApp(
      title: 'Mini_checkpoint5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini_checkpoint5'),
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
