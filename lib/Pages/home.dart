import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    int day = 30;
    String name = "flutter";
    return Scaffold(
        appBar: AppBar(
          title: Text("Catlog App"),
        ),
        body: Center(
            child: Container(
               child: Text("Welcome $day of $name"))
               ),
        drawer: Drawer(),
               
               );
  }
}
