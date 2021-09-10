import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp/notifier/askNotifier.dart';

class EndWidget extends StatelessWidget {
  EndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic score = Provider.of<AskNotifier>(context).score!;

    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Terminé le quizz !!'),
          content: Text('score : ' +
              Provider.of<AskNotifier>(context).score!.toString() +
              ' sur' +
              Provider.of<AskNotifier>(context).askLength!.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text("J'ai compris"),
            ),
          ],
        ),
      ),
      child:
          Text('Résultat', style: TextStyle(color: Colors.green, fontSize: 30)),
    );
  }
}
