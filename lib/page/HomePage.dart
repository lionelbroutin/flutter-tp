import 'package:flutter/material.dart';
import 'package:tp/service/quizData.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = QuizzData.getAskData();
    print(data[1]['question']);

    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Quizz Grèce Antique'),
          //   Text('state : ${state}'),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/quizz'),
              child: Text('Commencer')),
        ],
      ),
    );
  }
}
