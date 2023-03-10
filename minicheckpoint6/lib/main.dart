import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int calculateTotalScore(List<int> scores) {
  int totalScore = 0;
  for (int score in scores) {
    totalScore += score;
  }
  return totalScore;
}

class MyApp extends StatelessWidget {
  final String name = "John Doe";
  final int studentScore = 80;

  @override
  Widget build(BuildContext context) {
    List<int> scores = [8, 30, 17, 18, 73];
    String name = "Alexander Mohamad";
    int totalScore = calculateTotalScore(scores);

    String result = "$name's total score is $totalScore";

    return MaterialApp(
      title: 'Mini_checkpoint6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini_checkpoint6'),
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
