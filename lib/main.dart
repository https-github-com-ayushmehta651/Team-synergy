import 'package:flutter/material.dart';
import 'package:stacko/MapDirection.dart';
import 'package:stacko/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
