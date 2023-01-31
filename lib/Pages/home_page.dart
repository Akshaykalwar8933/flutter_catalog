import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 10;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
          body: Center(
            child: Container(
              child: Text("Welcome to Akshay $days app"),
            ),
          ),
          drawer: Drawer(),
      );

  }
}
