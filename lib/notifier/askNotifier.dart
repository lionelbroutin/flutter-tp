import 'package:flutter/material.dart';
import 'package:tp/model/asks.dart';
import 'package:tp/service/quizData.dart';

class AskNotifier with ChangeNotifier {
  int? _currentAsk = 0;
  int? _askLength = QuizzData.getAskData().length;
  dynamic _data = QuizzData.getAskData();
  dynamic _answers = [];
  int _score = 0;

///// GETTERS
  int? get score => _score;
  int? get currentAsk => _currentAsk;
  int? get askLength => _askLength;
  dynamic get answers => _answers;

///// SETTERS

  void set currentAsk(int? value) {
    _currentAsk = value;
    notifyListeners();
  }

  void set askLength(int? value) {
    _askLength = value;
    notifyListeners();
  }

/////////////////

  void incrementAsk(bool choice) {
    if (_currentAsk! < _askLength!) {
      _currentAsk = _currentAsk! + 1;
      this.answerTheQuestion(choice);
    }
    notifyListeners();
  }

  void answerTheQuestion(bool choice) {
    Map<dynamic, dynamic> answer = {
      "answer": choice,
    };
    _answers.add(answer);

    print('tric');
    print(_data[askLength! - 1]["answer"]);

    if (_currentAsk! != askLength!) {
      /// INCREMENT SCORE
      if (answers[_currentAsk! - 1]['answer'] ==
          _data[_currentAsk! - 1]["answer"]) {
        _score = _score + 1;
      }
    } else {
      if (answers[_currentAsk! - 2]['answer'] ==
          _data[_currentAsk! - 2]["answer"]) {
        _score = _score + 1;
      }
    }
  }
}
