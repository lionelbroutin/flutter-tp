import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Quizz Application'));
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
