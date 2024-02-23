import 'package:first1/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Asem(),
  );
}

class Asem extends StatelessWidget {
  Asem();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
