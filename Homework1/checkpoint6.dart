int functionplus(List<int> scores) {
  int testFunction = 0;
  for (int scores in scores) {
    testFunction += scores;
  }
  return testFunction;
}

void main() {
  List<int> scores = [8, 30, 17, 18];
  String name = "Alexander Mohamad";
  int testfunction = functionplus(scores);
  print("$name's total score is $testfunction");
}
