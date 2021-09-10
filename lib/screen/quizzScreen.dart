import 'package:flutter/material.dart';

import 'package:tp/page/QuizzPage.dart';
import 'package:tp/widget/appBarWidget.dart';

class QuizzScreen extends StatelessWidget {
  QuizzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizzPage(),
      appBar: AppBarWidget(),
    );
  }
}
