import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/component/button.dart';
import 'package:project/component/texttt.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/verfication.dart';

//forget.dart
class forget extends StatelessWidget {
  const forget();

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
                padding: const EdgeInsets.only(top: 40, bottom: 10, right: 157),
                child: Text(
                  "Forget Password ",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1F85D6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  "please enter your Email or your phone \n,then we will send your verification code \nto reset password",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Color(0xff51585B),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310, bottom: 10, top: 30),
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 73, 79, 81)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 79, 81), width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                  ),
                ),

                //   icon: Image.asset('images/eye-closed.png')),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'verfication');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: button(hintText: 'Send'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
