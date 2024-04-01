import 'package:flutter/material.dart';
import 'package:project/pages/Homeapp.dart';
import 'package:project/pages/forget.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/register.dart';
import 'package:project/pages/reset.dart';
import 'package:project/pages/verfication.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/special.dart';
import 'package:project/pages/depart.dart';
import 'package:project/pages/doctors.dart';

void main() {
  runApp(
    Healing(),
  );
}

class Healing extends StatelessWidget {
  Healing();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => Homeapp(),
        'login': (context) => login(),
        'register': (context) => register(),
        'forget': (context) => forget(),
        'verfication': (context) => verfication(),
        'reset': (context) => reset(),
        'special': (context) => special(),
        'depart': (context) => depart(),
        'doctors': (context) => doctors(),
      },
      initialRoute: 'home',
    );
  }
}
