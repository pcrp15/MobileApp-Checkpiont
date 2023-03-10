import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "John Doe";
  final int score = 80;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Checkpoint 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini Checkpoint 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Student name: $name',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Score: $score',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
