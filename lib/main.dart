import 'package:flutter/material.dart';
import 'package:flutter_clock_2/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter clock',
      home: Home(),
    );
  }
}