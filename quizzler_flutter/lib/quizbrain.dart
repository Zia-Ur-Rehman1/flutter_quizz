import 'package:quizzler_flutter/question.dart';

class quizBrain {
  int _questionNum = 0;

  List<Question> _questionBank = [
    Question("My name is zia", true),
    Question("I am under 18", false),
    Question("I like video games", true),
    Question("I like horse", true),
    Question("I don\'t watch anime", false),
  ];

  void NextQuestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    }
  }

  int getEqual() {
    if (_questionNum == _questionBank.length) {
      _questionNum = 0;
      return 0;
    }
    return 1;
  }

  String getQuestion() {
    return _questionBank[_questionNum].questionText;
  }

  bool getAns() {
    return _questionBank[_questionNum].ans;
  }
}
