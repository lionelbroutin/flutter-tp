import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp/screen/homeScreen.dart';
import 'package:tp/screen/quizzScreen.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/quizz':
        return MaterialPageRoute(builder: (context) => QuizzScreen());

      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
