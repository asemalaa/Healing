import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/pages/Homeapp.dart';
import 'package:project/pages/register.dart';
import 'package:project/component/button.dart';
import 'package:project/component/texttt.dart';
import 'package:project/pages/forget.dart';
import 'package:project/pages/special.dart';

class login extends StatelessWidget {
  const login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween.index(hashCode(6)),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    'images/rafiki.png',
                    width: 288,
                    height: 190.54,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F85D6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 340, bottom: 10),
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 73, 79, 81)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: texttt(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300, bottom: 10),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 20,
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
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 79, 81),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 340),
                      child: Image.asset('images/eye-closed.png'),
                    )),

                //   icon: Image.asset('images/eye-closed.png')),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'forget');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 73, 79, 81),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'special');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: button(hintText: 'Login'),
                ),
              ),
              Image.asset(
                'images/foot.png',
                width: 349,
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Facebook.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'images/Frame 84.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(color: Color.fromARGB(255, 73, 79, 81)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xff1F85D6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
