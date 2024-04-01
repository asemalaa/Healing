//verfication
import 'package:flutter/material.dart';
import 'package:project/component/button.dart';
import 'package:project/component/box.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/reset.dart';

//forget.dart
class verfication extends StatelessWidget {
  const verfication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7f8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween.index(hashCode(6)),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 340, top: 50),
                  child: Image.asset(
                    'images/arrow-left.png',
                    scale: 0.8,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/frog.png',
                  width: 360,
                  height: 285,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10, right: 110),
                child: Text(
                  "Verfication Code ",
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1F85D6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20),
                child: Text(
                  "check your Email and enter otp code, please?",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Color(0xff51585B),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  box(w: 60, h: 65),
                  box(w: 60, h: 65),
                  box(w: 60, h: 65),
                  box(w: 60, h: 65),
                  box(w: 60, h: 65),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'reset');
                    },
                    child: button(hintText: 'Send')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
