import 'package:flutter/material.dart';

import 'package:my_practice_project/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    int day = 30;

    return MaterialApp(
      home:HomePage()
    );
  }
}
