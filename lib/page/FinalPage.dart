import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp/notifier/askNotifier.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Félicitations ! Vous avez terminé le quizz'),
          Text('Voici votre score'),
          Text(Provider.of<AskNotifier>(context).score.toString())
        ],
      ),
    );
  }
}
