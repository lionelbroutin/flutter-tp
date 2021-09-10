import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp/model/asks.dart';
import 'package:tp/notifier/askNotifier.dart';
import 'package:tp/service/quizData.dart';
import 'package:tp/widget/endWidget.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic currentAsk = Provider.of<AskNotifier>(context).currentAsk!;
    dynamic checkWithCondition() {
      return (Provider.of<AskNotifier>(context).currentAsk! == 10)
          ? EndWidget()
          : Text("");
    }

    final data = QuizzData.getAskData();
    String getQuestion() {
      if (currentAsk == Provider.of<AskNotifier>(context).askLength!) {
        print('current Ask ${currentAsk}');
        currentAsk = Provider.of<AskNotifier>(context).askLength! - 1;
      }
      return data[currentAsk]['question'];
    }

    int getIndex() {
      if (currentAsk == Provider.of<AskNotifier>(context).askLength!) {
        print('current Ask ${currentAsk}');
        currentAsk = Provider.of<AskNotifier>(context).askLength! - 1;
      }
      return currentAsk + 1;
    }

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'La Grèce Antique',
            style: TextStyle(
                color: Colors.cyan, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
              '${getIndex()} /  ${Provider.of<AskNotifier>(context).askLength.toString()}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white38,
              )),
          Text(getQuestion(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        Provider.of<AskNotifier>(context, listen: false)
                            .incrementAsk(true)
                      },
                  child: Text('Vrai'),
                  style: ElevatedButton.styleFrom(primary: Colors.green)),
              ElevatedButton(
                  onPressed: () => {
                        Provider.of<AskNotifier>(context, listen: false)
                            .incrementAsk(false)
                      }, //askNotifier.incrementAsk(1),
                  child: Text('Faux'),
                  style: ElevatedButton.styleFrom(primary: Colors.red)),
            ],
          ),
          Text('score : '),
          Text(Provider.of<AskNotifier>(context).score.toString()),
          checkWithCondition()
        ],
      ),
    );
  }
}
