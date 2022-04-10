import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:project22/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gas U Nee',
      theme: ThemeData(
        scaffoldBackgroundColor: firstColor,
      ),
      home: Landing(),
    );
  }
}
