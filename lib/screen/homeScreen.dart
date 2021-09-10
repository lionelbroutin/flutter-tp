import 'package:flutter/material.dart';
import 'package:tp/page/HomePage.dart';
import 'package:tp/widget/appBarWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      appBar: AppBarWidget(),
    );
  }
}
