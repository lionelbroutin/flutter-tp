import 'package:flutter/material.dart';
import 'package:tp/page/FinalPage.dart';
import 'package:tp/widget/appBarWidget.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FinalPage(),
      appBar: AppBarWidget(),
    );
  }
}
