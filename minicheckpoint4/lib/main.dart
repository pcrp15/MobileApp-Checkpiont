import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "John Doe";
  final int studentScore = 80;

  @override
  Widget build(BuildContext context) {
    int studentScoreInt = studentScore;
    String grade = "F";
    if (studentScoreInt >= 80) {
      grade = "A";
    } else if (studentScoreInt >= 70) {
      grade = "B";
    } else if (studentScoreInt >= 60) {
      grade = "C";
    } else if (studentScoreInt >= 50) {
      grade = "D";
    } else {
      grade = "F";
    }
    String result = "$name has $studentScoreInt scores which is a $grade";

    return MaterialApp(
      title: 'Mini_checkpoint4',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini_checkpoint4'),
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
