import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp/notifier/askNotifier.dart';
import 'package:tp/screen/homeScreen.dart';
import 'package:tp/service/routing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AskNotifier(),
        child: MaterialApp(
          title: 'Quizz',
          onGenerateRoute: Routing.generateRoute,
          theme: ThemeData.dark(),
          home: HomeScreen(),
        ));
  }
}
